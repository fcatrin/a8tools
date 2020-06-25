package xtvapps.atari;

import java.io.File;
import java.io.IOException;

import xtvapps.atari.disasm.Disassembler;
import xtvapps.atari.disasm.Instruction;

public class XexDumper {
	public static final String LOGTAG = XexDumper.class.getSimpleName();

	private static final String MARGIN = "                "; 

	public XexDumper() {}
	
	public void dump(File xexfile) throws IOException {
		byte[] bytes = Utils.loadBytes(xexfile);
		
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
			
			disasm(addr_start, block);
			break;
			// index += blocksize;
		}
	}

	private String buildMargin(String text) {
		if (text == null) {
			text = "";
		}
		String result =  text + MARGIN ;
		return result.substring(0, text.length() > MARGIN.length() ? text.length() : MARGIN.length());
	}
	
	private void disasm(int addr, int block[]) {
		Disassembler.setMemory(addr, block);
		
		System.out.println(MARGIN + " " + String.format("org $%04X", addr));
		
		int base = 0;
		
		while (base < block.length) {
			Instruction instruction = Disassembler.getInstruction(addr + base);
			int target = instruction.getTarget();
			if (target >= 0) {
				String targetLabel = instruction.getTargetLabel();
				if (targetLabel == null) {
					Disassembler.addUserLabel(target, "L" + String.format("%04X", instruction.getTarget()));
				}
			}
			base += instruction.getSize();
		}
		
		base = 0;
		while (base < block.length) {
			Instruction instruction = Disassembler.getInstruction(addr + base);
			String label = instruction.getLabel();
			String margin = buildMargin(label);
			System.out.println(margin + " " + instruction.getCode());
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
		XexDumper xexDumper = new XexDumper();
		xexDumper.dump(new File("/home/fcatrin/screaming_wings.xex"));
	}

}
