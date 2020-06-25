package xtvapps.atari.disasm;

public class Instruction {
	String text;
	String label;
	String code;
	
	int size;
	int addr;
	
	int target;
	String targetLabel;
	
	public Instruction(int addr, String text, String code, int size) {
		super();
		this.addr = addr;
		this.text = text;
		this.size = size;
		this.code = code;
	}

	public String getTargetLabel() {
		return targetLabel;
	}

	public void setTargetLabel(String targetLabel) {
		this.targetLabel = targetLabel;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getAddr() {
		return addr;
	}

	public void setAddr(int addr) {
		this.addr = addr;
	}

	public int getTarget() {
		return target;
	}

	public void setTarget(int target) {
		this.target = target;
	}

	
	
}