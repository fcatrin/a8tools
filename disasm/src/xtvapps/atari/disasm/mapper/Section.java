package xtvapps.atari.disasm.mapper;

public class Section {
	public enum SectionType {Code, Byte, Word, DisplayList};

	public SectionType sectionType;
	public int addr;
	
	public Section(SectionType sectionType, int addr) {
		this.sectionType = sectionType;
		this.addr = addr;
	}

	@Override
	public String toString() {
		return String.format("section: %s addr %04X", sectionType.name(), addr);
	}
}
