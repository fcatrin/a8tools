package xtvapps.atari.disasm.mapper;

import java.util.HashMap;
import java.util.Map;

import xtvapps.atari.disasm.mapper.Section.SectionType;

public class Mapper {
	Map<Integer, Block> blocks = new HashMap<Integer, Block>();
	
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
	
	public int getLastAddr(int blockIndex) {
		Block block = blocks.get(blockIndex);
		return block.getLastAddr();
	}
	
	public void clear() {
		blocks.clear();
	}
	
	@Override
	public String toString() {
		return String.format("mapper blocks %s", blocks);
	}

}
