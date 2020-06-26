package xtvapps.atari.disasm.mapper;

import java.util.HashMap;
import java.util.Map;

import xtvapps.atari.disasm.mapper.Section.SectionType;

public class Mapper {
	Map<Integer, Block> blocks = new HashMap<Integer, Block>();
	
	public Mapper() {}
	
	public void addSection(int blockIndex, SectionType sectionType, int addr) {
		Block block = blocks.get(blockIndex);
		if (block == null) {
			block = new Block(blockIndex);
			blocks.put(blockIndex, block);
		}
		
		block.addSection(new Section(sectionType, addr));
	}
	
	public SectionType getSectionType(int blockIndex, int addr) {
		SectionType sectionType = SectionType.Code;
		Block block = blocks.get(blockIndex);
		if (block != null) {
			sectionType = block.getSectionType(addr);
		}		
		
		return sectionType;
	}
	
	public void clear() {
		blocks.clear();
	}
	
	@Override
	public String toString() {
		return String.format("mapper blocks %s", blocks);
	}

}
