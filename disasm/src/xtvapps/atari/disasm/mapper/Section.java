package xtvapps.atari.disasm.mapper;

public class Section {
	public enum SectionType {Code, Byte, Word, DisplayList, Ignore};

	public SectionType sectionType;
	public int addr;
	public int lastAddr = 0x10000;
	
	public Section(SectionType sectionType, int addr) {
		this.sectionType = sectionType;
		this.addr = addr;
	}
	
	@Override
	public String toString() {
		return String.format("section: %s addr %04X - %04X", sectionType.name(), addr, lastAddr);
	}
}
