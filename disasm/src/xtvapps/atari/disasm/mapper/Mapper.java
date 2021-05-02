package xtvapps.atari.disasm.mapper;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import xtvapps.atari.disasm.Processor.Sym;
import xtvapps.atari.disasm.mapper.Section.SectionType;

public class Mapper {
	Map<Integer, Block>    blocks = new HashMap<Integer, Block>();
	Map<Integer, Sym>      labels = new LinkedHashMap<Integer, Sym>();
	Map<Integer, String> comments = new LinkedHashMap<Integer, String>();

	public Mapper() {}

	public void createBlock(int blockIndex, int addr, int length) {
		Block block = getBlock(blockIndex);
		block.setAddr(addr, length);
	}

	public void addSection(int blockIndex, SectionType sectionType, int addr) {
		Block block = getBlock(blockIndex);
		block.addSection(new Section(sectionType, addr));
	}
	
	private Block getBlock(int blockIndex) {
		Block block = blocks.get(blockIndex);
		if (block == null) {
			block = new Block(blockIndex);
			blocks.put(blockIndex, block);
		}
		return block;
	}
	
	public SectionType getSectionType(int blockIndex, int addr) {
		SectionType sectionType = SectionType.Code;
		Block block = blocks.get(blockIndex);
		if (block != null) {
			sectionType = block.getSectionType(addr);
		}		
		
		return sectionType;
	}
	
	public int getSectionLastAddr(int blockIndex, int addr) {
		Block block = blocks.get(blockIndex);
		if (block != null) {
			return block.getSectionLastAddr(addr);
		}		
		return 0x10000;
	}
	
	public int getLastAddr(int blockIndex) {
		Block block = blocks.get(blockIndex);
		return block.getLastAddr();
	}
	
	public void clear() {
		blocks.clear();
		labels.clear();
		comments.clear();
	}
	
	public void addLabel(int addr, String name, int size) {
		labels.put(addr, new Sym(name, addr, size));
	}
	
	public Sym getLabel(int addr) {
		return labels.get(addr);
	}

	public Map<Integer, Sym> getLabels() {
		return labels;
	}

	public void addComment(int addr, String comment) {
		comments.put(addr, comment);
	}
	
	public String getComment(int addr) {
		return comments.get(addr);
	}

	@Override
	public String toString() {
		return String.format("mapper blocks %s", blocks);
	}

}
