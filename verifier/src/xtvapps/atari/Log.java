package xtvapps.atari;

public class Log {

	private Log() {}

	public static void d(String tag, String text) {
		System.out.println(String.format("[%s] %s", tag, text));
	}
}
