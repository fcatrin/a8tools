package xtvapps.atari.disasm;

public class Registers {
	static int registers[] = new int[Register.values().length];

	public static void set(Register register, int value) {
		registers[register.ordinal()] = value;
	}
	
	public static void set(Register register, String value) {
		set(register, Integer.parseInt(value, 16));
	}
	
	public static int get(Register register) {
		return registers[register.ordinal()];
	}
	
	public static String getHex(Register register) {
		int value = get(register);
		String format = (register == Register.PC) ? "%04X" : "%02X";
		return String.format(format, value);
	}
}
