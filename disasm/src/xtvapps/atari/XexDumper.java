package xtvapps.atari;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import xtvapps.atari.disasm.Disassembler;
import xtvapps.atari.disasm.Instruction;
import xtvapps.atari.disasm.Processor.Sym;
import xtvapps.atari.disasm.mapper.Section.SectionType;

public class XexDumper {
	public static final String LOGTAG = XexDumper.class.getSimpleName();

	private static final int DISASM_WIDTH = 30;
	private static final String MARGIN = "                ";

	private File xexFile;
	private File asmFile;
	private File incFile;
	private File mapFile;
	private File disFile;

	Map<String, Integer> usedTargets = new HashMap<String, Integer>();
	Set<String> usedLabels = new HashSet<String>();

	public XexDumper(File xexFile) {
		this.xexFile = xexFile;
		this.asmFile = Utils.changeFileExtension(xexFile, "asm");
		this.incFile = Utils.changeFileExtension(xexFile, "inc");
		this.mapFile = Utils.changeFileExtension(xexFile, "map");
		this.disFile = Utils.changeFileExtension(xexFile, "dis");
		
		Disassembler.reset();
	}
	
	public void dump() throws IOException {
		byte[] bytes = Utils.loadBytes(xexFile);

		initMapper();

		PrintWriter pwAsm = new PrintWriter(new FileWriter(asmFile));
		PrintWriter pwDis = new PrintWriter(new FileWriter(disFile));
		
		String includeName = incFile.getName();
		pwAsm.println("  icl \"" + includeName + "\"");
		
		int blockIndex = 1;
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
			
			disasm(blockIndex++, addr_start, block, pwAsm, pwDis);
			index += blocksize;
		}
		pwAsm.close();
		pwDis.close();
		
		List<Sym> usedSyms = Disassembler.getUsedSyms();
		PrintWriter pwInc = new PrintWriter(new FileWriter(incFile));
		for(Sym sym : usedSyms) {
			String line = buildColumns(sym.name, 10, String.format(" = $%04X", sym.addr), "");
			pwInc.println(line);
		}
		
		for(String usedLabel : usedLabels) {
			usedTargets.remove(usedLabel);
		}
		
		for(String key : usedTargets.keySet()) {
			if (!key.startsWith("L_")) continue;
			
			int addr = usedTargets.get(key);
			String line = buildColumns(key, 10, String.format(" = $%04X", addr), "");
			pwInc.println(line);
		}
		
		pwInc.close();

	}

	private String buildMargin(String text) {
		if (text == null) {
			text = "";
		}
		String result =  text + MARGIN ;
		return result.substring(0, text.length() > MARGIN.length() ? text.length() : MARGIN.length());
	}
	
	private String buildColumns(String c1, int size, String c2, String separator) {
		if (c2 == null) return c1;
		
		String line = c1 + MARGIN;
		if (c1.length() < size) {
			line = line.substring(0, size);
		}
		return line + separator + c2;
	}
	
	private void disasm(int blockIndex, int addr, int block[], PrintWriter pwAsm, PrintWriter pwDis) {
		Disassembler.setMemory(addr, block);
		pwAsm.println(String.format("\n\n; BLOCK %d\n", blockIndex));
		pwDis.println(String.format("\n\n; BLOCK %d\n", blockIndex));
		
		pwAsm.println(MARGIN + " " + String.format("org $%04X\n", addr));
		
		int base = 0;

		while (base < block.length) {
			Instruction instruction = Disassembler.getInstruction(blockIndex, addr + base);
			Disassembler.addUserLabel(instruction.getAddr(), "L_" +  String.format("%04X", instruction.getAddr()));
			base += instruction.getSize();
		}
		
		base = 0;
		while (base < block.length) {
			Instruction instruction = Disassembler.getInstruction(blockIndex, addr + base);
			int target = instruction.getTarget();
			if (target >= 0) {
				String targetLabel = instruction.getTargetLabel();
				if (targetLabel != null) {
					int p = targetLabel.indexOf("+");
					if (p>0) targetLabel = targetLabel.substring(0, p);
					usedTargets.put(targetLabel, target);
				}
			}
			base += instruction.getSize();
		}
		
		base = 0;
		while (base < block.length) {
			Instruction instruction = Disassembler.getInstruction(blockIndex, addr + base);
			
			String label = instruction.getLabel();
			if (usedTargets.containsKey(label)) {
				usedLabels.add(label);
			} else {
				label = "";
			}
			
			String margin = buildMargin(label);
			pwAsm.println(margin + " " + instruction.getCode());
			pwDis.println(buildColumns(instruction.getText(), DISASM_WIDTH, instruction.getTargetLabel(), " ; "));
			
			base += instruction.getSize();
		}
	}
	
	private int byte2int(byte b) {
		return b >= 0 ? b : 256 + b;
	}
	
	private int word(byte low, byte high) {
		return byte2int(low) + 256* byte2int(high);
	}
	
	private void initMapper() throws IOException {
		if (!mapFile.exists()) return;
		
		int blockIndex = 1;
		List<String> lines = Utils.loadLines(mapFile);
		for(String line : lines) {
			String parts[] = line.split(" ");
			if (parts.length < 2) continue;
			
			String cmd = parts[0];
			if (cmd.equals("block")) {
				blockIndex = Utils.str2i(parts[1]);
			} else if (cmd.equals("code")) {
				int addr = Utils.strHex2i(parts[1], 0);
				Disassembler.addSection(blockIndex, SectionType.Code, addr);
			} else if (cmd.equals("bytes")) {
				int addr = Utils.strHex2i(parts[1], 0);
				Disassembler.addSection(blockIndex, SectionType.Byte, addr);
			} else if (cmd.equals("words")) {
				int addr = Utils.strHex2i(parts[1], 0);
				Disassembler.addSection(blockIndex, SectionType.Word, addr);
			}
		}
		Disassembler.dumpMapper();
	}
	
	public static void main(String[] args) throws IOException {
		File xexFile = new File("/home/fcatrin/screaming_wings.xex");
		XexDumper xexDumper = new XexDumper(xexFile);
		xexDumper.dump();
	}

}
