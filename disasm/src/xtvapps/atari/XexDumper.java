package xtvapps.atari;

import java.io.File;
import java.io.IOException;

public class XexDumper {
	public static final String LOGTAG = XexDumper.class.getSimpleName();

	public XexDumper() {
	}
	
	public void dump(File xexfile) throws IOException {
		byte[] bytes = Utils.loadBytes(xexfile);
		
		int index = 0;
		while (index < bytes.length) {
			int addr_start = word(bytes[index], bytes[index+1]);
			index += 2;

			if (addr_start == 0xFFFF) continue;
			
			int addr_end = word(bytes[index], bytes[index+1]);
			index += 2;

			Log.d(LOGTAG, String.format("fuond block %04X - %04X", addr_start, addr_end));
			
			int blocksize = addr_end - addr_start + 1;
			int block[] = new int[blocksize];
			for(int i=0; i < blocksize && (index + i) < bytes.length; i++) {
				block[i] = byte2int(bytes[index + i]);
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
		XexDumper xexDumper = new XexDumper();
		xexDumper.dump(new File("/home/fcatrin/screaming_wings.xex"));
	}

}
