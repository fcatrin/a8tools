
; BLOCK 1 koala_loader.xex

                 org $06FE

/* 06FE: 55       */                   .byte $55, $55
/* 0700: 4C 3F 09 */                   jmp START
/* 0703: A0 00    */  RETRY_MSG?       ldy #$00
/* 0705: A9 01    */                   lda #$01
/* 0707: 8D 1E 02 */                   sta CDTMV4
/* 070A: AD 1E 02 */  L_070A           lda CDTMV4
/* 070D: D0 FB    */                   bne L_070A
/* 070F: A9 01    */                   lda #$01
/* 0711: 8D 1E 02 */                   sta CDTMV4
/* 0714: A9 00    */                   lda #$00
/* 0716: 99 61 08 */                   sta DLIST3,y
/* 0719: C8       */                   iny
/* 071A: C0 0C    */                   cpy #$0C
/* 071C: D0 EC    */                   bne L_070A
/* 071E: A0 00    */                   ldy #$00
/* 0720: AD 1E 02 */  L_0720           lda CDTMV4
/* 0723: D0 FB    */                   bne L_0720
/* 0725: A9 01    */                   lda #$01
/* 0727: 8D 1E 02 */                   sta CDTMV4
/* 072A: A9 70    */                   lda #$70
/* 072C: 99 61 08 */                   sta DLIST3,y
/* 072F: C8       */                   iny
/* 0730: C0 0C    */                   cpy #$0C
/* 0732: D0 EC    */                   bne L_0720
/* 0734: A9 42    */                   lda #$42|            ; Set Screen 2
/* 0736: 8D 30 02 */                   sta SDLSTL
/* 0739: A9 08    */                   lda #$08
/* 073B: 8D 31 02 */                   sta SDLSTH
/* 073E: A0 0C    */                   ldy #$0C
/* 0740: AD 1E 02 */  L_0740           lda CDTMV4
/* 0743: D0 FB    */                   bne L_0740
/* 0745: A9 01    */                   lda #$01
/* 0747: 8D 1E 02 */                   sta CDTMV4
/* 074A: A9 70    */                   lda #$70
/* 074C: 99 42 08 */                   sta DLIST2,y
/* 074F: C8       */                   iny
/* 0750: C0 15    */                   cpy #$15
/* 0752: D0 EC    */                   bne L_0740
/* 0754: A0 0C    */                   ldy #$0C
/* 0756: AD 1E 02 */  L_0756           lda CDTMV4
/* 0759: D0 FB    */                   bne L_0756
/* 075B: A9 01    */                   lda #$01
/* 075D: 8D 1E 02 */                   sta CDTMV4
/* 0760: A9 00    */                   lda #$00
/* 0762: 99 42 08 */                   sta DLIST2,y
/* 0765: C8       */                   iny
/* 0766: C0 15    */                   cpy #$15
/* 0768: D0 EC    */                   bne L_0756
/* 076A: A9 61    */                   lda #$61|            ; Restore Screen 3
/* 076C: 8D 30 02 */                   sta SDLSTL
/* 076F: A9 08    */                   lda #$08
/* 0771: 8D 31 02 */                   sta SDLSTH
/* 0774: 60       */                   rts
/* 0775: 70       */  DLIST1           .byte $70 ; DL 8 scanlines| ; Display list 1
/* 0776: 70       */                   .byte $70 ; DL 8 scanlines
/* 0777: 70       */                   .byte $70 ; DL 8 scanlines
/* 0778: 70       */                   .byte $70 ; DL 8 scanlines
/* 0779: 46       */                   .byte $46 ; DL LMS Antic Mode 6
/* 077A: 8E 07    */                   .word L_078E
/* 077C: 70       */                   .byte $70 ; DL 8 scanlines
/* 077D: 70       */                   .byte $70 ; DL 8 scanlines
/* 077E: 02       */                   .byte $02 ; DL Antic Mode 2
/* 077F: 02       */                   .byte $02 ; DL Antic Mode 2
/* 0780: 02       */                   .byte $02 ; DL Antic Mode 2
/* 0781: 70       */                   .byte $70 ; DL 8 scanlines
/* 0782: 70       */                   .byte $70 ; DL 8 scanlines
/* 0783: 70       */                   .byte $70 ; DL 8 scanlines
/* 0784: 70       */                   .byte $70 ; DL 8 scanlines
/* 0785: 06       */                   .byte $06 ; DL Antic Mode 6
/* 0786: 70       */                   .byte $70 ; DL 8 scanlines
/* 0787: 70       */                   .byte $70 ; DL 8 scanlines
/* 0788: 70       */                   .byte $70 ; DL 8 scanlines
/* 0789: 70       */                   .byte $70 ; DL 8 scanlines
/* 078A: 06       */                   .byte $06 ; DL Antic Mode 6
/* 078B: 41       */                   .byte $41 ; DL JMP
/* 078C: 75 07    */                   .word DLIST1
/* 078E: 00       */  L_078E           .byte $00, $00, $00, $00, $00, $30, $32, $29| ; Screen text 1
/* 0796: 33       */                   .byte $33, $2D, $21, $00, $33, $2F, $26, $34
/* 079E: 00       */                   .byte $00, $00, $00, $00, $51, $52, $57, $52
/* 07A6: 52       */                   .byte $52, $52, $52, $52, $52, $52, $52, $52
/* 07AE: 52       */                   .byte $52, $52, $52, $52, $57, $52, $52, $52
/* 07B6: 52       */                   .byte $52, $52, $52, $52, $52, $57, $52, $52
/* 07BE: 52       */                   .byte $52, $52, $52, $52, $52, $52, $52, $52
/* 07C6: 52       */                   .byte $52, $57, $52, $45, $7C, $00, $7C, $46
/* 07CE: 47       */                   .byte $47, $46, $47, $46, $47, $46, $47, $46
/* 07D6: 47       */                   .byte $47, $46, $47, $46, $7C, $30, $32, $25
/* 07DE: 33       */                   .byte $33, $25, $2E, $34, $21, $7C, $47, $46
/* 07E6: 47       */                   .byte $47, $46, $47, $46, $47, $46, $47, $46
/* 07EE: 47       */                   .byte $47, $7C, $00, $7C, $5A, $52, $58, $52
/* 07F6: 52       */                   .byte $52, $52, $52, $52, $52, $52, $52, $52
/* 07FE: 52       */                   .byte $52, $52, $52, $52, $58, $52, $52, $52
/* 0806: 52       */                   .byte $52, $52, $52, $52, $52, $58, $52, $52
/* 080E: 52       */                   .byte $52, $52, $52, $52, $52, $52, $52, $52
/* 0816: 52       */                   .byte $52, $58, $52, $43, $00, $00, $00, $00
/* 081E: 00       */                   .byte $00, $00, $00, $00, $2B, $2F, $21, $2C
/* 0826: 21       */                   .byte $21, $00, $00, $00, $00, $00, $00, $00
/* 082E: 00       */                   .byte $00, $26, $21, $2C, $34, $21, $2E, $00
/* 0836: 10       */  L_0836           .byte $10, $16, $16, $00, $22, $2C, $2F, $31
/* 083E: 35       */                   .byte $35, $25, $33, $00
/* 0842: 70       */  DLIST2           .byte $70 ; DL 8 scanlines| ; Display list 2
/* 0843: 70       */                   .byte $70 ; DL 8 scanlines
/* 0844: 70       */                   .byte $70 ; DL 8 scanlines
/* 0845: 70       */                   .byte $70 ; DL 8 scanlines
/* 0846: 70       */                   .byte $70 ; DL 8 scanlines
/* 0847: 70       */                   .byte $70 ; DL 8 scanlines
/* 0848: 70       */                   .byte $70 ; DL 8 scanlines
/* 0849: 70       */                   .byte $70 ; DL 8 scanlines
/* 084A: 70       */                   .byte $70 ; DL 8 scanlines
/* 084B: 70       */                   .byte $70 ; DL 8 scanlines
/* 084C: 70       */                   .byte $70 ; DL 8 scanlines
/* 084D: 70       */                   .byte $70 ; DL 8 scanlines
/* 084E: 00       */                   .byte $00 ; DL 1 scanline
/* 084F: 00       */                   .byte $00 ; DL 1 scanline
/* 0850: 00       */                   .byte $00 ; DL 1 scanline
/* 0851: 00       */                   .byte $00 ; DL 1 scanline
/* 0852: 00       */                   .byte $00 ; DL 1 scanline
/* 0853: 00       */                   .byte $00 ; DL 1 scanline
/* 0854: 00       */                   .byte $00 ; DL 1 scanline
/* 0855: 00       */                   .byte $00 ; DL 1 scanline
/* 0856: 00       */                   .byte $00 ; DL 1 scanline
/* 0857: 42       */                   .byte $42 ; DL LMS Antic Mode 2
/* 0858: 77 08    */                   .word L_0877
/* 085A: 02       */                   .byte $02 ; DL Antic Mode 2
/* 085B: 02       */                   .byte $02 ; DL Antic Mode 2
/* 085C: 02       */                   .byte $02 ; DL Antic Mode 2
/* 085D: 02       */                   .byte $02 ; DL Antic Mode 2
/* 085E: 41       */                   .byte $41 ; DL JMP
/* 085F: 42 08    */                   .word DLIST2
/* 0861: 70       */  DLIST3           .byte $70 ; DL 8 scanlines| ; Display list 3
/* 0862: 70       */                   .byte $70 ; DL 8 scanlines
/* 0863: 70       */                   .byte $70 ; DL 8 scanlines
/* 0864: 70       */                   .byte $70 ; DL 8 scanlines
/* 0865: 70       */                   .byte $70 ; DL 8 scanlines
/* 0866: 70       */                   .byte $70 ; DL 8 scanlines
/* 0867: 70       */                   .byte $70 ; DL 8 scanlines
/* 0868: 70       */                   .byte $70 ; DL 8 scanlines
/* 0869: 70       */                   .byte $70 ; DL 8 scanlines
/* 086A: 70       */                   .byte $70 ; DL 8 scanlines
/* 086B: 70       */                   .byte $70 ; DL 8 scanlines
/* 086C: 70       */                   .byte $70 ; DL 8 scanlines
/* 086D: 42       */                   .byte $42 ; DL LMS Antic Mode 2
/* 086E: 77 08    */                   .word L_0877
/* 0870: 02       */                   .byte $02 ; DL Antic Mode 2
/* 0871: 02       */                   .byte $02 ; DL Antic Mode 2
/* 0872: 02       */                   .byte $02 ; DL Antic Mode 2
/* 0873: 02       */                   .byte $02 ; DL Antic Mode 2
/* 0874: 41       */                   .byte $41 ; DL JMP
/* 0875: 61 08    */                   .word DLIST3
/* 0877: 51       */  L_0877           .byte $51, $52, $52, $52, $52, $52, $52, $52| ; Screen text 3
/* 087F: 52       */                   .byte $52, $52, $52, $52, $52, $52, $52, $52
/* 0887: 52       */                   .byte $52, $52, $52, $52, $52, $52, $52, $52
/* 088F: 52       */                   .byte $52, $52, $52, $52, $52, $52, $52, $52
/* 0897: 52       */                   .byte $52, $52, $52, $52, $52, $52, $52, $45
/* 089F: 7C       */                   .byte $7C, $33, $75, $00, $70, $72, $6F, $67
/* 08A7: 72       */                   .byte $72, $61, $6D, $61, $00, $73, $65, $00
/* 08AF: 64       */                   .byte $64, $65, $74, $75, $76, $6F, $0E, $00
/* 08B7: 70       */                   .byte $70, $6F, $72, $66, $61, $76, $6F, $72
/* 08BF: 00       */                   .byte $00, $00, $00, $00, $00, $00, $00, $7C
/* 08C7: 7C       */                   .byte $7C, $72, $65, $74, $72, $6F, $63, $65
/* 08CF: 64       */                   .byte $64, $61, $00, $6C, $61, $00, $63, $69
/* 08D7: 6E       */                   .byte $6E, $74, $61, $00, $13, $00, $76, $75
/* 08DF: 65       */                   .byte $65, $6C, $74, $61, $73, $00, $79, $00
/* 08E7: 70       */                   .byte $70, $75, $6C, $73, $65, $00, $00, $7C
/* 08EF: 7C       */                   .byte $7C, $6C, $61, $00, $74, $65, $63, $6C
/* 08F7: 61       */                   .byte $61, $00, $80, $F3, $F4, $E1, $F2, $F4
/* 08FF: 80       */                   .byte $80, $0E, $00, $21, $34, $34, $25, $00
/* 0907: 30       */                   .byte $30, $72, $69, $73, $6D, $61, $00, $33
/* 090F: 6F       */                   .byte $6F, $66, $74, $0E, $00, $00, $00, $7C
/* 0917: 5A       */                   .byte $5A, $52, $52, $52, $52, $52, $52, $52
/* 091F: 52       */                   .byte $52, $52, $52, $52, $52, $52, $52, $52
/* 0927: 52       */                   .byte $52, $52, $52, $52, $52, $52, $52, $52
/* 092F: 52       */                   .byte $52, $52, $52, $52, $52, $52, $52, $52
/* 0937: 52       */                   .byte $52, $52, $52, $52, $52, $52, $52, $43
/* 093F: A9 02    */  START            lda #$02
/* 0941: 85 09    */                   sta BOOT
/* 0943: A9 00    */                   lda #$00
/* 0945: 8D 44 02 */                   sta COLDST
/* 0948: 85 D2    */                   sta CHUNK_START_ADDR+3
/* 094A: 20 53 09 */                   jsr SCREEN_SAVE
/* 094D: 20 9F 09 */                   jsr SCREEN_SET
/* 0950: 4C E0 09 */                   jmp L_09E0
/* 0953: A2 00    */  SCREEN_SAVE      ldx #$00
/* 0955: BD C4 02 */  L_0955           lda COLOR0,x
/* 0958: 9D 32 0C */                   sta SAVED_COLOR,x
/* 095B: E8       */                   inx
/* 095C: E0 05    */                   cpx #$05
/* 095E: D0 F5    */                   bne L_0955
/* 0960: AD 30 02 */                   lda SDLSTL
/* 0963: 8D 37 0C */                   sta SAVED_DL_L
/* 0966: AD 31 02 */                   lda SDLSTH
/* 0969: 8D 38 0C */                   sta SAVED_DL_H
/* 096C: AD 2F 02 */                   lda SDMCTL
/* 096F: 8D 39 0C */                   sta SAVED_DMA
/* 0972: AD F4 02 */                   lda CHBAS
/* 0975: 8D 3A 0C */                   sta SAVED_CHBAS
/* 0978: 60       */                   rts
/* 0979: A2 00    */  SCREEN_RESTORE   ldx #$00
/* 097B: BD 32 0C */  L_097B           lda SAVED_COLOR,x
/* 097E: 9D C4 02 */                   sta COLOR0,x
/* 0981: E8       */                   inx
/* 0982: E0 05    */                   cpx #$05
/* 0984: D0 F5    */                   bne L_097B
/* 0986: AD 37 0C */                   lda SAVED_DL_L
/* 0989: 8D 30 02 */                   sta SDLSTL
/* 098C: AD 38 0C */                   lda SAVED_DL_H
/* 098F: 8D 31 02 */                   sta SDLSTH
/* 0992: AD 39 0C */                   lda SAVED_DMA
/* 0995: 8D 2F 02 */                   sta SDMCTL
/* 0998: AD 3A 0C */                   lda SAVED_CHBAS
/* 099B: 8D F4 02 */                   sta CHBAS
/* 099E: 60       */                   rts
/* 099F: A9 75    */  SCREEN_SET       lda #$75
/* 09A1: 8D 30 02 */                   sta SDLSTL
/* 09A4: 8D 02 D4 */                   sta DLISTL
/* 09A7: A9 07    */                   lda #$07
/* 09A9: 8D 31 02 */                   sta SDLSTH
/* 09AC: 8D 03 D4 */                   sta DLISTH
/* 09AF: A2 00    */                   ldx #$00
/* 09B1: A9 22    */                   lda #$22
/* 09B3: 8D 2F 02 */                   sta SDMCTL
/* 09B6: 8D 00 D4 */                   sta DMACTL
/* 09B9: A9 E0    */                   lda #$E0
/* 09BB: 8D F4 02 */                   sta CHBAS
/* 09BE: 8D 09 D4 */                   sta CHBASE
/* 09C1: BD D0 09 */  L_09C1           lda L_09D0,x
/* 09C4: 9D C4 02 */                   sta COLOR0,x
/* 09C7: 9D 16 D0 */                   sta COLPF0,x
/* 09CA: E8       */                   inx
/* 09CB: E0 05    */                   cpx #$05
/* 09CD: D0 F2    */                   bne L_09C1
/* 09CF: 60       */                   rts
/* 09D0: FF       */  L_09D0           .byte $FF
/* 09D1: 0F       */                   .byte $0F
/* 09D2: 92       */                   .byte $92
/* 09D3: 00       */                   brk
/* 09D4: 00       */                   brk
/* 09D5: A9 61    */  SET_SCREEN_3     lda #$61
/* 09D7: 8D 30 02 */                   sta SDLSTL
/* 09DA: A9 08    */                   lda #$08
/* 09DC: 8D 31 02 */                   sta SDLSTH
/* 09DF: 60       */                   rts
/* 09E0: A9 2E    */  L_09E0           lda #$2E|            ; Write 0C2E at (DST_PTR) and (CHUNK_START_ADDR)
/* 09E2: 85 CB    */                   sta DST_PTR
/* 09E4: 85 CF    */                   sta CHUNK_START_ADDR
/* 09E6: A9 0C    */                   lda #$0C
/* 09E8: 85 CC    */                   sta DST_PTR+1
/* 09EA: 85 D0    */                   sta CHUNK_START_ADDR+1
/* 09EC: A9 04    */                   lda #$04|            ; Write 0004 at (CHUNK_SIZE)
/* 09EE: 85 CD    */                   sta CHUNK_SIZE
/* 09F0: A9 00    */                   lda #$00
/* 09F2: 85 CE    */                   sta CHUNK_SIZE+1
/* 09F4: A9 00    */  NEXT_BLOCK       lda #$00
/* 09F6: 8D 3A 0D */                   sta $0D3A
/* 09F9: A9 60    */                   lda #$60|            ; Load Block at $0xC3B size $100
/* 09FB: 8D 00 03 */                   sta DDEVIC
/* 09FE: A9 00    */                   lda #$00
/* 0A00: 8D 01 03 */                   sta DUNIT
/* 0A03: A9 52    */                   lda #$52
/* 0A05: 8D 02 03 */                   sta DCOMND
/* 0A08: A9 40    */                   lda #$40
/* 0A0A: 8D 03 03 */                   sta DSTATS
/* 0A0D: A9 3B    */                   lda #$3B
/* 0A0F: 8D 04 03 */                   sta DBUFLO
/* 0A12: A9 0C    */                   lda #$0C
/* 0A14: 8D 05 03 */                   sta DBUFHI
/* 0A17: A9 35    */                   lda #$35
/* 0A19: 8D 06 03 */                   sta DTIMLO
/* 0A1C: A9 00    */                   lda #$00
/* 0A1E: 8D 08 03 */                   sta DBYTLO
/* 0A21: A9 01    */                   lda #$01
/* 0A23: 8D 09 03 */                   sta DBYTHI
/* 0A26: A9 FF    */                   lda #$FF
/* 0A28: 8D 0B 03 */                   sta DAUX2
/* 0A2B: 20 59 E4 */                   jsr SIOV
/* 0A2E: C0 01    */                   cpy #$01
/* 0A30: F0 03    */                   beq L_0A35
/* 0A32: 4C 49 0A */                   jmp L_0A49
/* 0A35: AD 3A 0D */  L_0A35           lda $0D3A
/* 0A38: C9 3B    */                   cmp #$3B
/* 0A3A: D0 0D    */                   bne L_0A49
/* 0A3C: AD 3D 0C */                   lda BUFFER_BLOCK_NUM
/* 0A3F: CD 2C 0C */                   cmp BLOCK_NUM
/* 0A42: F0 68    */                   beq L_0AAC
/* 0A44: 90 03    */                   bcc L_0A49
/* 0A46: 4C F4 09 */                   jmp NEXT_BLOCK
/* 0A49: 20 D5 09 */  L_0A49           jsr SET_SCREEN_3
/* 0A4C: A9 3C    */                   lda #$3C|            ; Stop motor
/* 0A4E: 8D 02 D3 */                   sta PACTL
/* 0A51: A9 FD    */                   lda #$FD
/* 0A53: 20 B0 F2 */                   jsr $F2B0
/* 0A56: 20 03 07 */                   jsr RETRY_MSG?
/* 0A59: AD 1F D0 */  L_0A59           lda CONSOL|          ; Is START pressed?
/* 0A5C: C9 06    */                   cmp #$06
/* 0A5E: D0 F9    */                   bne L_0A59
/* 0A60: AD 1F D0 */  L_0A60           lda CONSOL
/* 0A63: C9 07    */                   cmp #$07
/* 0A65: D0 F9    */                   bne L_0A60
/* 0A67: A9 08    */                   lda #$08
/* 0A69: 8D 1F D0 */                   sta CONSOL
/* 0A6C: 78       */                   sei
/* 0A6D: A9 34    */                   lda #$34
/* 0A6F: 8D 02 D3 */                   sta PACTL
/* 0A72: A9 FF    */                   lda #$FF
/* 0A74: 85 13    */                   sta RTCLOK+1
/* 0A76: A9 C0    */                   lda #$C0
/* 0A78: 85 14    */                   sta RTCLOK+2
/* 0A7A: A5 13    */  L_0A7A           lda RTCLOK+1
/* 0A7C: D0 FC    */                   bne L_0A7A
/* 0A7E: AD 0F D2 */  L_0A7E           lda SKSTAT
/* 0A81: C9 7F    */                   cmp #$7F
/* 0A83: D0 F9    */                   bne L_0A7E
/* 0A85: A9 F0    */                   lda #$F0
/* 0A87: 8D 2D 0C */                   sta BLOCK_NUM+1
/* 0A8A: AD 0F D2 */  L_0A8A           lda SKSTAT
/* 0A8D: C9 7F    */                   cmp #$7F
/* 0A8F: D0 ED    */                   bne L_0A7E
/* 0A91: CE 2D 0C */                   dec BLOCK_NUM+1
/* 0A94: AD 2D 0C */                   lda BLOCK_NUM+1
/* 0A97: C9 00    */                   cmp #$00
/* 0A99: D0 EF    */                   bne L_0A8A
/* 0A9B: A9 13    */                   lda #$13|            ; Reset keyboard
/* 0A9D: 8D 32 02 */                   sta SSKCTL
/* 0AA0: A9 FF    */                   lda #$FF
/* 0AA2: 8D 0F D2 */                   sta SKCTL
/* 0AA5: 58       */                   cli
/* 0AA6: 20 9F 09 */                   jsr SCREEN_SET
/* 0AA9: 4C F4 09 */                   jmp NEXT_BLOCK
/* 0AAC: AD 38 08 */  L_0AAC           lda L_0836+2
/* 0AAF: C9 10    */                   cmp #$10
/* 0AB1: F0 06    */                   beq L_0AB9
/* 0AB3: CE 38 08 */                   dec L_0836+2
/* 0AB6: 4C D3 0A */                   jmp L_0AD3
/* 0AB9: A9 19    */  L_0AB9           lda #$19
/* 0ABB: 8D 38 08 */                   sta L_0836+2
/* 0ABE: AD 37 08 */                   lda L_0836+1
/* 0AC1: C9 10    */                   cmp #$10
/* 0AC3: F0 06    */                   beq L_0ACB
/* 0AC5: CE 37 08 */                   dec L_0836+1
/* 0AC8: 4C D3 0A */                   jmp L_0AD3
/* 0ACB: A9 19    */  L_0ACB           lda #$19
/* 0ACD: 8D 37 08 */                   sta L_0836+1
/* 0AD0: CE 36 08 */                   dec L_0836
/* 0AD3: A0 03    */  L_0AD3           ldy #$03
/* 0AD5: CE 2C 0C */                   dec BLOCK_NUM
/* 0AD8: A2 00    */  L_0AD8           ldx #$00
/* 0ADA: 86 4D    */                   stx ATRACT
/* 0ADC: B9 3B 0C */                   lda BUFFER,y
/* 0ADF: 81 CB    */                   sta (DST_PTR,x)
/* 0AE1: C8       */                   iny
/* 0AE2: C6 CD    */                   dec CHUNK_SIZE
/* 0AE4: A5 CD    */                   lda CHUNK_SIZE
/* 0AE6: C9 FF    */                   cmp #$FF
/* 0AE8: D0 02    */                   bne L_0AEC
/* 0AEA: C6 CE    */                   dec CHUNK_SIZE+1
/* 0AEC: E6 CB    */  L_0AEC           inc DST_PTR
/* 0AEE: A5 CB    */                   lda DST_PTR
/* 0AF0: D0 02    */                   bne L_0AF4
/* 0AF2: E6 CC    */                   inc DST_PTR+1
/* 0AF4: A5 CD    */  L_0AF4           lda CHUNK_SIZE
/* 0AF6: D0 04    */                   bne L_0AFC
/* 0AF8: A5 CE    */                   lda CHUNK_SIZE+1
/* 0AFA: F0 03    */                   beq NEXT_CHUNK
/* 0AFC: 4C D2 0B */  L_0AFC           jmp L_0BD2
/* 0AFF: A5 CF    */  NEXT_CHUNK       lda CHUNK_START_ADDR
/* 0B01: C9 2E    */                   cmp #$2E
/* 0B03: D0 36    */                   bne L_0B3B
/* 0B05: A5 D0    */                   lda CHUNK_START_ADDR+1
/* 0B07: C9 0C    */                   cmp #$0C
/* 0B09: D0 30    */                   bne L_0B3B
/* 0B0B: AD 2E 0C */                   lda LOADED_ADDR_START
/* 0B0E: C9 FF    */                   cmp #$FF
/* 0B10: D0 26    */                   bne L_0B38
/* 0B12: AD 2F 0C */                   lda LOADED_ADDR_START+1
/* 0B15: C9 FF    */                   cmp #$FF
/* 0B17: D0 1F    */                   bne L_0B38
/* 0B19: A9 02    */                   lda #$02
/* 0B1B: 85 CD    */                   sta CHUNK_SIZE
/* 0B1D: A9 00    */                   lda #$00
/* 0B1F: 85 CE    */                   sta CHUNK_SIZE+1
/* 0B21: AD 30 0C */                   lda LOADED_ADDR_END
/* 0B24: 8D 2E 0C */                   sta LOADED_ADDR_START
/* 0B27: AD 31 0C */                   lda LOADED_ADDR_END+1
/* 0B2A: 8D 2F 0C */                   sta LOADED_ADDR_START+1
/* 0B2D: A9 30    */                   lda #$30
/* 0B2F: 85 CB    */                   sta DST_PTR
/* 0B31: A9 0C    */                   lda #$0C
/* 0B33: 85 CC    */                   sta DST_PTR+1
/* 0B35: 4C D2 0B */                   jmp L_0BD2
/* 0B38: 4C A8 0B */  L_0B38           jmp L_0BA8
/* 0B3B: A5 D0    */  L_0B3B           lda CHUNK_START_ADDR+1
/* 0B3D: C9 02    */                   cmp #$02
/* 0B3F: D0 3A    */                   bne L_0B7B
/* 0B41: A5 CF    */                   lda CHUNK_START_ADDR
/* 0B43: C9 E0    */                   cmp #$E0
/* 0B45: D0 04    */                   bne L_0B4B
/* 0B47: A9 01    */                   lda #$01
/* 0B49: 85 D2    */                   sta CHUNK_START_ADDR+3
/* 0B4B: A5 CF    */  L_0B4B           lda CHUNK_START_ADDR
/* 0B4D: C9 E2    */                   cmp #$E2
/* 0B4F: F0 07    */                   beq L_0B58
/* 0B51: AD 30 0C */                   lda LOADED_ADDR_END
/* 0B54: C9 E3    */                   cmp #$E3
/* 0B56: D0 23    */                   bne L_0B7B
/* 0B58: 84 D1    */  L_0B58           sty CHUNK_START_ADDR+2
/* 0B5A: 20 79 09 */                   jsr SCREEN_RESTORE
/* 0B5D: 20 6B 0B */                   jsr EXEC_CHUNK
/* 0B60: 20 53 09 */                   jsr SCREEN_SAVE
/* 0B63: 20 9F 09 */                   jsr SCREEN_SET
/* 0B66: A4 D1    */                   ldy CHUNK_START_ADDR+2
/* 0B68: 4C 7B 0B */                   jmp L_0B7B
/* 0B6B: AD E3 02 */  EXEC_CHUNK       lda INITAD+1
/* 0B6E: C9 01    */                   cmp #$01
/* 0B70: F0 08    */                   beq L_0B7A
/* 0B72: A9 3C    */                   lda #$3C|            ; Stop motor
/* 0B74: 8D 02 D3 */                   sta PACTL
/* 0B77: 6C E2 02 */                   jmp (INITAD)
/* 0B7A: 60       */  L_0B7A           rts
/* 0B7B: 20 00 0C */  L_0B7B           jsr L_0C00
/* 0B7E: A9 04    */                   lda #$04
/* 0B80: 85 CD    */                   sta CHUNK_SIZE
/* 0B82: A9 00    */                   lda #$00
/* 0B84: 85 CE    */                   sta CHUNK_SIZE+1
/* 0B86: A9 2E    */                   lda #$2E
/* 0B88: 85 CB    */                   sta DST_PTR
/* 0B8A: 85 CF    */                   sta CHUNK_START_ADDR
/* 0B8C: A9 0C    */                   lda #$0C
/* 0B8E: 85 CC    */                   sta DST_PTR+1
/* 0B90: 85 D0    */                   sta CHUNK_START_ADDR+1
/* 0B92: A5 D2    */                   lda CHUNK_START_ADDR+3
/* 0B94: D0 3C    */                   bne L_0BD2
/* 0B96: A5 CF    */                   lda CHUNK_START_ADDR
/* 0B98: 8D E0 02 */                   sta RUNAD
/* 0B9B: A5 CF    */                   lda CHUNK_START_ADDR
/* 0B9D: 8D E0 02 */                   sta RUNAD
/* 0BA0: A5 D0    */                   lda CHUNK_START_ADDR+1
/* 0BA2: 8D E1 02 */                   sta RUNAD+1
/* 0BA5: 4C D2 0B */                   jmp L_0BD2
/* 0BA8: 20 EC 0B */  L_0BA8           jsr L_0BEC
/* 0BAB: AD 2E 0C */                   lda LOADED_ADDR_START
/* 0BAE: 85 CB    */                   sta DST_PTR
/* 0BB0: 85 CF    */                   sta CHUNK_START_ADDR
/* 0BB2: AD 2F 0C */                   lda LOADED_ADDR_START+1
/* 0BB5: 85 CC    */                   sta DST_PTR+1
/* 0BB7: 85 D0    */                   sta CHUNK_START_ADDR+1
/* 0BB9: 38       */                   sec
/* 0BBA: AD 30 0C */                   lda LOADED_ADDR_END
/* 0BBD: ED 2E 0C */                   sbc LOADED_ADDR_START
/* 0BC0: 85 CD    */                   sta CHUNK_SIZE
/* 0BC2: AD 31 0C */                   lda LOADED_ADDR_END+1
/* 0BC5: ED 2F 0C */                   sbc LOADED_ADDR_START+1
/* 0BC8: 85 CE    */                   sta CHUNK_SIZE+1
/* 0BCA: E6 CD    */                   inc CHUNK_SIZE
/* 0BCC: A5 CD    */                   lda CHUNK_SIZE
/* 0BCE: D0 02    */                   bne L_0BD2
/* 0BD0: E6 CE    */                   inc CHUNK_SIZE+1
/* 0BD2: C0 FF    */  L_0BD2           cpy #$FF
/* 0BD4: F0 03    */                   beq L_0BD9
/* 0BD6: 4C D8 0A */                   jmp L_0AD8
/* 0BD9: AD 2C 0C */  L_0BD9           lda BLOCK_NUM
/* 0BDC: F0 03    */                   beq L_0BE1
/* 0BDE: 4C F4 09 */                   jmp NEXT_BLOCK
/* 0BE1: A9 3C    */  L_0BE1           lda #$3C|            ; Stop motor
/* 0BE3: 8D 02 D3 */                   sta PACTL
/* 0BE6: 20 79 09 */                   jsr SCREEN_RESTORE
/* 0BE9: 6C E0 02 */                   jmp (RUNAD)|         ; Execute
/* 0BEC: AD 2E 0C */  L_0BEC           lda LOADED_ADDR_START| ; Check if there are more blocks (FEFE = End)
/* 0BEF: C9 FE    */                   cmp #$FE
/* 0BF1: D0 0C    */                   bne L_0BFF
/* 0BF3: AD 2F 0C */                   lda LOADED_ADDR_START+1
/* 0BF6: C9 FE    */                   cmp #$FE
/* 0BF8: D0 05    */                   bne L_0BFF
/* 0BFA: 68       */                   pla
/* 0BFB: 68       */                   pla
/* 0BFC: 4C E1 0B */                   jmp L_0BE1
/* 0BFF: 60       */  L_0BFF           rts
/* 0C00: A2 00    */  L_0C00           ldx #$00
/* 0C02: BD C4 02 */  L_0C02           lda COLOR0,x
/* 0C05: DD D0 09 */                   cmp L_09D0,x
/* 0C08: F0 07    */                   beq L_0C11
/* 0C0A: 20 53 09 */  L_0C0A           jsr SCREEN_SAVE
/* 0C0D: 20 9F 09 */                   jsr SCREEN_SET
/* 0C10: 60       */                   rts
/* 0C11: E8       */  L_0C11           inx
/* 0C12: E0 05    */                   cpx #$05
/* 0C14: D0 EC    */                   bne L_0C02
/* 0C16: AD 30 02 */                   lda SDLSTL
/* 0C19: C9 75    */                   cmp #$75
/* 0C1B: D0 ED    */                   bne L_0C0A
/* 0C1D: AD 31 02 */                   lda SDLSTH
/* 0C20: C9 07    */                   cmp #$07
/* 0C22: D0 E6    */                   bne L_0C0A
/* 0C24: AD 2F 02 */                   lda SDMCTL
/* 0C27: C9 22    */                   cmp #$22
/* 0C29: D0 DF    */                   bne L_0C0A
/* 0C2B: 60       */                   rts
/* 0C2C: 42       */  BLOCK_NUM        .byte $42
