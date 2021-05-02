package xtvapps.atari.disasm.mapper;

import java.util.ArrayList;
import java.util.List;

import xtvapps.atari.disasm.mapper.Section.SectionType;

public class Block {
	int index;
	
	List<Section> sections = new ArrayList<Section>();

	private int addr;
	private int length;

	public Block(int index) {
		this.index = index;
	}
	
	public void setAddr(int addr, int length) {
		this.addr = addr;
		this.length = length;
	}
	
	public void addSection(Section section) {
		sections.add(section);
	}
	
	public SectionType getSectionType(int addr) {
		SectionType sectionType = SectionType.Code;
		for(Section section : sections) {
			if (addr >= section.addr) sectionType = section.sectionType;
		}
		return sectionType;
	}
	
	public int getLastAddr() {
		return addr + length - 1;
	}
	
	@Override
	public String toString() {
		return String.format("block %d, sections %s", index, sections);
	}

}
