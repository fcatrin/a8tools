package xtvapps.atari.disasm;

public class Instruction {
	String text;
	String label;
	int size;
	int addr;
	int target;
	
	public Instruction(int addr, String text, int size) {
		super();
		this.addr = addr;
		this.text = text;
		this.size = size;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getText() {
		return text;
	}

	public int getSize() {
		return size;
	}

	public int getAddr() {
		return addr;
	}

	public int getTarget() {
		return target;
	}

	public void setTarget(int target) {
		this.target = target;
	}
	
}