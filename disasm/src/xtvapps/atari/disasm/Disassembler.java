package xtvapps.atari.disasm;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import xtvapps.atari.disasm.Processor.Sym;
import xtvapps.atari.disasm.mapper.Mapper;
import xtvapps.atari.disasm.mapper.Section.SectionType;

public class Disassembler {
	private static final int MAX_MEMORY = 0x10000;
	
	private static Map<Integer, String> symtableUser = new HashMap<Integer, String>();
	private static int memory[];
	
	private static String lblFileName;
	private static String xexFileName;
	
	private static boolean allowInvalidOpCodes = false;
	private static boolean useLowerCase = true;
	
	private static Set<String> usedSyms = new HashSet<String>();
	
	private static Mapper mapper = new Mapper();
	
	public static void reset() {
		memory = null;
		usedSyms.clear();
		mapper.clear();
	}
	
	public static void setMemory(int addr, int memory[]) {
		if (Disassembler.memory == null) {
			Disassembler.memory = new int[MAX_MEMORY];
		}
		for(int i=0; i < memory.length && addr+i < MAX_MEMORY; i++) {
			Disassembler.memory[addr + i] = memory[i];
		}
	}
	
	private static int getMemory(int position) {
		if (position >= memory.length) position -= memory.length;
		return memory[position];
	}
	
	public static Instruction getInstruction(int blockIndex, int addr) {
		int instr = getMemory(addr);
		SectionType sectionType = mapper.getSectionType(blockIndex, addr);
		
		String mnemonic = !allowInvalidOpCodes && !isValidOpCode(instr) ? null : Processor.instr6502[instr];
		
		if (useLowerCase && mnemonic != null) mnemonic = mnemonic.toLowerCase(Locale.US);
		
		String line;
		String asmcode;
		String code;
		int size;
		int value = -1;
		
		String targetLabel = null;

		if (sectionType == SectionType.Byte || mnemonic == null) {
			line    = String.format("%04X:           BYTE ", addr, instr);
			asmcode = String.format(".byte ");
			int index = 0;
			int lastAddr = getLastAddr(blockIndex);
			while (index < 8) {
				int offset = addr + index;
				
				if (sectionType == SectionType.Byte) {
					if (offset > lastAddr) break;
					if (mapper.getSectionType(blockIndex, offset) != SectionType.Byte) break;
				}

				String byteValue = String.format("$%02X", getMemory(offset)); 
				line +=    (index > 0 ? " "  : "") + byteValue;
				asmcode += (index > 0 ? ", " : "") + byteValue;
				
				index++;
				if (mnemonic == null && sectionType == SectionType.Code) break;
			}
			size = index;
		} else if (sectionType == SectionType.Word) {
			int op1 = getMemory(addr);
			int op2 = getMemory(addr+1);
			int word = op1 + 256 * op2;

			line    = String.format("%04X: %02X %02X     WORD $%04X", addr, op1, op2, word);
			asmcode = String.format(".word $%04X", word); 
			size = 2;
		} else if (mnemonic.indexOf("0")>0) {
			int op = getMemory(addr+1);
			value = addr + 2 + (op > 127 ? (op - 256) : op);

			if (mnemonic.indexOf("#") == -1 && value >= 0) {
				targetLabel = findLabel(instr, value);
			}

			code    = mnemonic.replace("0", String.format("$%04X", value));
			asmcode = mnemonic.replace("0", targetLabel != null ? targetLabel : String.format("$%04X", value));
			
			line = String.format("%04X: %02X %02X     %s", addr, instr, op, code);
			size = 2;
		} else if (mnemonic.indexOf("1")>0) {
			int op = getMemory(addr+1);
			value = op;

			if (mnemonic.indexOf("#") == -1 && value >= 0) {
				targetLabel = findLabel(instr, value);
			}

			code    = mnemonic.replace("1", String.format("$%02X", op));
			asmcode = mnemonic.replace("1", targetLabel != null ? targetLabel : String.format("$%02X", value));
			
			line = String.format("%04X: %02X %02X     %s", addr, instr, op, code);
			size = 2;
		} else if (mnemonic.indexOf("2")>0) {
			int op1 = getMemory(addr+1);
			int op2 = getMemory(addr+2);
			value = op1 + 256 * op2;

			if (mnemonic.indexOf("#") == -1 && value >= 0) {
				targetLabel = findLabel(instr, value);
			}

			code    = mnemonic.replace("2", String.format("$%04X", value));
			asmcode = mnemonic.replace("2", targetLabel != null ? targetLabel : String.format("$%04X", value));
			
			line = String.format("%04X: %02X %02X %02X  %s", addr, instr, op1, op2, code);
			size = 3;
		} else {
			code    = mnemonic;
			asmcode = mnemonic;
			
			line = String.format("%04X: %02X        %s", addr, instr, code);
			size = 1;
		}
		
		Instruction instruction = new Instruction(addr, line, asmcode, size);
		fillTargetAddress(instruction);
		instruction.setTargetLabel(targetLabel);
		instruction.setLabel(symtableUser.get(addr));
		return instruction;
	}
	
	/* Opcode type:
	   bits 1-0 = instruction length
	   bit 2    = instruction reads from memory (without stack-manipulating instructions)
	   bit 3    = instruction writes to memory (without stack-manipulating instructions)
	   bits 7-4 = adressing type:
	     0 = NONE (implicit)
	     1 = ABSOLUTE
	     2 = ZPAGE
	     3 = ABSOLUTE_X
	     4 = ABSOLUTE_Y
	     5 = INDIRECT_X
	     6 = INDIRECT_Y
	     7 = ZPAGE_X
	     8 = ZPAGE_Y
	     9 = RELATIVE
	     A = IMMEDIATE
	     B = STACK 2 (RTS)
	     C = STACK 3 (RTI)
	     D = INDIRECT (JMP () )
	     E = ESCRTS
	     F = ESCAPE */
	
	public static void fillTargetAddress(Instruction instruction) {
		int addr   = instruction.getAddr();
		int opcode = getMemory(addr);
		int addr8  = getMemory(addr + 1);
		int addr16 = getMemory(addr + 1) + 256 * getMemory(addr + 2);
		int ind8   = getMemory(addr8)  + 256 * getMemory(addr8  + 1);
		int ind16  = getMemory(addr16) + 256 * getMemory(addr16 + 1);
		
		int x  = Registers.get(Register.X);
		int y  = Registers.get(Register.Y);
		
		int opcodeType = Processor.optype6502[opcode] >> 4;
		
		int target;
		switch(opcodeType) {
		case 1 : target = addr16; break;
		case 2 : target = addr8; break;
		case 3 : target = addr16 + x; break;
		case 4 : target = addr16 + y; break;
		case 5 : target = ind16  + x; break;
		case 6 : target = ind16  + y; break;
		case 7 : target = getMemory((addr8 + x) & 0xF) + 256 * getMemory((addr8 + x + 1) & 0xF); break;
		case 8 : target = ind8 + y; break;
		case 9 : target = addr + 2 + (addr8 > 128 ? addr8 - 256 : addr8); break;
		case 0xD : target = ind16; break;
		default : target = -1; break;
		}
		
		instruction.setTarget(target);
	}
	
	private static boolean isValidOpCode(int opCode) {
		for(int validCode : Processor.validops6502) {
			if (validCode > opCode) return false;
			
			if (validCode == opCode) return true;
		}
		return false;
	}
	
	private static String findLabel(int instruction, int value) {
		boolean isWrite = (Processor.optype6502[instruction] & 0x08) != 0;
		return findLabel(value, isWrite);
	}
	
	private static String findLabel(int value, boolean isWrite) {
		String label = symtableUser.get(value);
		if (label!=null) return label;
		
		// lookahead just in case
		for(int delta = 0; delta < 8; delta++) {
			int addr = value - delta;
			if (addr<0) break;
			
			label = symtableUser.get(addr);
			if (label!=null) return label + "+" + delta;
		}

		for(int i =0; i< Processor.symtableBuiltin.length; i++) {
			Sym sym = Processor.symtableBuiltin[i];
			if (sym.addr != value) continue;
			
			if (isWrite && i < Processor.symtableBuiltin.length - 1 && Processor.symtableBuiltin[i+1].addr == value) {
				sym = Processor.symtableBuiltin[i+1]; 
			}
			
			String symName = sym.name;
			int p = symName.indexOf("+");
			if (p>0) {
				symName = symName.substring(0, p);
			}
			usedSyms.add(symName);
			
			return sym.name;
		}
		
		return null;
	}
	
	public static List<Sym> getUsedSyms() {
		List<Sym> list = new ArrayList<Sym>();
		for(Sym sym : Processor.symtableBuiltin) {
			if (usedSyms.contains(sym.name)) list.add(sym);
		}
		return list;
	}

	public static int traceBack(int addr, int lines) {
		// go all the way back in the worst case scenario (3 bytes per instruction)
		int startingAddr = addr - lines * 3;
		int traceAddr[] = new int[lines*3];
		if (startingAddr < 0) startingAddr = 0;
		
		/* look back until a working address is found to reach the target address */
		/* lookupAddr will contain the address found */
		/* distance will contain how many instructions is lookupAddr far from addr */
		boolean found = false;
		int lookupAddr;
		int distance;
		do {
			lookupAddr = startingAddr++;
			distance = 0;
			
			/* find if there is a way to reach addr from the startingAddr */
			while (!found && lookupAddr < addr) {
				traceAddr[distance++] = lookupAddr;
				
				int instr = getMemory(lookupAddr);
				int size  = Processor.optype6502[instr] & 3;
				found = lookupAddr + size == addr;
				if (found) break;
				
				lookupAddr += size;
			};
		} while (!found && startingAddr<addr);
		
		/* worst case, we cannot go back */
		if (!found) return addr;
		
		/* distance is closer than requested lines */
		if (distance < lines) return lookupAddr;
		
		int traceAddrIndex = distance - lines;
		return traceAddr[traceAddrIndex];
		
	}
	
	public static void setXEXName(String xex) {
		int p = xex.lastIndexOf(".");
		String baseName = xex.substring(0, p);
		
		lblFileName = baseName + ".lab";
		xexFileName = xex;
		
		loadLabels();
	}
	
	public static void loadLabels() {
		symtableUser.clear();
		File lblFile = new File(lblFileName);
		if (!lblFile.exists()) return;
		
		String line;

		BufferedReader br = null;
		try {
			br = new BufferedReader(new FileReader(lblFile));
			while ((line = br.readLine()) != null) {
				String parts[] = line.split("\t");
				if (parts.length!=3) continue;
				
				int addr = Integer.parseInt(parts[1], 16);
				String label = parts[2].trim();
				symtableUser.put(addr, label);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (br!=null) try {br.close();} catch (IOException e){}
		}
	}
	
	public static void addUserLabel(int addr, String label) {
		symtableUser.put(addr, label);
	}
	
	public static void addSection(int blockIndex, SectionType sectionType, int addr) {
		mapper.addSection(blockIndex, sectionType, addr);
	}

	public static void createBlock(int blockIndex, int addr, int length) {
		mapper.createBlock(blockIndex, addr, length);
	}
	
	public static int getLastAddr(int blockIndex) {
		return mapper.getLastAddr(blockIndex);
	}

	public static void dumpMapper() {
		System.out.println(mapper);
	}

	public static void main(String args[]) {
		int memory[] = { 169, 0, 142, 160, 0x6A, 133, 0x6A, 133, 206, 104, 96, 16, 3, 32, 62, 63, 160, 2, 16, 254, 0};
		
		setMemory(1536, memory);
		
		int addr = 1536;
		int base = 0;
		while (base < memory.length) {
			Instruction instruction = getInstruction(0, addr + base);
			System.out.println(instruction.text + (instruction.label != null ? (" ;  " + instruction.label) : ""));
			base += instruction.size;
		}
		System.out.println("traceback tests");
		System.out.println(String.format("%04X", traceBack(0, 10))); // 0000
		System.out.println(String.format("%04X", traceBack(2, 1)));  // 0000
		System.out.println(String.format("%04X", traceBack(5, 1)));  // 0002
		System.out.println(String.format("%04X", traceBack(5, 2)));  // 0000
		System.out.println(String.format("%04X", traceBack(7, 1)));  // 0005
		System.out.println(String.format("%04X", traceBack(7, 2)));  // 0002
		System.out.println(String.format("%04X", traceBack(13, 1)));  // 000B
		System.out.println(String.format("%04X", traceBack(13, 2)));  // 000A
		System.out.println(String.format("%04X", traceBack(13, 3)));  // 0009
		System.out.println(String.format("%04X", traceBack(13, 4)));  // 0007
		System.out.println(String.format("%04X", traceBack(13, 5)));  // 0005
	}

}
