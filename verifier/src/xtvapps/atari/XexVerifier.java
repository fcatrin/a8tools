package xtvapps.atari;

import java.io.File;
import java.io.IOException;

public class XexVerifier {
	public static final String LOGTAG = XexVerifier.class.getSimpleName();

	private File xexOriginal;
	private File xexRebuilt;


	public XexVerifier(File xexOriginal, File xexRebuilt) {
		this.xexOriginal = xexOriginal;
		this.xexRebuilt  = xexRebuilt;
	}
	
	public void dumpDiff() throws IOException {
		int memRebuilt[]  = new int[0x10000];
		int memOriginal[] = new int[0x10000];

		load(xexOriginal, memOriginal);
		load(xexRebuilt, memRebuilt);
		
		int tolerance = 5;
		for(int i=0; i<memOriginal.length; i++) {
			if (memOriginal[i] == memRebuilt[i]) continue;
			
			if (tolerance-- > 0) {
				String msg = String.format("Found difference on $%04X $%02X != $%02X", i, memOriginal[i], memRebuilt[i]);
				System.out.println(msg);
			} else {
				System.out.println("Too many differences, aborting");
				return;
			}
		}
		
	}

	public void load(File xexFile, int memory[]) throws IOException {
		byte[] bytes = Utils.loadBytes(xexFile);

		int index = 0;
		while (index < bytes.length) {
			int addr_start = word(bytes[index], bytes[index+1]);
			index += 2;

			if (addr_start == 0xFFFF) continue;
			
			int addr_end = word(bytes[index], bytes[index+1]);
			index += 2;

			Log.d(LOGTAG, String.format("found block %04X - %04X", addr_start, addr_end));
			
			int blocksize = addr_end - addr_start + 1;
			for(int i=0; i < blocksize && (index + i) < bytes.length; i++) {
				memory[addr_start + i] = byte2int(bytes[index + i]);
			}
			
			index += blocksize;
		}
	}

	private int byte2int(byte b) {
		return b >= 0 ? b : 256 + b;
	}
	
	private int word(byte low, byte high) {
		return byte2int(low) + 256* byte2int(high);
	}
	
	public static void main(String[] args) throws IOException {

		if (args.length < 2) {
			System.out.println("Use XexVerifier original.xex rebuilt.xex\n");
			return;
		}
		
		File xexFiles[] = new File[2];
		for(int i=0; i<2; i++) {
			File xexFile = new File(args[0]);
			if (!xexFile.exists()) {
				System.out.println(String.format("XEX file not found: %s\n",xexFile.getAbsolutePath()));
				return;
			}
			xexFiles[i] = xexFile;
		}
		
		XexVerifier verifier = new XexVerifier(xexFiles[0], xexFiles[1]);
		verifier.dumpDiff();
		
	}


}
