package xtvapps.atari;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import xtvapps.atari.disasm.Disassembler;
import xtvapps.atari.disasm.Instruction;
import xtvapps.atari.disasm.Processor.Sym;
import xtvapps.atari.disasm.mapper.Section.SectionType;

public class XexDumper {
	public static final String LOGTAG = XexDumper.class.getSimpleName();

	private static final int DISASM_WIDTH = 30;
	private static final int ASM_WIDTH = 20;
	private static final String MARGIN_LABEL    = "                ";
	private static final String MARGIN_BYTECODE = "              ";

	private File xexFile;
	private File asmFile;
	private File incFile;
	private File mapFile;
	private File disFile;

	Map<String, Integer> usedTargets = new HashMap<String, Integer>();
	Set<String> usedLabels = new HashSet<String>();
	
	Map<Integer, List<String>> blockComments = new HashMap<Integer, List<String>>();
	Set<Integer> spaces = new HashSet<Integer>();
	
	private static boolean includeByteCodeInAsm = false;

	public XexDumper(File xexFile) {
		this.xexFile = xexFile;
		
		String subdir = "disasm";
		this.asmFile = Utils.changeFileExtension(xexFile, "asm", subdir);
		this.incFile = Utils.changeFileExtension(xexFile, "inc", subdir);
		this.disFile = Utils.changeFileExtension(xexFile, "dis", subdir);
		this.mapFile = Utils.changeFileExtension(xexFile, "map");
		
		asmFile.getParentFile().mkdirs();
		
		Disassembler.reset();
	}
	
	public void dump() throws IOException {
		byte[] bytes = Utils.loadBytes(xexFile);

		initMapper();

		PrintWriter pwAsm = new PrintWriter(new FileWriter(asmFile));
		PrintWriter pwDis = new PrintWriter(new FileWriter(disFile));
		
		String includeName = incFile.getName();
		pwAsm.println(String.format("  icl \"%s\"\n", includeName));
		
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
		
		for(String key : usedTargets.keySet()) {
			if (usedLabels.contains(key)) continue;
			if (!key.startsWith("L_")) continue;
			
			int addr = usedTargets.get(key);
			String line = buildColumns(key, 10, String.format(" = $%04X", addr), "");
			pwInc.println(line);
		}

		Map<Integer, Sym> labels = Disassembler.getMapperLabels();
		for(Entry<Integer, Sym> label : labels.entrySet()) {
			String name = label.getValue().name;
			if (usedLabels.contains(name)) continue;
			
			int addr = label.getKey();
			String line = buildColumns(name, 10, String.format(" = $%04X", addr), "");
			pwInc.println(line);
		}
		
		pwInc.close();

	}

	private String buildMargin(String text, String marginTemplate) {
		if (text == null) {
			text = "";
		}
		String result =  text + marginTemplate ;
		return result.substring(0, text.length() > marginTemplate.length() ? text.length() : marginTemplate.length());
	}
	
	private String buildLabelMargin(String text) {
		return buildMargin(text, MARGIN_LABEL);
	}

	private String buildByteCodeMargin(String text) {
		return buildMargin(text, MARGIN_BYTECODE);
	}
	
	private String buildColumns(String c1, int size, String c2, String separator) {
		if (c2 == null) return c1;
		
		String line = c1 + MARGIN_LABEL + MARGIN_BYTECODE;
		if (c1.length() < size) {
			line = line.substring(0, size);
		} else {
			line = line.trim();
		}
		return line + separator + c2;
	}
	
	private void disasm(int blockIndex, int addr, int block[], PrintWriter pwAsm, PrintWriter pwDis) throws IOException {
		Disassembler.setMemory(addr, block);
		Disassembler.createBlock(blockIndex, addr, block.length);
		
		File asmFileBlock = buildAsmFileForBlock(blockIndex);
		PrintWriter pwAsmBlock = new PrintWriter(new FileWriter(asmFileBlock));
		
		pwDis.println(String.format("\n\n; BLOCK %d %s\n", blockIndex, xexFile.getName()));
		pwAsm.println(String.format("  icl \"%s\"", asmFileBlock.getName()));
		
		pwAsmBlock.println(String.format("\n; BLOCK %d %s\n", blockIndex, xexFile.getName()));
		pwAsmBlock.println(MARGIN_LABEL + " " + String.format("org $%04X\n", addr));
		
		int base = 0;

		while (base < block.length) {
			Instruction instruction = Disassembler.getInstruction(blockIndex, addr + base);
			Disassembler.addUserLabel(instruction.getAddr(), "L_" +  String.format("%04X", instruction.getAddr()), instruction.getSize());
			base += instruction.getSize();
		}
		
		// they may be overritten, so add them here after the automatic labels
		Map<Integer, Sym> labels = Disassembler.getMapperLabels();
		for(Entry<Integer, Sym> label : labels.entrySet()) {
			Sym sym = label.getValue();
			Disassembler.addUserLabel(label.getKey(), sym.name, sym.size);
		}
		
		base = 0;
		while (base < block.length) {
			Instruction instruction = Disassembler.getInstruction(blockIndex, addr + base);
			int target = instruction.getTarget();
			if (target >= 0) {
				String targetLabel = instruction.getTargetLabel();
				if (targetLabel != null) {
					int delta = 0;
					int p = targetLabel.indexOf("+");
					if (p>0) {
						delta = Utils.str2i(targetLabel.substring(p+1));
						targetLabel = targetLabel.substring(0, p);
					}
					usedTargets.put(targetLabel, target - delta);
				}
			}
			base += instruction.getSize();
		}
		
		base = 0;
		while (base < block.length) {
			int lineAddr = addr + base;
			Instruction instruction = Disassembler.getInstruction(blockIndex, lineAddr);
			
			List<String> blockComment = blockComments.get(lineAddr);
			if (blockComment!=null) {
				pwDis.println();
				pwAsmBlock.println();
				for(String lineComment : blockComment) {
					pwDis.println("  " + lineComment);
					pwAsmBlock.println(";  " + lineComment);
				}
				pwDis.println();
				pwAsmBlock.println();
			} else if (spaces.contains(lineAddr)) {
				pwDis.println();
				pwAsmBlock.println();
			}
			
			String label = instruction.getLabel();
			if (usedTargets.containsKey(label)) {
				usedLabels.add(label);
			} else {
				label = "";
			}
			
			Sym userLabel = Disassembler.getMapperLabel(lineAddr);
			if (userLabel!=null) {
				label = userLabel.name;
				usedLabels.add(label);
			}
			
			String margin = buildLabelMargin(label);
			String comment = Disassembler.getComment(lineAddr);
			String bytecode = buildByteCodeMargin(instruction.getByteCode());
			String targetLabel = instruction.getTargetLabel();
			
			int disasmWidth = DISASM_WIDTH;
			int asmWidth = ASM_WIDTH;
			if (includeByteCodeInAsm) {
				margin = String.format("/* %s */  %s", bytecode, margin);
			}
			
			String disasm = bytecode + "  " + instruction.getText();
			if (comment == null) {
				pwAsmBlock.println(margin + " " + instruction.getCode());
				if (targetLabel == null) {
					pwDis.println(disasm);
				} else {
					pwDis.println(buildColumns(disasm, disasmWidth, targetLabel, " ; "));
				}
			} else {
				pwAsmBlock.println(margin + " "  + buildColumns(instruction.getCode(), asmWidth, comment, " ; "));
				if (targetLabel == null) {
					pwDis.println(buildColumns(disasm, disasmWidth, comment, " ; "));
				} else {
					pwDis.println(buildColumns(disasm, disasmWidth, comment + " / " + targetLabel, " ; "));
				}
			}
			
			base += instruction.getSize();
		}
		
		pwAsmBlock.close();
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
			} else if (cmd.equals("byte")) {
				int addr = Utils.strHex2i(parts[1], 0);
				Disassembler.addSection(blockIndex, SectionType.Byte, addr);
			} else if (cmd.equals("word")) {
				int addr = Utils.strHex2i(parts[1], 0);
				Disassembler.addSection(blockIndex, SectionType.Word, addr);
			} else if (cmd.equals("dlst")) {
				int addr = Utils.strHex2i(parts[1], 0);
				Disassembler.addSection(blockIndex, SectionType.DisplayList, addr);
			} else if (cmd.equals("label")) {
				int size = 1;
				int addr = Utils.strHex2i(parts[1], 0);
				String name = parts[2];
				if (parts.length > 3) {
					String sizeSpec = parts[3];
					if ("word".equals(sizeSpec)) size = 2;
					else if ("dword".equals(sizeSpec)) size = 4;
					else size = Utils.str2i(sizeSpec, 1);
				}
				Disassembler.addMapperLabel(addr, name, size);
			} else if (cmd.equals("rem")) {
				int addr = Utils.strHex2i(parts[1], 0);
				
				int addrpos = line.indexOf(parts[1]);
				int spacepos = line.substring(addrpos).indexOf(" ");
				
				String comment = line.substring(addrpos + spacepos).trim();
				Disassembler.addComment(addr, comment);
			} else if (cmd.equals("comment")) {
				int addr = Utils.strHex2i(parts[1], 0);
				
				int addrpos = line.indexOf(parts[1]);
				int spacepos = line.substring(addrpos).indexOf(" ");
				
				String comment = line.substring(addrpos + spacepos).trim();
				addBlockComment(addr, comment);
			} else if (cmd.equals("space")) {
				int addr = Utils.strHex2i(parts[1], 0);
				spaces.add(addr);
			}
		}
		Disassembler.dumpMapper();
	}
	
	private File buildAsmFileForBlock(int blockIndex) {
		String path = asmFile.getAbsolutePath();
		path = path.substring(0, path.length() - 4);
		path += "_block_" + blockIndex + ".asm";
		return new File(path);
	}

	private void addBlockComment(int addr, String line) {
		List<String> list = blockComments.get(addr);
		if (list == null) {
			list = new ArrayList<String>();
			blockComments.put(addr, list);
		}
		list.add(line);
	}
	
	public static void main(String[] args) throws IOException {
		if (args.length < 1) {
			System.out.println("No xexfile specified\n");
			return;
		}
		File xexFile = new File(args[0]);
		if (!xexFile.exists()) {
			System.out.println(String.format("XEX file not found: %s\n",xexFile.getAbsolutePath()));
			return;
		}
		
		XexDumper xexDumper = new XexDumper(xexFile);
		xexDumper.dump();
	}

}
