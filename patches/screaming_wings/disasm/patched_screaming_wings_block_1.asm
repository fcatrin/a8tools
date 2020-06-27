
; BLOCK 1 patched_screaming_wings.xex

                 org $B700

                 lda #$80
                 sta DOSVEC
                 sta DOSINI
                 lda #$43
                 sta DOSVEC+1
                 sta DOSINI+1
                 clc
                 ldx #$01
                 stx BOOT
                 dex
                 stx COLDST
L_B715           lda L_B75E+4,x
                 sbc #$6F
                 sta L_B75E+4,x
                 inx
                 cpx #$64
                 bne L_B715
                 lda #$41
                 sta DLISTL
                 sta SDLSTL
                 lda #$B7
                 sta DLISTH
                 sta SDLSTH
                 ldx #$03
L_B734           lda L_B75E,x
                 sta COLPF0,x
                 sta COLOR0,x
                 dex
                 bpl L_B734
                 rts
L_B741           .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $47 ; DL LMS Antic Mode 7
                 .word L_B75E+4
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $04 ; DL Antic Mode 4
                 .byte $70 ; DL 8 scanlines
                 .byte $04 ; DL Antic Mode 4
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $04 ; DL Antic Mode 4
                 .byte $41 ; DL JMP
                 .word L_B741
L_B75E           .byte $0E, $08, $0E, $94, $70, $70, $63, $53
                 .byte $62, $55, $51, $5D, $59, $5E, $57, $70
                 .byte $70, $67, $59, $5E, $57, $63, $70, $70
                 .byte $70, $70, $70, $70, $70, $70, $70, $70
                 .byte $70, $70, $70, $93, $E2, $D1, $D3, $DB
                 .byte $D5, $D4, $70, $D2, $E9, $8A, $70, $9B
                 .byte $D9, $DC, $E2, $DF, $E9, $70, $70, $70
                 .byte $70, $70, $70, $70, $70, $70, $70, $70
                 .byte $70, $70, $70, $70, $70, $70, $70, $70
                 .byte $70, $70, $70, $70, $78, $A0, $79, $81
                 .byte $89, $88, $86, $70, $9E, $7E, $91, $7E
                 .byte $A0, $7E, $9F, $7E, $70, $70, $70, $70
                 .byte $70, $70, $70, $70, $70, $70, $70, $70
                 .byte $26, $72, $6F, $6D, $00, $34, $68, $65
                 .byte $00, $24, $61, $69, $6C, $79, $00, $30
                 .byte $6C, $61, $6E, $65, $74, $00, $22, $22
                 .byte $33, $00, $08, $17, $11, $16, $09, $00
                 .byte $18, $19, $15, $0D, $10, $15, $10, $18
