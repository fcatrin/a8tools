# a8disasm - Atari 8-bit Disassembler

This disassembler is designed to help doing reverse-engineering and patches for Atari 8-bit games and programs.
The disassembler create MADS compatible .asm files ready to assemble, and also a full disassembled version with all the original byte codes and addresses.

The recommended workflow is this:
1. run a8disasm
2. review the code
3. create / edit a .map file with labels, comments, and more
4. go to step 1

As you add more info to the .map file you will get a better and more documented version of the .asm file generated.

## Creating overlay patches
To easily create patches without destroying the original code, you can use an "overlay" technique,
instead of modifying the asm code that is generated automatically, you add new XEX blocks with your changes.
Using this method you can always add more info to your .map file and update all the asm files without 
losing any of your changes to the code.

This is an example of creating overlaid patches: Run the disassembler against a XEX file and you will get
a main "asm" file with every XEX block separated as different asm files.

For example

```java -jar a8disasm.jar game.xex
```

will creeate a game.asm file containing

```  icl "game.inc"
icl "game_block1.asm"
icl "game.block2.asm"
icl "game.block3.asm"
```  

Then you can copy that main asm file and insert your own patches


```  icl "game.inc"
icl "game_block1.asm"
icl "game.block2.asm"
icl "game.better_graphics.asm"
icl "game.block3.asm"
```  

Every time you run the disassembler again, only the original blocks will be updated and your patch will be kept untouched.

## reverse engineering
For effective reverse engineering you can create a game.map file with additional instructions for the disassembler, like adding labels, comments, mark sections of .byte areas, display lists, etc.

This is a short sample game.map file

```block 1
dlst B741 ; display list section
byte B75E ; byte section

block 2
word 0 ; probably an execution address

; some labels
label 3357 BIGPLANE_WIDE
label 3369 BIGPLANE_NARROW
label 4020 DLI_1
label 4075 DLI_2

; some comments
rem 4020 set playfield color at the top of the screen
rem 4075 set plane position and size
```

If you run the disassembler again, all this info will be used to improve the code.

The .map file is a list of command. Comments start with ";" and all addresses are specified as hexadecimal.

Commands are:

```block n   : This section applies only to XEX block n
code addr : Code section starts at addr (every block defaults to code at the beginning)
byte addr : .byte section starts at addr
word addr : .word section starts at addr
dlst addr : Display List starts at addr
label addr : Label for this addr
rem addr comment : Comment for this addr
```
Only *label* and *rem* are global, everything else is block based

## disasm code

Also an alternate version of the dissassembled code is generated preserving all the address and original bytes
so you can use it to look for specific byte sequences and more. This is a short example:

```B734: BD 5E B7  lda $B75E,x    ; L_B75E
B737: 9D 16 D0  sta $D016,x    ; COLPF0
B73A: 9D C4 02  sta $02C4,x    ; COLOR0
B73D: CA        dex
B73E: 10 F4     bpl $B734      ; L_B734
B740: 60        rts
B741: 70        BYTE $70 ; DL 8 scanlines
B742: 70        BYTE $70 ; DL 8 scanlines
B743: 70        BYTE $70 ; DL 8 scanlines
```
I recommend you to see a real example of the [generated code for Screaming Wings]
(https://github.com/fcatrin/a8tools/tree/master/patches/screaming_wings/disasm)

Franco Catrin

