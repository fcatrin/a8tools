package xtvapps.atari.disasm;

public class Processor {
	/* values from Atari800 emulator */
	
	public static String instr6502[] = {
			"BRK", "ORA (1,X)", "CIM", "ASO (1,X)", "NOP 1", "ORA 1", "ASL 1", "ASO 1",
			"PHP", "ORA #1", "ASL", "ANC #1", "NOP 2", "ORA 2", "ASL 2", "ASO 2",

			"BPL 0", "ORA (1),Y", "CIM", "ASO (1),Y", "NOP 1,X", "ORA 1,X", "ASL 1,X", "ASO 1,X",
			"CLC", "ORA 2,Y", "NOP !", "ASO 2,Y", "NOP 2,X", "ORA 2,X", "ASL 2,X", "ASO 2,X",

			"JSR 2", "AND (1,X)", "CIM", "RLA (1,X)", "BIT 1", "AND 1", "ROL 1", "RLA 1",
			"PLP", "AND #1", "ROL", "ANC #1", "BIT 2", "AND 2", "ROL 2", "RLA 2",

			"BMI 0", "AND (1),Y", "CIM", "RLA (1),Y", "NOP 1,X", "AND 1,X", "ROL 1,X", "RLA 1,X",
			"SEC", "AND 2,Y", "NOP !", "RLA 2,Y", "NOP 2,X", "AND 2,X", "ROL 2,X", "RLA 2,X",


			"RTI", "EOR (1,X)", "CIM", "LSE (1,X)", "NOP 1", "EOR 1", "LSR 1", "LSE 1",
			"PHA", "EOR #1", "LSR", "ALR #1", "JMP 2", "EOR 2", "LSR 2", "LSE 2",

			"BVC 0", "EOR (1),Y", "CIM", "LSE (1),Y", "NOP 1,X", "EOR 1,X", "LSR 1,X", "LSE 1,X",
			"CLI", "EOR 2,Y", "NOP !", "LSE 2,Y", "NOP 2,X", "EOR 2,X", "LSR 2,X", "LSE 2,X",

			"RTS", "ADC (1,X)", "CIM", "RRA (1,X)", "NOP 1", "ADC 1", "ROR 1", "RRA 1",
			"PLA", "ADC #1", "ROR", "ARR #1", "JMP (2)", "ADC 2", "ROR 2", "RRA 2",

			"BVS 0", "ADC (1),Y", "CIM", "RRA (1),Y", "NOP 1,X", "ADC 1,X", "ROR 1,X", "RRA 1,X",
			"SEI", "ADC 2,Y", "NOP !", "RRA 2,Y", "NOP 2,X", "ADC 2,X", "ROR 2,X", "RRA 2,X",


			"NOP #1", "STA (1,X)", "NOP #1", "SAX (1,X)", "STY 1", "STA 1", "STX 1", "SAX 1",
			"DEY", "NOP #1", "TXA", "ANE #1", "STY 2", "STA 2", "STX 2", "SAX 2",

			"BCC 0", "STA (1),Y", "CIM", "SHA (1),Y", "STY 1,X", "STA 1,X", "STX 1,Y", "SAX 1,Y",
			"TYA", "STA 2,Y", "TXS", "SHS 2,Y", "SHY 2,X", "STA 2,X", "SHX 2,Y", "SHA 2,Y",

			"LDY #1", "LDA (1,X)", "LDX #1", "LAX (1,X)", "LDY 1", "LDA 1", "LDX 1", "LAX 1",
			"TAY", "LDA #1", "TAX", "ANX #1", "LDY 2", "LDA 2", "LDX 2", "LAX 2",

			"BCS 0", "LDA (1),Y", "CIM", "LAX (1),Y", "LDY 1,X", "LDA 1,X", "LDX 1,Y", "LAX 1,X",
			"CLV", "LDA 2,Y", "TSX", "LAS 2,Y", "LDY 2,X", "LDA 2,X", "LDX 2,Y", "LAX 2,Y",


			"CPY #1", "CMP (1,X)", "NOP #1", "DCM (1,X)", "CPY 1", "CMP 1", "DEC 1", "DCM 1",
			"INY", "CMP #1", "DEX", "SBX #1", "CPY 2", "CMP 2", "DEC 2", "DCM 2",

			"BNE 0", "CMP (1),Y", "ESCRTS #1", "DCM (1),Y", "NOP 1,X", "CMP 1,X", "DEC 1,X", "DCM 1,X",
			"CLD", "CMP 2,Y", "NOP !", "DCM 2,Y", "NOP 2,X", "CMP 2,X", "DEC 2,X", "DCM 2,X",


			"CPX #1", "SBC (1,X)", "NOP #1", "INS (1,X)", "CPX 1", "SBC 1", "INC 1", "INS 1",
			"INX", "SBC #1", "NOP", "SBC #1 !", "CPX 2", "SBC 2", "INC 2", "INS 2",

			"BEQ 0", "SBC (1),Y", "ESCAPE #1", "INS (1),Y", "NOP 1,X", "SBC 1,X", "INC 1,X", "INS 1,X",
			"SED", "SBC 2,Y", "NOP !", "INS 2,Y", "NOP 2,X", "SBC 2,X", "INC 2,X", "INS 2,X"
		};
	
	public static int validops6502[] = {
			0x00, 0x01,             0x05, 0x06, 0x08, 0x09, 0x0a,       0x0d, 0x0e,
			0x10, 0x11,             0x15, 0x16, 0x18, 0x19,             0x1d, 0x1e,
			0x20, 0x21,       0x24, 0x25, 0x26, 0x28, 0x29, 0x2a, 0x2c, 0x2d, 0x2e,
			0x30, 0x31,             0x35, 0x36, 0x38, 0x39,             0x3d, 0x3e,
			0x40, 0x41,             0x45, 0x46, 0x48, 0x49, 0x4a, 0x4c, 0x4d, 0x4e,
			0x50, 0x51,             0x55, 0x56, 0x58, 0x59,             0x5d, 0x5e,
			0x60, 0x61,             0x65, 0x66, 0x68, 0x69, 0x6a, 0x6c, 0x6d, 0x6e,
			0x70, 0x71,             0x75, 0x76, 0x78, 0x79,             0x7d, 0x7e,
			      0x81,       0x84, 0x85, 0x86, 0x88,       0x8a, 0x8c, 0x8d, 0x8e,
			0x90, 0x91,       0x94, 0x95, 0x96, 0x98, 0x99, 0x9a,       0x9d,
			0xa0, 0xa1, 0xa2, 0xa4, 0xa5, 0xa6, 0xa8, 0xa9, 0xaa, 0xac, 0xad, 0xae,
			0xb0, 0xb1,       0xb4, 0xb5, 0xb6, 0xb8, 0xb9, 0xba, 0xbc, 0xbd, 0xbe,
			0xc0, 0xc1,       0xc4, 0xc5, 0xc6, 0xc8, 0xc9, 0xca, 0xcc, 0xcd, 0xce,
			0xd0, 0xd1,             0xd5, 0xd6, 0xd8, 0xd9,             0xdd, 0xde,
			0xe0, 0xe1,       0xe4, 0xe5, 0xe6, 0xe8, 0xe9, 0xea, 0xec, 0xed, 0xee,
			0xf0, 0xf1,             0xf5, 0xf6, 0xf8, 0xf9,             0xfd, 0xfe
	};

	/* Opcode type:
	   bits 1-0 = instruction length
	   bit 2    = instruction reads from memory (without stack-manipulating instructions)
	   bit 3    = instruction writes to memory (without stack-manipulating instructions)
	   bits 7-4 = adressing type:
	     0 = NONE (implicit)
	     1 = ABSOLUTE
	     2 = ZPAGE
	     3 = ABSOLUTE_X
	     4 = ABSOLUTE_Y
	     5 = INDIRECT_X
	     6 = INDIRECT_Y
	     7 = ZPAGE_X
	     8 = ZPAGE_Y
	     9 = RELATIVE
	     A = IMMEDIATE
	     B = STACK 2 (RTS)
	     C = STACK 3 (RTI)
	     D = INDIRECT (JMP () )
	     E = ESCRTS
	     F = ESCAPE */
	
	public static int optype6502[] = {
		0x01, 0x56, 0x01, 0x5e, 0x22, 0x26, 0x2e, 0x2e, 0x01, 0xa2, 0x01, 0xa2, 0x13, 0x17, 0x1f, 0x1f,
		0x92, 0x66, 0x01, 0x6e, 0x72, 0x76, 0x7e, 0x7e, 0x01, 0x47, 0x01, 0x4f, 0x33, 0x37, 0x3f, 0x3f,
		0x13, 0x56, 0x01, 0x5e, 0x26, 0x26, 0x2e, 0x2e, 0x01, 0xa2, 0x01, 0xa2, 0x17, 0x17, 0x1f, 0x1f,
		0x92, 0x66, 0x01, 0x6e, 0x72, 0x76, 0x7e, 0x7e, 0x01, 0x47, 0x01, 0x4f, 0x33, 0x37, 0x3f, 0x3f,
		0xc1, 0x56, 0x01, 0x5e, 0x22, 0x26, 0x2e, 0x2e, 0x01, 0xa2, 0x01, 0xa2, 0x13, 0x17, 0x1f, 0x1f,
		0x92, 0x66, 0x01, 0x6e, 0x72, 0x76, 0x7e, 0x7e, 0x01, 0x47, 0x01, 0x4f, 0x33, 0x37, 0x3f, 0x3f,
		0xb1, 0x56, 0x01, 0x5e, 0x22, 0x26, 0x2e, 0x2e, 0x01, 0xa2, 0x01, 0xa2, 0xd3, 0x17, 0x1f, 0x1f,
		0x92, 0x66, 0x01, 0x6e, 0x72, 0x76, 0x7e, 0x7e, 0x01, 0x47, 0x01, 0x4f, 0x33, 0x37, 0x3f, 0x3f,
		0xa2, 0x5a, 0x01, 0x5a, 0x2a, 0x2a, 0x2a, 0x2a, 0x01, 0xa2, 0x01, 0xa2, 0x1b, 0x1b, 0x1b, 0x1b,
		0x92, 0x6a, 0x01, 0x6a, 0x7a, 0x7a, 0x8a, 0x8a, 0x01, 0x4b, 0x01, 0x4b, 0x3b, 0x3b, 0x4b, 0x4b,
		0xa2, 0x56, 0xa2, 0x56, 0x26, 0x26, 0x26, 0x26, 0x01, 0xa2, 0x01, 0xa2, 0x17, 0x17, 0x17, 0x17,
		0x92, 0x66, 0x01, 0x66, 0x76, 0x76, 0x86, 0x86, 0x01, 0x47, 0x01, 0x47, 0x37, 0x37, 0x47, 0x47,
		0xa2, 0x56, 0xa2, 0x5e, 0x26, 0x26, 0x2e, 0x2e, 0x01, 0xa2, 0x01, 0xa2, 0x17, 0x17, 0x1f, 0x1f,
		0x92, 0x66, 0xe2, 0x6e, 0x72, 0x76, 0x7e, 0x7e, 0x01, 0x47, 0x01, 0x4f, 0x33, 0x37, 0x3f, 0x3f,
		0xa2, 0x56, 0xa2, 0x5e, 0x26, 0x26, 0x2e, 0x2e, 0x01, 0xa2, 0x01, 0xa2, 0x17, 0x17, 0x1f, 0x1f,
		0x92, 0x66, 0xf2, 0x6e, 0x72, 0x76, 0x7e, 0x7e, 0x01, 0x47, 0x01, 0x4f, 0x33, 0x37, 0x3f, 0x3f
	};

	 /* Symbol names taken from:
    - XL OS sources, Atari Home Computer System - Operating System Manual - XL Addendum
    - BASIC sources, The Atari BASIC Source Book
    Symbols must be sorted by address. If the address has different names
    when reading/writing to it, put the read name first. */

public static class Sym {
	String name;
	int addr;
	
	public Sym(String name, int addr) {
		this.name = name;
		this.addr = addr;
	}
}
	
public static Sym symtableBuiltin[] = {
	new Sym("LNFLG",   0x0000), new Sym("NGFLAG",  0x0001), new Sym("CASINI",  0x0002), new Sym("CASINI+1",0x0003),
	new Sym("RAMLO",   0x0004), new Sym("RAMLO+1", 0x0005), new Sym("TRAMSZ",  0x0006), new Sym("CMCMD",   0x0007),
	new Sym("WARMST",  0x0008), new Sym("BOOT",    0x0009), new Sym("DOSVEC",  0x000a), new Sym("DOSVEC+1",0x000b),
	new Sym("DOSINI",  0x000c), new Sym("DOSINI+1",0x000d), new Sym("APPMHI",  0x000e), new Sym("APPMHI+1",0x000f),
	new Sym("POKMSK",  0x0010), new Sym("BRKKEY",  0x0011), new Sym("RTCLOK",  0x0012), new Sym("RTCLOK+1",0x0013),
	new Sym("RTCLOK+2",0x0014), new Sym("BUFADR",  0x0015), new Sym("BUFADR+1",0x0016), new Sym("ICCOMT",  0x0017),
	new Sym("DSKFMS",  0x0018), new Sym("DSKFMS+1",0x0019), new Sym("DSKUTL",  0x001a), new Sym("DSKUTL+1",0x001b),
	new Sym("ABUFPT",  0x001c), new Sym("ABUFPT+1",0x001d), new Sym("ABUFPT+2",0x001e), new Sym("ABUFPT+3",0x001f),
	new Sym("ICHIDZ",  0x0020), new Sym("ICDNOZ",  0x0021), new Sym("ICCOMZ",  0x0022), new Sym("ICSTAZ",  0x0023),
	new Sym("ICBALZ",  0x0024), new Sym("ICBAHZ",  0x0025), new Sym("ICPTLZ",  0x0026), new Sym("ICPTHZ",  0x0027),
	new Sym("ICBLLZ",  0x0028), new Sym("ICBLHZ",  0x0029), new Sym("ICAX1Z",  0x002a), new Sym("ICAX2Z",  0x002b),
	new Sym("ICSPRZ",  0x002c), new Sym("ICSPRZ+1",0x002d), new Sym("ICIDNO",  0x002e), new Sym("CIOCHR",  0x002f),
	new Sym("STATUS",  0x0030), new Sym("CHKSUM",  0x0031), new Sym("BUFRLO",  0x0032), new Sym("BUFRHI",  0x0033),
	new Sym("BFENLO",  0x0034), new Sym("BFENHI",  0x0035), new Sym("LTEMP",   0x0036), new Sym("LTEMP+1", 0x0037),
	new Sym("BUFRFL",  0x0038), new Sym("RECVDN",  0x0039), new Sym("XMTDON",  0x003a), new Sym("CHKSNT",  0x003b),
	new Sym("NOCKSM",  0x003c), new Sym("BPTR",    0x003d), new Sym("FTYPE",   0x003e), new Sym("FEOF",    0x003f),
	new Sym("FREQ",    0x0040), new Sym("SOUNDR",  0x0041), new Sym("CRITIC",  0x0042), new Sym("FMSZPG",  0x0043),
	new Sym("FMSZPG+1",0x0044), new Sym("FMSZPG+2",0x0045), new Sym("FMSZPG+3",0x0046), new Sym("FMSZPG+4",0x0047),
	new Sym("FMSZPG+5",0x0048), new Sym("FMSZPG+6",0x0049), new Sym("ZCHAIN",  0x004a), new Sym("ZCHAIN+1",0x004b),
	new Sym("DSTAT",   0x004c), new Sym("ATRACT",  0x004d), new Sym("DRKMSK",  0x004e), new Sym("COLRSH",  0x004f),
	new Sym("TMPCHR",  0x0050), new Sym("HOLD1",   0x0051), new Sym("LMARGN",  0x0052), new Sym("RMARGN",  0x0053),
	new Sym("ROWCRS",  0x0054), new Sym("COLCRS",  0x0055), new Sym("COLCRS+1",0x0056), new Sym("DINDEX",  0x0057),
	new Sym("SAVMSC",  0x0058), new Sym("SAVMSC+1",0x0059), new Sym("OLDROW",  0x005a), new Sym("OLDCOL",  0x005b),
	new Sym("OLDCOL+1",0x005c), new Sym("OLDCHR",  0x005d), new Sym("OLDADR",  0x005e), new Sym("OLDADR+1",0x005f),
	new Sym("FKDEF",   0x0060), new Sym("FKDEF+1", 0x0061), new Sym("PALNTS",  0x0062), new Sym("LOGCOL",  0x0063),
	new Sym("ADRESS",  0x0064), new Sym("ADRESS+1",0x0065), new Sym("TOADR",   0x0066), new Sym("TOADR+1", 0x0067),
	new Sym("SAVADR",  0x0068), new Sym("SAVADR+1",0x0069), new Sym("RAMTOP",  0x006a), new Sym("BUFCNT",  0x006b),
	new Sym("BUFSTR",  0x006c), new Sym("BUFSTR+1",0x006d), new Sym("BITMSK",  0x006e), new Sym("SHFAMT",  0x006f),
	new Sym("ROWAC",   0x0070), new Sym("ROWAC+1", 0x0071), new Sym("COLAC",   0x0072), new Sym("COLAC+1", 0x0073),
	new Sym("ENDPT",   0x0074), new Sym("ENDPT+1", 0x0075), new Sym("DELTAR",  0x0076), new Sym("DELTAC",  0x0077),
	new Sym("DELTAC+1",0x0078), new Sym("KEYDEF",  0x0079), new Sym("KEYDEF+1",0x007a), new Sym("SWPFLG",  0x007b),
	new Sym("HOLDCH",  0x007c), new Sym("INSDAT",  0x007d), new Sym("COUNTR",  0x007e), new Sym("COUNTR+1",0x007f),

	new Sym("LOMEM",   0x0080), new Sym("LOMEM+1", 0x0081), new Sym("VNTP",    0x0082), new Sym("VNTP+1",  0x0083),
	new Sym("VNTD",    0x0084), new Sym("VNTD+1",  0x0085), new Sym("VVTP",    0x0086), new Sym("VVTP+1",  0x0087),
	new Sym("STMTAB",  0x0088), new Sym("STMTAB+1",0x0089), new Sym("STMCUR",  0x008a), new Sym("STMCUR+1",0x008b),
	new Sym("STARP",   0x008c), new Sym("STARP+1", 0x008d), new Sym("RUNSTK",  0x008e), new Sym("RUNSTK+1",0x008f),
	new Sym("MEMTOP",  0x0090), new Sym("MEMTOP+1",0x0091), new Sym("MEOLFLG", 0x0092),
	new Sym("COX",     0x0094), new Sym("POKADR",  0x0095), new Sym("POKADR+1",0x0096), new Sym("SVESA",   0x0097),
	new Sym("SVESA+1", 0x0098), new Sym("MVFA",    0x0099), new Sym("MVFA+1",  0x009a), new Sym("MVTA",    0x009b),
	new Sym("MVTA+1",  0x009c), new Sym("CPC",     0x009d), new Sym("CPC+1",   0x009e), new Sym("LLNGTH",  0x009f),
	new Sym("TSLNUM",  0x00a0), new Sym("TSLNUM+1",0x00a1), new Sym("MVLNG",   0x00a2), new Sym("MVLNG+1", 0x00a3),
	new Sym("ECSIZE",  0x00a4), new Sym("ECSIZE+1",0x00a5), new Sym("DIRFLG",  0x00a6), new Sym("STMLBD",  0x00a7),
	new Sym("STINDEX", 0x00a8), new Sym("OPSTKX",  0x00a9), new Sym("ARSTKX",  0x00aa), new Sym("EXSVOP",  0x00ab),
	new Sym("EXSVPR",  0x00ac), new Sym("LELNUM",  0x00ad), new Sym("LELNUM+1",0x00ae), new Sym("STENUM",  0x00af),
	new Sym("COMCNT",  0x00b0), new Sym("ADFLAG",  0x00b1), new Sym("SVDISP",  0x00b2), new Sym("ONLOOP",  0x00b3),
	new Sym("ENTDTD",  0x00b4), new Sym("LISTDTD", 0x00b5), new Sym("DATAD",   0x00b6), new Sym("DATALN",  0x00b7),
	new Sym("DATALN+1",0x00b8), new Sym("ERRNUM",  0x00b9), new Sym("STOPLN",  0x00ba), new Sym("STOPLN+1",0x00bb),
	new Sym("TRAPLN",  0x00bc), new Sym("TRAPLN+1",0x00bd), new Sym("SAVCUR",  0x00be), new Sym("SAVCUR+1",0x00bf),
	new Sym("IOCMD",   0x00c0), new Sym("IODVC",   0x00c1), new Sym("PROMPT",  0x00c2), new Sym("ERRSAV",  0x00c3),
	new Sym("TEMPA",   0x00c4), new Sym("TEMPA+1", 0x00c5), new Sym("ZTEMP2",  0x00c6), new Sym("ZTEMP2+1",0x00c7),
	new Sym("COLOR",   0x00c8), new Sym("PTABW",   0x00c9), new Sym("LOADFLG", 0x00ca),
	new Sym("VTYPE",   0x00d2), new Sym("VNUM",    0x00d3),
	new Sym("FR0",     0x00d4), new Sym("FR0+1",   0x00d5), new Sym("FR0+2",   0x00d6), new Sym("FR0+3",   0x00d7),
	new Sym("FR0+4",   0x00d8), new Sym("FR0+5",   0x00d9), new Sym("FRE",     0x00da), new Sym("FRE+1",   0x00db),
	new Sym("FRE+2",   0x00dc), new Sym("FRE+3",   0x00dd), new Sym("FRE+4",   0x00de), new Sym("FRE+5",   0x00df),
	new Sym("FR1",     0x00e0), new Sym("FR1+1",   0x00e1), new Sym("FR1+2",   0x00e2), new Sym("FR1+3",   0x00e3),
	new Sym("FR1+4",   0x00e4), new Sym("FR1+5",   0x00e5), new Sym("FR2",     0x00e6), new Sym("FR2+1",   0x00e7),
	new Sym("FR2+2",   0x00e8), new Sym("FR2+3",   0x00e9), new Sym("FR2+4",   0x00ea), new Sym("FR2+5",   0x00eb),
	new Sym("FRX",     0x00ec), new Sym("EEXP",    0x00ed), new Sym("NSIGN",   0x00ee), new Sym("ESIGN",   0x00ef),
	new Sym("FCHRFLG", 0x00f0), new Sym("DIGRT",   0x00f1), new Sym("CIX",     0x00f2), new Sym("INBUFF",  0x00f3),
	new Sym("INBUFF+1",0x00f4), new Sym("ZTEMP1",  0x00f5), new Sym("ZTEMP1+1",0x00f6), new Sym("ZTEMP4",  0x00f7),
	new Sym("ZTEMP4+1",0x00f8), new Sym("ZTEMP3",  0x00f9), new Sym("ZTEMP3+1",0x00fa), new Sym("RADFLG",  0x00fb),
	new Sym("FLPTR",   0x00fc), new Sym("FLPTR+1", 0x00fd), new Sym("FPTR2",   0x00fe), new Sym("FPTR2+1", 0x00ff),

	new Sym("VDSLST",  0x0200), new Sym("VDSLST+1",0x0201), new Sym("VPRCED",  0x0202), new Sym("VPRCED+1",0x0203),
	new Sym("VINTER",  0x0204), new Sym("VINTER+1",0x0205), new Sym("VBREAK",  0x0206), new Sym("VBREAK+1",0x0207),
	new Sym("VKEYBD",  0x0208), new Sym("VKEYBD+1",0x0209), new Sym("VSERIN",  0x020a), new Sym("VSERIN+1",0x020b),
	new Sym("VSEROR",  0x020c), new Sym("VSEROR+1",0x020d), new Sym("VSEROC",  0x020e), new Sym("VSEROC+1",0x020f),
	new Sym("VTIMR1",  0x0210), new Sym("VTIMR1+1",0x0211), new Sym("VTIMR2",  0x0212), new Sym("VTIMR2+1",0x0213),
	new Sym("VTIMR4",  0x0214), new Sym("VTIMR4+1",0x0215), new Sym("VIMIRQ",  0x0216), new Sym("VIMIRQ+1",0x0217),
	new Sym("CDTMV1",  0x0218), new Sym("CDTMV1+1",0x0219), new Sym("CDTMV2",  0x021a), new Sym("CDTMV2+1",0x021b),
	new Sym("CDTMV3",  0x021c), new Sym("CDTMV3+1",0x021d), new Sym("CDTMV4",  0x021e), new Sym("CDTMV4+1",0x021f),
	new Sym("CDTMV5",  0x0220), new Sym("CDTMV5+1",0x0221), new Sym("VVBLKI",  0x0222), new Sym("VVBLKI+1",0x0223),
	new Sym("VVBLKD",  0x0224), new Sym("VVBLKD+1",0x0225), new Sym("CDTMA1",  0x0226), new Sym("CDTMA1+1",0x0227),
	new Sym("CDTMA2",  0x0228), new Sym("CDTMA2+1",0x0229), new Sym("CDTMF3",  0x022a), new Sym("SRTIMR",  0x022b),
	new Sym("CDTMF4",  0x022c), new Sym("INTEMP",  0x022d), new Sym("CDTMF5",  0x022e), new Sym("SDMCTL",  0x022f),
	new Sym("SDLSTL",  0x0230), new Sym("SDLSTH",  0x0231), new Sym("SSKCTL",  0x0232), new Sym("LCOUNT",  0x0233),
	new Sym("LPENH",   0x0234), new Sym("LPENV",   0x0235), new Sym("BRKKY",   0x0236), new Sym("BRKKY+1", 0x0237),
	new Sym("VPIRQ",   0x0238), new Sym("VPIRQ+1", 0x0239), new Sym("CDEVIC",  0x023a), new Sym("CCOMND",  0x023b),
	new Sym("CAUX1",   0x023c), new Sym("CAUX2",   0x023d), new Sym("TEMP",    0x023e), new Sym("ERRFLG",  0x023f),
	new Sym("DFLAGS",  0x0240), new Sym("DBSECT",  0x0241), new Sym("BOOTAD",  0x0242), new Sym("BOOTAD+1",0x0243),
	new Sym("COLDST",  0x0244), new Sym("RECLEN",  0x0245), new Sym("DSKTIM",  0x0246), new Sym("PDVMSK",  0x0247),
	new Sym("SHPDVS",  0x0248), new Sym("PDIMSK",  0x0249), new Sym("RELADR",  0x024a), new Sym("RELADR+1",0x024b),
	new Sym("PPTMPA",  0x024c), new Sym("PPTMPX",  0x024d), new Sym("CHSALT",  0x026b),
	new Sym("VSFLAG",  0x026c), new Sym("KEYDIS",  0x026d), new Sym("FINE",    0x026e), new Sym("GPRIOR",  0x026f),
	new Sym("PADDL0",  0x0270), new Sym("PADDL1",  0x0271), new Sym("PADDL2",  0x0272), new Sym("PADDL3",  0x0273),
	new Sym("PADDL4",  0x0274), new Sym("PADDL5",  0x0275), new Sym("PADDL6",  0x0276), new Sym("PADDL7",  0x0277),
	new Sym("STICK0",  0x0278), new Sym("STICK1",  0x0279), new Sym("STICK2",  0x027a), new Sym("STICK3",  0x027b),
	new Sym("PTRIG0",  0x027c), new Sym("PTRIG1",  0x027d), new Sym("PTRIG2",  0x027e), new Sym("PTRIG3",  0x027f),
	new Sym("PTRIG4",  0x0280), new Sym("PTRIG5",  0x0281), new Sym("PTRIG6",  0x0282), new Sym("PTRIG7",  0x0283),
	new Sym("STRIG0",  0x0284), new Sym("STRIG1",  0x0285), new Sym("STRIG2",  0x0286), new Sym("STRIG3",  0x0287),
	new Sym("HIBYTE",  0x0288), new Sym("WMODE",   0x0289), new Sym("BLIM",    0x028a), new Sym("IMASK",   0x028b),
	new Sym("JVECK",   0x028c), new Sym("JVECK+1", 0x028d), new Sym("NEWADR",  0x028e), new Sym("NEWADR+1",0x028f),
	new Sym("TXTROW",  0x0290), new Sym("TXTCOL",  0x0291), new Sym("TXTCOL+1",0x0292), new Sym("TINDEX",  0x0293),
	new Sym("TXTMSC",  0x0294), new Sym("TXTMSC+1",0x0295), new Sym("TXTOLD",  0x0296), new Sym("TXTOLD+1",0x0297),
	new Sym("TXTOLD+2",0x0298), new Sym("TXTOLD+3",0x0299), new Sym("TXTOLD+4",0x029a), new Sym("TXTOLD+5",0x029b),
	new Sym("CRETRY",  0x029c), new Sym("HOLD3",   0x029d), new Sym("SUBTMP",  0x029e), new Sym("HOLD2",   0x029f),
	new Sym("DMASK",   0x02a0), new Sym("TMPLBT",  0x02a1), new Sym("ESCFLG",  0x02a2), new Sym("TABMAP",  0x02a3),
	new Sym("TABMAP+1",0x02a4), new Sym("TABMAP+2",0x02a5), new Sym("TABMAP+3",0x02a6), new Sym("TABMAP+4",0x02a7),
	new Sym("TABMAP+5",0x02a8), new Sym("TABMAP+6",0x02a9), new Sym("TABMAP+7",0x02aa), new Sym("TABMAP+8",0x02ab),
	new Sym("TABMAP+9",0x02ac), new Sym("TABMAP+A",0x02ad), new Sym("TABMAP+B",0x02ae), new Sym("TABMAP+C",0x02af),
	new Sym("TABMAP+D",0x02b0), new Sym("TABMAP+E",0x02b1), new Sym("LOGMAP",  0x02b2), new Sym("LOGMAP+1",0x02b3),
	new Sym("LOGMAP+2",0x02b4), new Sym("LOGMAP+3",0x02b5), new Sym("INVFLG",  0x02b6), new Sym("FILFLG",  0x02b7),
	new Sym("TMPROW",  0x02b8), new Sym("TMPCOL",  0x02b9), new Sym("TMPCOL+1",0x02ba), new Sym("SCRFLG",  0x02bb),
	new Sym("HOLD4",   0x02bc), new Sym("DRETRY",  0x02bd), new Sym("SHFLOK",  0x02be), new Sym("BOTSCR",  0x02bf),
	new Sym("PCOLR0",  0x02c0), new Sym("PCOLR1",  0x02c1), new Sym("PCOLR2",  0x02c2), new Sym("PCOLR3",  0x02c3),
	new Sym("COLOR0",  0x02c4), new Sym("COLOR1",  0x02c5), new Sym("COLOR2",  0x02c6), new Sym("COLOR3",  0x02c7),
	new Sym("COLOR4",  0x02c8), new Sym("RUNADR",  0x02c9), new Sym("RUNADR+1",0x02ca), new Sym("HIUSED",  0x02cb),
	new Sym("HIUSED+1",0x02cc), new Sym("ZHIUSE",  0x02cd), new Sym("ZHIUSE+1",0x02ce), new Sym("GBYTEA",  0x02cf),
	new Sym("GBYTEA+1",0x02d0), new Sym("LOADAD",  0x02d1), new Sym("LOADAD+1",0x02d2), new Sym("ZLOADA",  0x02d3),
	new Sym("ZLOADA+1",0x02d4), new Sym("DSCTLN",  0x02d5), new Sym("DSCTLN+1",0x02d6), new Sym("ACMISR",  0x02d7),
	new Sym("ACMISR+1",0x02d8), new Sym("KRPDEL",  0x02d9), new Sym("KEYREP",  0x02da), new Sym("NOCLIK",  0x02db),
	new Sym("HELPFG",  0x02dc), new Sym("DMASAV",  0x02dd), new Sym("PBPNT",   0x02de), new Sym("PBUFSZ",  0x02df),
	new Sym("RUNAD",   0x02e0), new Sym("RUNAD+1", 0x02e1), new Sym("INITAD",  0x02e2), new Sym("INITAD+1",0x02e3),
	new Sym("RAMSIZ",  0x02e4), new Sym("MEMTOP",  0x02e5), new Sym("MEMTOP+1",0x02e6), new Sym("MEMLO",   0x02e7),
	new Sym("MEMLO+1", 0x02e8), new Sym("HNDLOD",  0x02e9), new Sym("DVSTAT",  0x02ea), new Sym("DVSTAT+1",0x02eb),
	new Sym("DVSTAT+2",0x02ec), new Sym("DVSTAT+3",0x02ed), new Sym("CBAUDL",  0x02ee), new Sym("CBAUDH",  0x02ef),
	new Sym("CRSINH",  0x02f0), new Sym("KEYDEL",  0x02f1), new Sym("CH1",     0x02f2), new Sym("CHACT",   0x02f3),
	new Sym("CHBAS",   0x02f4), new Sym("NEWROW",  0x02f5), new Sym("NEWCOL",  0x02f6), new Sym("NEWCOL+1",0x02f7),
	new Sym("ROWINC",  0x02f8), new Sym("COLINC",  0x02f9), new Sym("CHAR",    0x02fa), new Sym("ATACHR",  0x02fb),
	new Sym("CH",      0x02fc), new Sym("FILDAT",  0x02fd), new Sym("DSPFLG",  0x02fe), new Sym("SSFLAG",  0x02ff),

	new Sym("DDEVIC",  0x0300), new Sym("DUNIT",   0x0301), new Sym("DCOMND",  0x0302), new Sym("DSTATS",  0x0303),
	new Sym("DBUFLO",  0x0304), new Sym("DBUFHI",  0x0305), new Sym("DTIMLO",  0x0306), new Sym("DUNUSE",  0x0307),
	new Sym("DBYTLO",  0x0308), new Sym("DBYTHI",  0x0309), new Sym("DAUX1",   0x030a), new Sym("DAUX2",   0x030b),
	new Sym("TIMER1",  0x030c), new Sym("TIMER1+1",0x030d), new Sym("ADDCOR",  0x030e), new Sym("CASFLG",  0x030f),
	new Sym("TIMER2",  0x0310), new Sym("TIMER2+1",0x0311), new Sym("TEMP1",   0x0312), new Sym("TEMP2",   0x0313),
	new Sym("PTIMOT",  0x0314), new Sym("TEMP3",   0x0315), new Sym("SAVIO",   0x0316), new Sym("TIMFLG",  0x0317),
	new Sym("STACKP",  0x0318), new Sym("TSTAT",   0x0319), new Sym("HATABS",  0x031a), /* HATABS 1-34 */
	new Sym("PUPBT1",  0x033d), new Sym("PUPBT2",  0x033e), new Sym("PUPBT3",  0x033f),
	new Sym("B0-ICHID",0x0340), new Sym("B0-ICDNO",0x0341), new Sym("B0-ICCOM",0x0342), new Sym("B0-ICSTA",0x0343),
	new Sym("B0-ICBAL",0x0344), new Sym("B0-ICBAH",0x0345), new Sym("B0-ICPTL",0x0346), new Sym("B0-ICPTH",0x0347),
	new Sym("B0-ICBLL",0x0348), new Sym("B0-ICBLH",0x0349), new Sym("B0-ICAX1",0x034a), new Sym("B0-ICAX2",0x034b),
	new Sym("B0-ICAX3",0x034c), new Sym("B0-ICAX4",0x034d), new Sym("B0-ICAX5",0x034e), new Sym("B0-ICAX6",0x034f),
	new Sym("B1-ICHID",0x0350), new Sym("B1-ICDNO",0x0351), new Sym("B1-ICCOM",0x0352), new Sym("B1-ICSTA",0x0353),
	new Sym("B1-ICBAL",0x0354), new Sym("B1-ICBAH",0x0355), new Sym("B1-ICPTL",0x0356), new Sym("B1-ICPTH",0x0357),
	new Sym("B1-ICBLL",0x0358), new Sym("B1-ICBLH",0x0359), new Sym("B1-ICAX1",0x035a), new Sym("B1-ICAX2",0x035b),
	new Sym("B1-ICAX3",0x035c), new Sym("B1-ICAX4",0x035d), new Sym("B1-ICAX5",0x035e), new Sym("B1-ICAX6",0x035f),
	new Sym("B2-ICHID",0x0360), new Sym("B2-ICDNO",0x0361), new Sym("B2-ICCOM",0x0362), new Sym("B2-ICSTA",0x0363),
	new Sym("B2-ICBAL",0x0364), new Sym("B2-ICBAH",0x0365), new Sym("B2-ICPTL",0x0366), new Sym("B2-ICPTH",0x0367),
	new Sym("B2-ICBLL",0x0368), new Sym("B2-ICBLH",0x0369), new Sym("B2-ICAX1",0x036a), new Sym("B2-ICAX2",0x036b),
	new Sym("B2-ICAX3",0x036c), new Sym("B2-ICAX4",0x036d), new Sym("B2-ICAX5",0x036e), new Sym("B2-ICAX6",0x036f),
	new Sym("B3-ICHID",0x0370), new Sym("B3-ICDNO",0x0371), new Sym("B3-ICCOM",0x0372), new Sym("B3-ICSTA",0x0373),
	new Sym("B3-ICBAL",0x0374), new Sym("B3-ICBAH",0x0375), new Sym("B3-ICPTL",0x0376), new Sym("B3-ICPTH",0x0377),
	new Sym("B3-ICBLL",0x0378), new Sym("B3-ICBLH",0x0379), new Sym("B3-ICAX1",0x037a), new Sym("B3-ICAX2",0x037b),
	new Sym("B3-ICAX3",0x037c), new Sym("B3-ICAX4",0x037d), new Sym("B3-ICAX5",0x037e), new Sym("B3-ICAX6",0x037f),
	new Sym("B4-ICHID",0x0380), new Sym("B4-ICDNO",0x0381), new Sym("B4-ICCOM",0x0382), new Sym("B4-ICSTA",0x0383),
	new Sym("B4-ICBAL",0x0384), new Sym("B4-ICBAH",0x0385), new Sym("B4-ICPTL",0x0386), new Sym("B4-ICPTH",0x0387),
	new Sym("B4-ICBLL",0x0388), new Sym("B4-ICBLH",0x0389), new Sym("B4-ICAX1",0x038a), new Sym("B4-ICAX2",0x038b),
	new Sym("B4-ICAX3",0x038c), new Sym("B4-ICAX4",0x038d), new Sym("B4-ICAX5",0x038e), new Sym("B4-ICAX6",0x038f),
	new Sym("B5-ICHID",0x0390), new Sym("B5-ICDNO",0x0391), new Sym("B5-ICCOM",0x0392), new Sym("B5-ICSTA",0x0393),
	new Sym("B5-ICBAL",0x0394), new Sym("B5-ICBAH",0x0395), new Sym("B5-ICPTL",0x0396), new Sym("B5-ICPTH",0x0397),
	new Sym("B5-ICBLL",0x0398), new Sym("B5-ICBLH",0x0399), new Sym("B5-ICAX1",0x039a), new Sym("B5-ICAX2",0x039b),
	new Sym("B5-ICAX3",0x039c), new Sym("B5-ICAX4",0x039d), new Sym("B5-ICAX5",0x039e), new Sym("B5-ICAX6",0x039f),
	new Sym("B6-ICHID",0x03a0), new Sym("B6-ICDNO",0x03a1), new Sym("B6-ICCOM",0x03a2), new Sym("B6-ICSTA",0x03a3),
	new Sym("B6-ICBAL",0x03a4), new Sym("B6-ICBAH",0x03a5), new Sym("B6-ICPTL",0x03a6), new Sym("B6-ICPTH",0x03a7),
	new Sym("B6-ICBLL",0x03a8), new Sym("B6-ICBLH",0x03a9), new Sym("B6-ICAX1",0x03aa), new Sym("B6-ICAX2",0x03ab),
	new Sym("B6-ICAX3",0x03ac), new Sym("B6-ICAX4",0x03ad), new Sym("B6-ICAX5",0x03ae), new Sym("B6-ICAX6",0x03af),
	new Sym("B7-ICHID",0x03b0), new Sym("B7-ICDNO",0x03b1), new Sym("B7-ICCOM",0x03b2), new Sym("B7-ICSTA",0x03b3),
	new Sym("B7-ICBAL",0x03b4), new Sym("B7-ICBAH",0x03b5), new Sym("B7-ICPTL",0x03b6), new Sym("B7-ICPTH",0x03b7),
	new Sym("B7-ICBLL",0x03b8), new Sym("B7-ICBLH",0x03b9), new Sym("B7-ICAX1",0x03ba), new Sym("B7-ICAX2",0x03bb),
	new Sym("B7-ICAX3",0x03bc), new Sym("B7-ICAX4",0x03bd), new Sym("B7-ICAX5",0x03be), new Sym("B7-ICAX6",0x03bf),
	new Sym("PRNBUF",  0x03c0), /* PRNBUF 1-39 */
	new Sym("SUPERF",  0x03e8), new Sym("CKEY",    0x03e9), new Sym("CASSBT",  0x03ea), new Sym("CARTCK",  0x03eb),
	new Sym("DERRF",   0x03ec), new Sym("ACMVAR",  0x03ed), /* ACMVAR 1-10 */
	new Sym("BASICF",  0x03f8), new Sym("MINTLK",  0x03f9), new Sym("GINTLK",  0x03fa), new Sym("CHLINK",  0x03fb),
	new Sym("CHLINK+1",0x03fc), new Sym("CASBUF",  0x03fd),

	new Sym("R-CARTCS",0x9ffa), new Sym("R-CARTCS+1",0x9ffb),
	new Sym("R-CART",  0x9ffc), new Sym("R-CARTFG",  0x9ffd), new Sym("R-CARTAD",0x9ffe), new Sym("R-CARTAD+1",0x9fff),

	new Sym("CARTCS",  0xbffa), new Sym("CARTCS+1",0xbffb),
	new Sym("CART",    0xbffc), new Sym("CARTFG",  0xbffd), new Sym("CARTAD",  0xbffe), new Sym("CARTAD+1",0xbfff),

	new Sym("M0PF",  0xd000), new Sym("HPOSP0",0xd000), new Sym("M1PF",  0xd001), new Sym("HPOSP1",0xd001),
	new Sym("M2PF",  0xd002), new Sym("HPOSP2",0xd002), new Sym("M3PF",  0xd003), new Sym("HPOSP3",0xd003),
	new Sym("P0PF",  0xd004), new Sym("HPOSM0",0xd004), new Sym("P1PF",  0xd005), new Sym("HPOSM1",0xd005),
	new Sym("P2PF",  0xd006), new Sym("HPOSM2",0xd006), new Sym("P3PF",  0xd007), new Sym("HPOSM3",0xd007),
	new Sym("M0PL",  0xd008), new Sym("SIZEP0",0xd008), new Sym("M1PL",  0xd009), new Sym("SIZEP1",0xd009),
	new Sym("M2PL",  0xd00a), new Sym("SIZEP2",0xd00a), new Sym("M3PL",  0xd00b), new Sym("SIZEP3",0xd00b),
	new Sym("P0PL",  0xd00c), new Sym("SIZEM", 0xd00c), new Sym("P1PL",  0xd00d), new Sym("GRAFP0",0xd00d),
	new Sym("P2PL",  0xd00e), new Sym("GRAFP1",0xd00e), new Sym("P3PL",  0xd00f), new Sym("GRAFP2",0xd00f),
	new Sym("TRIG0", 0xd010), new Sym("GRAFP3",0xd010), new Sym("TRIG1", 0xd011), new Sym("GRAFM", 0xd011),
	new Sym("TRIG2", 0xd012), new Sym("COLPM0",0xd012), new Sym("TRIG3", 0xd013), new Sym("COLPM1",0xd013),
	new Sym("PAL",   0xd014), new Sym("COLPM2",0xd014), new Sym("COLPM3",0xd015), new Sym("COLPF0",0xd016),
	new Sym("COLPF1",0xd017),
	new Sym("COLPF2",0xd018), new Sym("COLPF3",0xd019), new Sym("COLBK", 0xd01a), new Sym("PRIOR", 0xd01b),
	new Sym("VDELAY",0xd01c), new Sym("GRACTL",0xd01d), new Sym("HITCLR",0xd01e), new Sym("CONSOL",0xd01f),

	new Sym("PBI",   0xd100), /* PBI 1-254 */    new Sym("PDVI",  0xd1ff), new Sym("PDVS",  0xd1ff),

	new Sym("POT0",  0xd200), new Sym("AUDF1", 0xd200), new Sym("POT1",  0xd201), new Sym("AUDC1", 0xd201),
	new Sym("POT2",  0xd202), new Sym("AUDF2", 0xd202), new Sym("POT3",  0xd203), new Sym("AUDC2", 0xd203),
	new Sym("POT4",  0xd204), new Sym("AUDF3", 0xd204), new Sym("POT5",  0xd205), new Sym("AUDC3", 0xd205),
	new Sym("POT6",  0xd206), new Sym("AUDF4", 0xd206), new Sym("POT7",  0xd207), new Sym("AUDC4", 0xd207),
	new Sym("ALLPOT",0xd208), new Sym("AUDCTL",0xd208), new Sym("KBCODE",0xd209), new Sym("STIMER",0xd209),
	new Sym("RANDOM",0xd20a), new Sym("SKRES", 0xd20a), new Sym("POTGO", 0xd20b),
	new Sym("SERIN", 0xd20d), new Sym("SEROUT",0xd20d), new Sym("IRQST", 0xd20e), new Sym("IRQEN", 0xd20e),
	new Sym("SKSTAT",0xd20f), new Sym("SKCTL", 0xd20f),

	new Sym("PORTA", 0xd300), new Sym("PORTB", 0xd301), new Sym("PACTL", 0xd302), new Sym("PBCTL", 0xd303),

	new Sym("DMACTL",0xd400), new Sym("CHACTL",0xd401), new Sym("DLISTL",0xd402), new Sym("DLISTH",0xd403),
	new Sym("HSCROL",0xd404), new Sym("VSCROL",0xd405), new Sym("PMBASE",0xd407), new Sym("CHBASE",0xd409),
	new Sym("WSYNC", 0xd40a), new Sym("VCOUNT",0xd40b), new Sym("PENH",  0xd40c), new Sym("PENV",  0xd40d),
	new Sym("NMIEN", 0xd40e), new Sym("NMIST", 0xd40f), new Sym("NMIRES",0xd40f),

	new Sym("PBIRAM",0xd600), /* PMIRAM 1-255 */

	new Sym("AFP",   0xd800),

	new Sym("PDID1",   0xd803), new Sym("PDIOV", 0xd805), new Sym("PDIOV+1",0xd806),new Sym("PDIRQV", 0xd808),
	new Sym("PDIRQV+1",0xd809), new Sym("PDID2", 0xd80b), new Sym("PDVV", 0xd80d),

	new Sym("FASC",  0xd8e6), new Sym("IFP",   0xd9aa), new Sym("FPI",   0xd9d2),
	new Sym("ZFR0",  0xda44), new Sym("ZF1",   0xda46), new Sym("FSUB",  0xda60), new Sym("FADD",  0xda66),
	new Sym("FMUL",  0xdadb), new Sym("FDIV",  0xdb28), new Sym("PLYEVL",0xdd40), new Sym("FLD0R", 0xdd89),
	new Sym("FLD0P", 0xdd8d), new Sym("FLD1R", 0xdd98), new Sym("FLD1P", 0xdd9c), new Sym("FST0R", 0xdda7),
	new Sym("FST0P", 0xddab), new Sym("FMOVE", 0xddb6), new Sym("EXP",   0xddc0), new Sym("EXP10", 0xddcc),
	new Sym("LOG",   0xdecd), new Sym("LOG10", 0xded1),

	new Sym("EDITRV",0xe400), new Sym("SCRENV",0xe410), new Sym("KEYBDV",0xe420), new Sym("PRINTV",0xe430),
	new Sym("CASETV",0xe440),

	new Sym("DINITV",0xe450), new Sym("DSKINV",0xe453), new Sym("CIOV",  0xe456), new Sym("SIOV",  0xe459),
	new Sym("SETVBV",0xe45c), new Sym("SYSVBV",0xe45f), new Sym("XITVBV",0xe462), new Sym("SIOINV",0xe465),
	new Sym("SENDEV",0xe468), new Sym("INTINV",0xe46b), new Sym("CIOINV",0xe46e), new Sym("BLKBDV",0xe471),
	new Sym("WARMSV",0xe474), new Sym("COLDSV",0xe477), new Sym("RBLOKV",0xe47a), new Sym("CSOPIV",0xe47d),
	new Sym("PUPDIV",0xe480), new Sym("SLFTSV",0xe483), new Sym("PHENTV",0xe486), new Sym("PHUNLV",0xe489),
	new Sym("PHINIV",0xe48c), new Sym("GPDVV", 0xe48f)
};

public static Sym symtableBuiltin5200[] = {
	new Sym("POKMSK", 0x0000), new Sym("RTCLOKH", 0x0001), new Sym("RTCLOKL",0x0002), new Sym("CRITIC", 0x0003),
	new Sym("ATRACT", 0x0004), new Sym("SDLSTL", 0x0005), new Sym("SDLSTH", 0x0006), new Sym("SDMCTL", 0x0007),
	new Sym("PCOLR0", 0x0008), new Sym("PCOLR1", 0x0009), new Sym("PCOLR2", 0x000a), new Sym("PCOLR3", 0x000b),
	new Sym("COLOR0", 0x000c), new Sym("COLOR1", 0x000d), new Sym("COLOR2", 0x000e), new Sym("COLOR3", 0x000f),
	new Sym("COLOR4", 0x0010), new Sym("PADDL0", 0x0011), new Sym("PADDL1", 0x0012), new Sym("PADDL2", 0x0013),
	new Sym("PADDL3", 0x0014), new Sym("PADDL4", 0x0015), new Sym("PADDL5", 0x0016), new Sym("PADDL6", 0x0017),
	new Sym("PADDL7", 0x0018),

	new Sym("VIMIRQ", 0x0200), new Sym("VIMIRQ+1", 0x0201), new Sym("VVBLKI", 0x0202), new Sym("VVBLKI+1", 0x0203),
	new Sym("VVBLKD", 0x0204), new Sym("VVBLKD+1", 0x0205), new Sym("VDSLST", 0x0206), new Sym("VDSLST+1", 0x0207),
	new Sym("VKEYBD", 0x0208), new Sym("VKEYBD+1", 0x0209), new Sym("VKPD",   0x020a), new Sym("VKPD+1",   0x020b),
	new Sym("BRKKY",  0x020c), new Sym("BRKKY+1",  0x020d), new Sym("VBREAK", 0x020e), new Sym("VBREAK+1", 0x020f),
	new Sym("VSERIN", 0x0210), new Sym("VSERIN+1", 0x0211), new Sym("VSEROR", 0x0212), new Sym("VSEROR+1", 0x0213),
	new Sym("VSEROC", 0x0214), new Sym("VSEROC+1", 0x0215), new Sym("VTIMR1", 0x0216), new Sym("VTIMR1+1", 0x0217),
	new Sym("VTIMR2", 0x0218), new Sym("VTIMR2+1", 0x0219), new Sym("VTIMR4", 0x021a), new Sym("VTIMR4+1", 0x021b),

	new Sym("M0PF",  0xc000), new Sym("HPOSP0",0xc000), new Sym("M1PF",  0xc001), new Sym("HPOSP1",0xc001),
	new Sym("M2PF",  0xc002), new Sym("HPOSP2",0xc002), new Sym("M3PF",  0xc003), new Sym("HPOSP3",0xc003),
	new Sym("P0PF",  0xc004), new Sym("HPOSM0",0xc004), new Sym("P1PF",  0xc005), new Sym("HPOSM1",0xc005),
	new Sym("P2PF",  0xc006), new Sym("HPOSM2",0xc006), new Sym("P3PF",  0xc007), new Sym("HPOSM3",0xc007),
	new Sym("M0PL",  0xc008), new Sym("SIZEP0",0xc008), new Sym("M1PL",  0xc009), new Sym("SIZEP1",0xc009),
	new Sym("M2PL",  0xc00a), new Sym("SIZEP2",0xc00a), new Sym("M3PL",  0xc00b), new Sym("SIZEP3",0xc00b),
	new Sym("P0PL",  0xc00c), new Sym("SIZEM", 0xc00c), new Sym("P1PL",  0xc00d), new Sym("GRAFP0",0xc00d),
	new Sym("P2PL",  0xc00e), new Sym("GRAFP1",0xc00e), new Sym("P3PL",  0xc00f), new Sym("GRAFP2",0xc00f),
	new Sym("TRIG0", 0xc010), new Sym("GRAFP3",0xc010), new Sym("TRIG1", 0xc011), new Sym("GRAFM", 0xc011),
	new Sym("TRIG2", 0xc012), new Sym("COLPM0",0xc012), new Sym("TRIG3", 0xc013), new Sym("COLPM1",0xc013),
	new Sym("PAL",   0xc014), new Sym("COLPM2",0xc014), new Sym("COLPM3",0xc015), new Sym("COLPF0",0xc016),
	new Sym("COLPF1",0xc017),
	new Sym("COLPF2",0xc018), new Sym("COLPF3",0xc019), new Sym("COLBK", 0xc01a), new Sym("PRIOR", 0xc01b),
	new Sym("VDELAY",0xc01c), new Sym("GRACTL",0xc01d), new Sym("HITCLR",0xc01e), new Sym("CONSOL",0xc01f),
	new Sym("DMACTL",0xd400), new Sym("CHACTL",0xd401), new Sym("DLISTL",0xd402), new Sym("DLISTH",0xd403),
	new Sym("HSCROL",0xd404), new Sym("VSCROL",0xd405), new Sym("PMBASE",0xd407), new Sym("CHBASE",0xd409),
	new Sym("WSYNC", 0xd40a), new Sym("VCOUNT",0xd40b), new Sym("PENH",  0xd40c), new Sym("PENV",  0xd40d),
	new Sym("NMIEN", 0xd40e), new Sym("NMIST", 0xd40f), new Sym("NMIRES",0xd40f),

	new Sym("POT0",  0xe800), new Sym("AUDF1", 0xe800), new Sym("POT1",  0xe801), new Sym("AUDC1", 0xe801),
	new Sym("POT2",  0xe802), new Sym("AUDF2", 0xe802), new Sym("POT3",  0xe803), new Sym("AUDC2", 0xe803),
	new Sym("POT4",  0xe804), new Sym("AUDF3", 0xe804), new Sym("POT5",  0xe805), new Sym("AUDC3", 0xe805),
	new Sym("POT6",  0xe806), new Sym("AUDF4", 0xe806), new Sym("POT7",  0xe807), new Sym("AUDC4", 0xe807),
	new Sym("ALLPOT",0xe808), new Sym("AUDCTL",0xe808), new Sym("KBCODE",0xe809), new Sym("STIMER",0xe809),
	new Sym("RANDOM",0xe80a), new Sym("SKRES", 0xe80a), new Sym("POTGO", 0xe80b),
	new Sym("SERIN", 0xe80d), new Sym("SEROUT",0xe80d), new Sym("IRQST", 0xe80e), new Sym("IRQEN", 0xe80e),
	new Sym("SKSTAT",0xe80f), new Sym("SKCTL", 0xe80f)
};


}
