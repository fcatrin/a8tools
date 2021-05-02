package xtvapps.atari.disasm.mapper;

import java.util.ArrayList;
import java.util.List;

import xtvapps.atari.Log;
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
		if (!sections.isEmpty()) {
			sections.get(sections.size()-1).lastAddr = section.addr - 1;
		}
		sections.add(section);
	}
	
	public Section getSection(int addr) {
		Section selectedSection = null;
		for(Section section : sections) {
			if (addr >= section.addr) selectedSection =  section;
		}
		return selectedSection;
	}
	
	public SectionType getSectionType(int addr) {
		Section section = getSection(addr);
		if (section!=null) return section.sectionType;

		return SectionType.Code;
	}
	
	public int getSectionLastAddr(int addr) {
		Section section = getSection(addr);
		if (section!=null) return section.lastAddr;
		return 0x10000;
	}
	
	public int getLastAddr() {
		return addr + length - 1;
	}
	
	@Override
	public String toString() {
		return String.format("block %d, sections %s", index, sections);
	}

}
