package xtvapps.atari;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import xtvapps.atari.disasm.Disassembler;
import xtvapps.atari.disasm.Instruction;

public class XexDumper {
	public static final String LOGTAG = XexDumper.class.getSimpleName();

	private static final String MARGIN = "                ";

	private File xexFile;
	private File asmFile;
	private File incFile;
	private File mapFile; 

	public XexDumper(File xexFile) {
		this.xexFile = xexFile;
		this.asmFile = Utils.changeFileExtension(xexFile, "asm");
		this.incFile = Utils.changeFileExtension(xexFile, "inc");
		this.mapFile = Utils.changeFileExtension(xexFile, "map");
	}
	
	public void dump() throws IOException {
		byte[] bytes = Utils.loadBytes(xexFile);
		
		PrintWriter pwAsm = new PrintWriter(new FileWriter(asmFile));
		
		int index = 0;
		while (index < bytes.length) {
			int addr_start = word(bytes[index], bytes[index+1]);
			index += 2;

			if (addr_start == 0xFFFF) continue;
			
			int addr_end = word(bytes[index], bytes[index+1]);
			index += 2;

			Log.d(LOGTAG, String.format("found block %04X - %04X", addr_start, addr_end));
			
			int blocksize = addr_end - addr_start + 1;
			int block[] = new int[blocksize];
			for(int i=0; i < blocksize && (index + i) < bytes.length; i++) {
				block[i] = byte2int(bytes[index + i]);
			}
			
			disasm(addr_start, block, pwAsm);
			break;
			// index += blocksize;
		}
		pwAsm.close();
	}

	private String buildMargin(String text) {
		if (text == null) {
			text = "";
		}
		String result =  text + MARGIN ;
		return result.substring(0, text.length() > MARGIN.length() ? text.length() : MARGIN.length());
	}
	
	private void disasm(int addr, int block[], PrintWriter pw) {
		Disassembler.setMemory(addr, block);
		
		pw.println(MARGIN + " " + String.format("org $%04X\n", addr));
		
		int base = 0;

		while (base < block.length) {
			Instruction instruction = Disassembler.getInstruction(addr + base);
			Disassembler.addUserLabel(instruction.getAddr(), "L" +  String.format("%04X", instruction.getAddr()));
			base += instruction.getSize();
		}
		
		Set<String> usedLabels = new HashSet<String>();
		
		base = 0;
		while (base < block.length) {
			Instruction instruction = Disassembler.getInstruction(addr + base);
			int target = instruction.getTarget();
			if (target >= 0) {
				String targetLabel = instruction.getTargetLabel();
				if (targetLabel != null) {
					int p = targetLabel.indexOf("+");
					if (p>0) targetLabel = targetLabel.substring(0, p);
					usedLabels.add(targetLabel);
				}
			}
			base += instruction.getSize();
		}
		
		base = 0;
		while (base < block.length) {
			Instruction instruction = Disassembler.getInstruction(addr + base);
			
			String label = instruction.getLabel();
			if (!usedLabels.contains(label)) label = "";
			
			String margin = buildMargin(label);
			pw.println(margin + " " + instruction.getCode());
			
			base += instruction.getSize();
		}
	}
	
	private int byte2int(byte b) {
		return b >= 0 ? b : 256 + b;
	}
	
	private int word(byte low, byte high) {
		return byte2int(low) + 256* byte2int(high);
	}
	
	public static void main(String[] args) throws IOException {
		File xexFile = new File("/home/fcatrin/screaming_wings.xex");
		XexDumper xexDumper = new XexDumper(xexFile);
		xexDumper.dump();
	}

}
