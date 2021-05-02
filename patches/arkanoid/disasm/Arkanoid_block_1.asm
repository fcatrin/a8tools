
; BLOCK 1 Arkanoid.xex

                 org $1000

                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_1008           .byte $00, $00, $00, $00, $01, $01, $05, $07
                 .byte $00, $00, $05, $55, $70, $E0, $80, $80
                 .byte $00, $55, $EF, $55, $EA, $00, $00, $00
                 .byte $00, $55, $FF, $55, $AA, $00, $00, $00
                 .byte $40, $14, $5E, $57, $19, $00, $00, $00
                 .byte $05, $01, $60, $58, $55, $91, $00, $00
                 .byte $58, $75, $6E, $5A, $16, $05, $00, $00
                 .byte $78, $78, $78, $79, $79, $79, $79, $79
                 .byte $00, $00, $00, $40, $50, $D4, $E4, $64
                 .byte $10, $54, $65, $99, $A6, $A9, $AA, $7A
                 .byte $06, $1E, $19, $2C, $34, $14, $10, $00
                 .byte $00, $00, $00, $02, $02, $02, $02, $02
                 .byte $25, $95, $A5, $16, $59, $2A, $5A, $2A
                 .byte $55, $55, $99, $66, $AB, $EF, $BF, $FF
                 .byte $55, $55, $99, $66, $A9, $FE, $FF, $FE
                 .byte $54, $55, $96, $65, $95, $A9, $A5, $A9
                 .byte $00, $00, $00, $80, $80, $60, $20, $60
                 .byte $68, $58, $5E, $1E, $1E, $16, $17, $07
                 .byte $00, $00, $00, $00, $02, $02, $02, $02
                 .byte $00, $2A, $AA, $A0, $80, $85, $15, $14
                 .byte $00, $A8, $AA, $0A, $02, $52, $54, $14
                 .byte $00, $00, $00, $00, $80, $80, $80, $80
                 .byte $00, $AA, $AA, $00, $00, $55, $55, $00
                 .byte $01, $01, $01, $01, $00, $00, $00, $00
                 .byte $28, $2A, $4A, $40, $50, $55, $15, $00
                 .byte $28, $A8, $A1, $01, $05, $55, $54, $00
                 .byte $40, $40, $40, $40, $00, $00, $00, $00
                 .byte $00, $AA, $AA, $00, $00, $55, $55, $00
                 .byte $68, $58, $1E, $1E, $1E, $16, $17, $07
                 .byte $3D, $29, $14, $00, $00, $40, $40, $44
                 .byte $11, $44, $51, $94, $66, $99, $66, $AA
                 .byte $15, $51, $16, $59, $66, $99, $6A, $AA
                 .byte $05, $55, $66, $99, $66, $AA, $AE, $BA
                 .byte $99, $46, $51, $44, $25, $0A, $00, $00
                 .byte $AE, $6B, $AE, $6B, $9E, $67, $55, $05
                 .byte $EE, $BB, $FF, $FF, $FF, $BE, $6B, $55
                 .byte $EE, $BB, $FF, $FF, $FF, $FF, $A9, $55
                 .byte $EA, $B9, $EA, $B9, $EA, $99, $55, $50
                 .byte $66, $91, $55, $92, $48, $A0, $00, $00
                 .byte $3D, $29, $14, $00, $05, $15, $5D, $74
                 .byte $00, $00, $00, $00, $01, $01, $05, $07
                 .byte $00, $00, $00, $05, $57, $BE, $6A, $50
                 .byte $00, $05, $57, $7D, $EA, $95, $54, $00
                 .byte $05, $56, $F9, $56, $A9, $50, $05, $00
                 .byte $94, $54, $51, $45, $16, $69, $80, $00
                 .byte $02, $02, $02, $02, $02, $02, $02, $02
                 .byte $14, $14, $14, $14, $14, $14, $14, $14
                 .byte $28, $28, $28, $28, $28, $28, $28, $28
                 .byte $40, $40, $40, $40, $40, $40, $40, $40
                 .byte $0C, $09, $0C, $09, $0C, $09, $0C, $0C
                 .byte $5A, $6A, $5A, $6A, $45, $15, $56, $68
                 .byte $BF, $FF, $BF, $FE, $AA, $6A, $A0, $00
                 .byte $FF, $FE, $FF, $AE, $AA, $A9, $0A, $00
                 .byte $A5, $A9, $A5, $A9, $51, $54, $95, $29
                 .byte $60, $A0, $A0, $20, $20, $20, $A0, $60
                 .byte $29, $29, $14, $00, $80, $68, $94, $40
                 .byte $A9, $69, $99, $64, $59, $18, $15, $04
                 .byte $A6, $56, $A6, $A6, $55, $52, $01, $56
                 .byte $19, $00, $15, $00, $22, $19, $06, $01
                 .byte $00, $25, $11, $19, $00, $11, $11, $19
                 .byte $08, $00, $01, $00, $05, $05, $00, $08
                 .byte $00, $00, $9A, $00, $9A, $9A, $00, $00
                 .byte $00, $00, $50, $00, $64, $64, $00, $00
                 .byte $00, $00, $00, $00, $00, $14, $29, $15
                 .byte $04, $15, $18, $59, $64, $99, $69, $A9
                 .byte $56, $05, $55, $56, $A5, $56, $A6, $A6
                 .byte $19, $00, $15, $00, $22, $19, $06, $01
                 .byte $A2, $A2, $00, $80, $80, $00, $00, $00
                 .byte $A0, $08, $02, $02, $0A, $0A, $20, $0A
                 .byte $AA, $AA, $A8, $A8, $A2, $00, $A2, $A2
                 .byte $0A, $20, $8A, $8A, $A2, $A2, $08, $A0
                 .byte $29, $29, $14, $00, $80, $68, $94, $40
                 .byte $A8, $63, $8C, $43, $4F, $0F, $13, $04
                 .byte $00, $C5, $0F, $C5, $C5, $CF, $C5, $00
                 .byte $00, $55, $FF, $55, $55, $FF, $55, $00
                 .byte $00, $53, $F0, $53, $53, $F3, $53, $00
                 .byte $29, $C9, $31, $C0, $F1, $F0, $C5, $04
                 .byte $A6, $56, $A6, $A6, $55, $52, $01, $56
                 .byte $19, $00, $15, $00, $22, $19, $06, $01
                 .byte $06, $06, $06, $01, $01, $01, $00, $00
                 .byte $46, $51, $51, $91, $91, $94, $64, $64
                 .byte $0D, $0A, $0E, $08, $0C, $28, $2A, $25
                 .byte $80, $00, $00, $00, $00, $A8, $56, $55
                 .byte $00, $00, $00, $01, $05, $06, $85, $66
                 .byte $00, $00, $00, $40, $50, $50, $92, $99
                 .byte $02, $00, $00, $00, $00, $2A, $95, $55
                 .byte $60, $A0, $A0, $20, $20, $20, $A8, $68
                 .byte $0C, $58, $47, $93, $47, $91, $66, $94
                 .byte $31, $35, $32, $35, $32, $35, $32, $35
                 .byte $66, $9A, $BB, $AF, $BF, $AF, $BF, $AF
                 .byte $E5, $E7, $E6, $D7, $DA, $57, $5B, $60
                 .byte $DA, $9B, $DB, $97, $F5, $E5, $E5, $09
                 .byte $66, $B9, $EA, $FD, $FA, $FE, $FA, $FE
                 .byte $5C, $5C, $4C, $9C, $4C, $9C, $4C, $9C
                 .byte $04, $11, $11, $04, $11, $04, $11, $11
                 .byte $3D, $29, $14, $00, $05, $15, $5D, $75
                 .byte $31, $36, $35, $35, $3C, $09, $09, $0B
                 .byte $BF, $AF, $BF, $AF, $7F, $AB, $6F, $1B
                 .byte $40, $80, $00, $00, $00, $07, $7B, $6E
                 .byte $01, $02, $00, $00, $00, $D0, $6D, $B9
                 .byte $FA, $FE, $FA, $FE, $E9, $E6, $99, $A5
                 .byte $4C, $9C, $5C, $4C, $20, $60, $20, $A0
                 .byte $64, $55, $15, $05, $00, $14, $29, $15
                 .byte $54, $90, $D0, $D0, $90, $90, $90, $54
                 .byte $02, $02, $02, $02, $0A, $0A, $09, $09
                 .byte $6A, $1E, $56, $1A, $46, $55, $86, $96
L_1358           .byte $A9, $A0, $80, $80, $A0, $E0, $E4, $BA
                 .byte $6A, $0A, $02, $02, $0A, $0B, $1B, $AC
                 .byte $99, $64, $91, $64, $95, $62, $96, $92
                 .byte $80, $C0, $80, $C0, $A0, $70, $60, $70
                 .byte $64, $55, $15, $05, $00, $14, $29, $15
                 .byte $0D, $0D, $39, $38, $35, $34, $35, $34
                 .byte $A5, $66, $A9, $6E, $AA, $6F, $AB, $6F
                 .byte $9B, $66, $A4, $69, $5A, $96, $EA, $BA
                 .byte $E6, $9A, $19, $6A, $A9, $96, $AA, $AB
                 .byte $56, $5A, $59, $6A, $B9, $AA, $F9, $EA
                 .byte $70, $70, $70, $6C, $1C, $5C, $1C, $5C
                 .byte $3D, $29, $14, $00, $05, $15, $5D, $74
                 .byte $25, $08, $09, $02, $02, $01, $09, $28
                 .byte $5F, $6B, $59, $55, $99, $86, $21, $44
                 .byte $EE, $FF, $FF, $BF, $AE, $6A, $99, $65
                 .byte $EF, $FF, $FF, $FE, $E9, $E6, $99, $66
                 .byte $F9, $E5, $94, $65, $91, $56, $48, $11
                 .byte $18, $60, $60, $80, $80, $40, $60, $68
                 .byte $64, $55, $15, $05, $00, $14, $29, $15
                 .byte $54, $90, $D0, $D0, $90, $90, $90, $54
                 .byte $21, $25, $D1, $C6, $95, $46, $D9, $46
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_1408           .byte $AC, $EB, $A6, $E9, $FA, $BE, $6A, $9A
                 .byte $3A, $EA, $9B, $6A, $AB, $BE, $AA, $A9
                 .byte $BD, $EC, $AB, $EA, $FA, $BE, $6A, $9A
                 .byte $6E, $3A, $FB, $AA, $AB, $BE, $AA, $A9
                 .byte $A9, $A0, $80, $A8, $B6, $AD, $AC, $AB
                 .byte $6A, $0A, $02, $1A, $AA, $BA, $3A, $EA
                 .byte $A9, $A0, $80, $80, $A0, $A4, $BA, $AD
                 .byte $6A, $0A, $02, $02, $0A, $1A, $AE, $7E
                 .byte $A9, $A0, $80, $80, $A0, $E0, $E4, $BA
                 .byte $6A, $0A, $02, $02, $0A, $0B, $1B, $AC
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $81, $82, $83, $84, $85, $86, $87, $88
                 .byte $89, $C0, $8B, $0C, $0D, $0E, $0F, $10
                 .byte $11, $92, $9D, $9E, $80, $32, $33, $34
                 .byte $35, $36, $37, $80, $D0, $D1, $80, $52
                 .byte $53, $54, $55, $56, $57, $80, $80, $EF
                 .byte $80, $59, $5A, $5B, $5C, $5D, $5E, $80
                 .byte $80, $E0, $80, $61, $62, $63, $64, $65
                 .byte $66, $80, $80, $E8, $80, $69, $6A, $6B
                 .byte $6C, $6D, $6E, $80, $80, $EF, $80, $70
                 .byte $71, $72, $73, $74, $75, $80, $80, $F6
                 .byte $80, $77, $78, $79, $7A, $7B, $7C, $80
                 .byte $80, $FE, $80, $7F, $0A, $1F, $20, $21
                 .byte $58, $80, $80, $EF, $80, $22, $23, $24
                 .byte $25, $26, $27, $80, $80, $A8, $80, $80
                 .byte $80, $80, $80, $A9, $AA, $AB, $AC, $AD
L_14D8           .byte $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
L_14E0           .byte $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
                 .byte $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
                 .byte $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
L_14F8           .byte $0C, $0C, $0C, $0C, $00, $00, $00, $00
                 jsr L_4018
L_1503           ldx #$00
L_1505           lda L_1408,x
                 sta L_1358,x
                 inx
                 cpx #$10
                 bne L_1505
                 ldx #$D8
                 ldy #$14
                 stx L_3C1B+7
                 sty L_3C23
                 lda #$10
                 sta CHBAS
                 ldx #$E6
                 ldy #$EA
                 lda #$EC
                 stx COLOR0
                 sty COLOR1
                 sta COLOR2
                 ldx #$2E
                 ldy #$9B
                 stx FRE+4
                 sty FRE+5
                 lda #$38
                 sta FPTR2+1
                 ldx #$00
                 stx FPTR2
                 stx FLPTR
                 stx FLPTR+1
L_1542           ldy #$00
L_1544           lda FPTR2+1
                 sta (FRE+4),y
                 inc FPTR2+1
                 iny
                 inc FLPTR
                 lda FLPTR
                 cmp #$04
                 bne L_1544
                 lda #$00
                 sta FLPTR
                 tya
                 clc
                 adc #$24
                 tay
                 inx
                 cpx #$03
                 bne L_1544
                 tya
                 sec
                 sbc #$74
                 tay
                 ldx #$00
                 inc FPTR2
                 lda #$38
                 sta FPTR2+1
                 lda FPTR2
                 cmp #$07
                 bne L_1544
                 lda #$00
                 sta FPTR2
                 lda FRE+4
                 clc
                 adc #$78
                 sta FRE+4
                 bcc L_1583
                 inc FRE+5
L_1583           inc FLPTR+1
                 lda FLPTR+1
                 cmp #$09
                 bne L_1542
                 ldx #$2E
                 ldy #$9B
                 stx FRE+4
                 sty FRE+5
                 ldx #$00
L_1595           ldy #$00
                 lda #$0C
                 sta L_14D8,x
                 sta L_14E0,x
                 lda #$2E
                 sta (FRE+4),y
                 iny
                 lda #$2F
                 sta (FRE+4),y
                 ldy #$1C
                 lda #$30
                 sta (FRE+4),y
                 iny
                 lda #$31
                 sta (FRE+4),y
                 lda FRE+4
                 clc
                 adc #$28
                 sta FRE+4
                 bcc L_15BE
                 inc FRE+5
L_15BE           inx
                 cpx #$1A
                 bne L_1595
                 ldx #$01
                 ldy #$9C
                 stx FRE+4
                 sty FRE+5
                 ldx #$60
                 ldy #$14
                 stx FRE+2
                 .byte $80, $DD
                 ldx #$00
L_15D5           ldy #$00
L_15D7           lda (FRE+2),y
                 sta (FRE+4),y
                 iny
                 cpy #$0A
                 bne L_15D7
                 lda FRE+4
                 clc
                 adc #$28
                 sta FRE+4
                 bcc L_15EB
                 inc FRE+5
L_15EB           lda FRE+2
                 clc
                 adc #$0A
                 sta FRE+2
                 bcc L_15F6
                 inc FRE+3
L_15F6           inx
                 cpx #$0C
                 bne L_15D5
                 ldx #$00
L_15FD           lda #$17
                 sta $9B08,x
                 lda #$1C
                 sta $9F40,x
                 inx
                 cpx #$1A
                 bne L_15FD
                 lda #$2A
                 sta L_16FD+3
                 lda #$00
                 sta L_16FD+4
                 sta L_1A66
                 sta L_1A67
                 sta L_1B00
                 sta L_1B00+1
                 lda #$08
                 sta L_16FD+5
                 lda #$14
                 sta L_16FD+6
                 ldx #$18
                 stx $9F3E
                 inx
                 stx $9F3F
                 lda #$12
                 sta L_443F+1
                 lda #$10
                 sta L_4452+1
                 ldx L_453E+1
                 ldy L_453E+2
                 stx L_16B2+1
                 sty L_16B2+2
                 jsr L_43D5
                 ldx #$00
                 txa
                 sta L_16FD+7
                 sta L_1705
                 sta L_1705+1
L_165A           sta L_1765+4,x
                 inx
                 cpx #$1A
                 bne L_165A
                 ldx #$00
                 ldy #$38
L_1666           tya
                 sta L_43FD+3,x
                 sta L_43FD+7,x
                 inx
                 iny
                 cpx #$04
                 bne L_1666
                 lda #$00
                 sta $5070
                 lda #$B4
                 sta $5071
                 jmp $5113
L_1680           jsr L_2C03+5
                 jmp $5003
                 bvs L_16D7+1
                 lda #$B4
                 sta $5071
                 jmp L_1CE4
L_1690           lda L_3C23+1
                 cmp #$1C
                 bmi L_16A4
                 jsr L_46FD
                 lda L_3C23+1
                 cmp #$2A
                 bmi L_16A4
                 jsr L_1783
L_16A4           lda L_3C23+2
                 beq L_1690
                 jsr L_44CB
                 jsr L_44F1
                 jsr L_46FD
L_16B2           jsr $FFFF
                 jsr L_1CD0
                 jsr L_1680
                 lda L_1A66
                 cmp #$10
                 bpl L_16DA
                 lda L_4607+4
                 cmp #$6A
                 bcs L_16F0
                 ldx #$00
L_16CB           lda L_1775,x
                 cmp #$60
                 bpl L_16DD
L_16D2           inx
                 cpx #$03
                 bne L_16CB
L_16D7           jmp L_1690
L_16DA           jmp L_1BA0
L_16DD           lda L_4405+4
                 clc
                 adc #$2E
                 cmp L_176D+5,x
                 bcs L_16D2
                 clc
                 adc #$18
                 cmp L_176D+5,x
                 bcc L_16D2
L_16F0           lda #$8A
                 sta L_443F+1
                 lda #$88
                 sta L_4452+1
                 jmp L_3000
L_16FD           .byte $00, $00, $00, $00, $00, $58, $14, $00
L_1705           .byte $00, $00, $30, $78, $FC, $7C, $90, $68
                 .byte $30, $00, $60, $F8, $BC, $7C, $5C, $20
                 .byte $1C, $00, $60, $F0, $B8, $58, $3C, $2C
                 .byte $10, $00, $C0, $60, $F0, $30, $58, $2C
                 .byte $10, $00, $00, $80, $C0, $60, $30, $18
L_172D           .byte $08, $00, $00, $80, $60, $B0, $58, $28
                 .byte $14, $08, $00, $60, $90, $60, $F0, $78
                 .byte $78, $30, $60, $90, $68, $F0, $F8, $F0
L_1745           .byte $70, $00, $12, $11, $10, $0F, $0E, $0D
                 .byte $0A, $0A, $0A, $09, $08, $07, $06, $05
                 .byte $01, $03, $02, $01, $00, $01, $02, $03
                 .byte $04, $05, $06, $07, $08, $09, $0A, $0B
L_1765           .byte $0C, $0D, $0E, $0F, $81, $00, $00, $7F
L_176D           .byte $00, $00, $01, $00, $00, $81, $00, $00
L_1775           .byte $3E, $00, $00, $01, $00, $00, $15, $00
L_177D           .byte $00, $05, $00, $00, $01, $02
L_1783           ldx L_177D+4
                 lda #$01
                 sta GPRIOR
                 lda L_176D+2,x
                 beq L_17A1
                 cmp #$02
                 beq L_1797
                 jmp L_18C8
L_1797           ldy #$00
L_1799           iny
                 cpy #$1E
                 bne L_1799
                 jmp L_1992
L_17A1           lda L_16FD+5
                 cmp #$58
                 beq L_17F4
                 lda L_16FD+3
                 beq L_17B3
                 dec L_16FD+3
                 jmp L_1992
L_17B3           lda L_176D+2
                 bne L_17F4
                 inc L_16FD+4
                 lda L_16FD+4
                 cmp #$14
                 bcs L_17C8
                 inc L_16FD+4
                 jmp L_1992
L_17C8           lda #$00
                 sta L_16FD+4
                 lda L_16FD+5
                 sta FRE+2
                 lda L_16FD+6
                 sta FRE+3
                 ldy #$00
L_17D9           lda (FRE+2),y
                 sta L_1358,y
                 iny
                 cpy #$10
                 bne L_17D9
                 lda L_16FD+5
                 clc
                 adc #$10
                 sta L_16FD+5
                 bcc L_17F1
                 inc L_16FD+6
L_17F1           jmp L_1992
L_17F4           cpx #$00
                 beq L_1809
                 stx L_177D+5
                 dex
                 lda L_1775,x
                 cmp #$41
                 bcs L_1806
                 jmp L_1797
L_1806           ldx L_177D+5
L_1809           lda L_4405+4
                 lsr
                 lsr
                 stx L_177D+5
                 tax
                 lda L_1745+2,x
                 sta FRE+4
                 sta FRE+2
                 stx FRE+3
                 ldx L_177D+5
                 lda #$0B
                 sta FRE+5
                 lda #$01
                 sta L_1765+4,x
                 sta L_1765+7,x
                 sta L_176D+2,x
                 lda FRE+4
                 bne L_183E
                 lda #$7F
                 sta L_1765+7,x
                 lda #$01
                 sta L_1765+4,x
                 jmp L_1877
L_183E           cmp FRE+5
                 bpl L_185A
L_1842           lda FRE+5
                 sec
                 sbc FRE+4
                 sta FRE+5
                 inc L_1765+7,x
                 lda FRE+5
                 cmp FRE+4
                 bpl L_1842
                 lda #$01
                 sta L_1765+4,x
                 jmp L_1877
L_185A           lda FRE+5
                 sta L_177D+5
L_185F           lda L_177D+5
                 clc
                 adc FRE+5
                 sta L_177D+5
                 inc L_1765+4,x
                 lda FRE+4
                 cmp L_177D+5
                 bpl L_185F
                 lda #$01
                 sta L_1765+7,x
L_1877           lda FRE+3
                 cmp #$12
                 bmi L_1885
                 lda L_1765+4,x
                 ora #$80
                 sta L_1765+4,x
L_1885           lda #$80
                 ldy #$6E
                 sta FRE+2
                 sty FRE+3
                 txa
                 tay
L_188F           cpy #$00
                 beq L_18A2
                 lda FRE+2
                 clc
                 adc #$80
                 sta FRE+2
                 bcc L_189E
                 inc FRE+3
L_189E           dey
                 jmp L_188F
L_18A2           lda #$81
                 sta HPOSP1,x
                 sta L_176D+5,x
                 lda #$0F
                 sta PCOLR1,x
                 ldy #$34
                 tya
                 sta L_1775,x
                 ldx #$00
L_18B7           lda L_1705+2,x
                 sta (FRE+2),y
                 iny
                 inx
                 cpx #$08
                 bne L_18B7
                 ldx L_177D+5
                 jmp L_1992
L_18C8           lda #$80
                 ldy #$6E
                 sta FRE+2
                 sty FRE+3
                 txa
                 tay
L_18D2           cpy #$00
                 beq L_18E5
                 lda FRE+2
                 clc
                 adc #$80
                 sta FRE+2
                 bcc L_18E1
                 inc FRE+3
L_18E1           dey
                 jmp L_18D2
L_18E5           lda L_1775,x
                 cmp #$6A
                 bcc L_1916
                 lda #$00
                 sta L_176D+5,x
                 sta HPOSP1,x
                 inc L_176D+2,x
                 lda L_1775,x
                 tay
                 stx L_177D+5
                 ldx #$00
                 txa
L_1901           sta (FRE+2),y
                 iny
                 inx
                 cpx #$08
                 bne L_1901
                 ldx L_177D+5
                 cpx #$02
                 beq L_1913
                 jmp L_1992
L_1913           jmp L_19E8
L_1916           lda L_1765+7,x
                 cmp L_1775+6,x
                 beq L_1926
                 bmi L_1926
                 inc L_1775+6,x
                 jmp L_193B
L_1926           lda #$00
                 sta L_1775+6,x
                 lda L_1765+4,x
                 and #$80
                 bne L_1938
                 dec L_176D+5,x
                 jmp L_193B
L_1938           inc L_176D+5,x
L_193B           lda L_176D+5,x
                 sta HPOSP1,x
                 lda L_1765+4,x
                 and #$7F
                 beq L_1955
                 cmp L_1775+3,x
                 beq L_1955
                 bmi L_1955
                 inc L_1775+3,x
                 jmp L_1992
L_1955           lda #$00
                 sta L_1775+3,x
                 lda L_1775,x
                 tay
                 lda #$00
                 sta (FRE+2),y
                 iny
                 tya
                 sta L_1775,x
                 stx L_177D+5
                 lda #$07
                 sta L_1987+1
                 lda #$17
                 sta L_1987+2
                 lda L_177D+1,x
                 clc
                 asl
                 asl
                 asl
                 clc
                 adc L_1987+1
                 sta L_1987+1
                 jsr L_1A13
                 ldx #$00
L_1987           lda L_172D+2,x
                 sta (FRE+2),y
                 iny
                 inx
                 cpx #$08
                 bne L_1987
L_1992           ldx L_177D+4
                 cpx #$02
                 bne L_199B
                 ldx #$FF
L_199B           inx
                 stx L_177D+4
                 lda L_176D+4
                 bne L_19A5
L_19A4           rts
L_19A5           lda L_1775+2
                 cmp #$3A
                 bcc L_19A4
                 lda L_16FD+5
                 cmp #$08
                 beq L_19A4
                 lda L_16FD+4
                 cmp #$0F
                 bcs L_19BE
                 inc L_16FD+4
                 rts
L_19BE           lda #$00
                 sta L_16FD+4
                 lda L_16FD+5
                 sec
                 sbc #$10
                 sta L_16FD+5
                 bcs L_19D1
                 dec L_16FD+6
L_19D1           lda L_16FD+5
                 sta FRE+2
                 lda L_16FD+6
                 sta FRE+3
                 ldy #$00
L_19DD           lda (FRE+2),y
                 sta L_1358,y
                 iny
                 cpy #$10
                 bne L_19DD
                 rts
L_19E8           lda #$00
                 sta L_16FD+4
                 ldy #$00
L_19EF           sta L_176D+2,y
                 sta L_16FD+7,y
                 sta L_1775+6,y
                 sta L_1775+3,y
                 sta L_176D+5,y
                 sta L_1775,y
                 iny
                 cpy #$03
                 bne L_19EF
                 lda #$08
                 sta L_16FD+5
                 lda #$14
                 sta L_16FD+6
                 jmp L_1992
L_1A13           lda L_1A34,x
                 cmp #$01
                 bcs L_1A1E
                 inc L_1A34,x
                 rts
L_1A1E           lda #$00
                 sta L_1A34,x
                 lda L_177D+1,x
                 cmp #$07
                 beq L_1A2E
                 inc L_177D+1,x
                 rts
L_1A2E           lda #$00
                 sta L_177D+1,x
                 rts
L_1A34           .byte $01, $01, $01, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00
L_1A60           jmp L_1AB7
L_1A63           jmp L_1ADA
L_1A66           brk
L_1A67           brk
L_1A68           brk
L_1A69           brk
L_1A6A           brk
L_1A6B           sty L_1A69
                 lda #$00
                 sta L_1A68
                 lda (FRE+4),y
                 cmp #$2E
                 beq L_1A94
                 cmp #$2F
                 beq L_1A94
                 cmp #$30
                 beq L_1A94
                 cmp #$31
                 beq L_1A94
                 ldx #$13
L_1A87           txa
                 cmp (FRE+4),y
                 beq L_1A94
                 inx
                 cpx #$1D
                 bne L_1A87
                 jmp L_1A9A
L_1A94           lda #$01
                 sta L_1A68
                 rts
L_1A9A           ldy L_1A69
                 lda (FRE+4),y
                 and #$80
                 bne L_1AB6
                 lda #$03
                 jsr L_2500
                 ldx #$03
                 jsr L_3BB0+4
                 inc L_1A67
                 inc L_1A66
                 jmp L_1A94
L_1AB6           rts
L_1AB7           stx L_1A6A
                 lda L_3FFD+3
                 cmp #$20
                 bne L_1AD1
                 jsr L_1A6B
                 ldx L_1A6A
                 lda L_1A68
                 bne L_1AD1
                 ldx FRE+2
                 jmp L_48A1
L_1AD1           jsr L_4A8D
                 ldx L_1A6A
                 jmp L_4920
L_1ADA           stx L_1A6A
                 lda L_3FFD+3
                 cmp #$20
                 bne L_1AF1
                 jsr L_1A6B
                 ldx FRE+2
                 lda L_1A68
                 bne L_1AF1
                 jmp L_47D4
L_1AF1           jsr L_4A8D
                 ldx L_1A6A
                 jmp L_494D
                 cmp #$75
                 bmi L_1B0F+1
                 cmp #$90
L_1B00           ora (LNFLG,x)
L_1B02           lda L_1A66
                 cmp #$0F
                 bpl L_1B0F
                 lda L_1A67
                 bne L_1B0F
L_1B0E           rts
L_1B0F           inc L_1B00
                 lda L_1B00
                 cmp #$03
                 bmi L_1B0E
                 lda #$00
                 sta L_1B00
                 lda L_1A66
                 cmp #$0F
                 bpl L_1B57+2
                 ldx L_1B00+1
                 cpx #$03
                 beq L_1B3E
                 lda L_1B47,x
L_1B2F           ldx #$00
L_1B31           sta L_14D8,x
                 inx
                 inx
L_1B36           cpx #$24
                 bne L_1B31
                 inc L_1B00+1
                 rts
L_1B3E           lda #$00
                 sta L_1A67
                 sta L_1B00+1
                 rts
L_1B47           .byte $3E, $3A, $0C, $F0, $F2, $F4, $F6, $F8
                 .byte $FA, $FC, $FE, $FE, $FC, $FA, $F8, $F6
L_1B57           .byte $F4, $F2, $AE, $01, $1B
                 cpx #$0F
                 bpl L_1B66
                 lda L_1B47+3,x
                 jmp L_1B2F
L_1B66           lda #$1D
                 sta L_1B00
                 jmp L_1B3E
                 lda #$1D
                 sta L_1B00
                 jmp L_1B36+1
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00
L_1BA0           ldx #$00
                 stx PCOLR0
                 stx PCOLR1
                 stx PCOLR2
                 stx GRACTL
                 stx HPOSP0
                 stx HPOSP1
                 stx HPOSP2
                 stx HPOSP3
                 ldx #$00
                 txa
L_1BBD           sta $6E00,x
                 sta $6F00,x
                 inx
                 bne L_1BBD
                 stx GRACTL
                 lda #$FF
                 sta SIZEP0
                 lda #$09
                 jsr L_2500
                 lda #$0C
L_1BD5           sta L_14D8,x
                 inx
                 cpx #$24
                 bne L_1BD5
                 ldx #$00
L_1BDF           ldy #$00
L_1BE1           iny
                 bne L_1BE1
                 inx
                 bne L_1BDF
L_1BE7           ldx #$00
L_1BE9           lda L_14E0+2,x
                 cmp #$06
                 bpl L_1BF8
                 lda L_14E0+4,x
                 beq L_1BF8
                 dec L_14E0+4,x
L_1BF8           lda L_14E0+2
                 beq L_1C00
                 dec L_14E0+2
L_1C00           inx
                 inx
                 cpx #$1C
                 bne L_1BE9
                 stx FRE+2
                 sty FRE+3
                 ldx #$00
L_1C0C           ldy #$00
L_1C0E           iny
                 bne L_1C0E
                 inx
                 cpx #$14
                 bne L_1C0C
                 ldx FRE+2
                 ldy FRE+3
                 lda L_14F8+2
                 bne L_1BE7
                 lda #$03
                 sta GRACTL
                 ldy #$20
                 ldx #$75
                 stx HPOSP0
                 ldx #$77
                 stx HPOSP1
                 ldx #$84
                 stx HPOSP2
                 ldx #$00
L_1C37           lda #$7E
                 sta $6E00,y
                 sta $6E80,y
                 sta $6F00,y
                 iny
                 stx FRE+2
                 sty FRE+3
                 ldx #$00
L_1C49           ldy #$00
L_1C4B           iny
                 bne L_1C4B
                 inx
                 cpx #$1C
                 bne L_1C49
                 ldx FRE+2
                 ldy FRE+3
                 lda FRE+4
                 clc
                 adc #$28
                 sta FRE+4
                 bcc L_1C62
                 inc FRE+5
L_1C62           inx
                 cpx #$28
                 bne L_1C37
                 lda #$00
                 sta LIVES
                 lda #$8A
                 sta L_443F+1
                 lda #$88
                 sta L_4452+1
                 jmp L_3353
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00
L_1CD0           jsr L_1B02
                 ldy #$00
L_1CD5           ldx #$00
L_1CD7           inx
                 bne L_1CD7
                 iny
                 cpy #$04
                 bne L_1CD5
                 lda #$00
                 sta ATRACT
                 rts
L_1CE4           jsr $5113
                 lda #$0C
                 sta $5074
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_1EF5           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00
L_1F00           asl
                 sta INTEMP
L_1F04           txa
L_1F05           ldx #$05
                 sta WSYNC
L_1F0A           nop
L_1F0B           dex
                 bne L_1F0B
                 ldx INTEMP
                 sta VIMIRQ+1,x
                 tya
                 sta VIMIRQ,x
                 rts
                 .byte $40, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $05, $00, $55
                 .byte $56, $57, $54, $55, $56, $57, $54, $55
                 .byte $56, $57, $54, $55, $56, $57, $54, $55
                 .byte $56, $57, $54, $55, $56, $57, $54, $55
                 .byte $56, $02, $07, $26, $05, $A0, $8F, $44
                 .byte $02, $07, $24, $05, $00, $39, $4E, $59
                 .byte $42, $43, $40, $41, $42, $43, $40, $41
                 .byte $42, $43, $40, $41, $42, $43, $40, $41
                 .byte $42, $43, $40, $41, $42, $43, $40, $41
                 .byte $42, $00, $76, $02, $07, $25, $3E, $06
                 .byte $6D, $80, $02, $06, $26, $06, $DC, $5D
                 .byte $46, $47, $44, $45, $46, $47, $44, $45
                 .byte $46, $47, $44, $45, $46, $47, $44, $45
                 .byte $46, $47, $44, $45, $46, $47, $44, $45
                 .byte $46, $B2, $02, $06, $27, $06, $DF, $BC
                 .byte $02, $07, $24, $3E, $08, $00, $C6, $51
                 .byte $3A, $3B, $38, $39, $3A, $3B, $38, $39
                 .byte $3A, $3B, $38, $39, $3A, $3B, $38, $39
                 .byte $3A, $3B, $38, $39, $3A, $3B, $38, $39
                 .byte $3A, $40, $06, $DE, $37, $E4, $02, $04
                 .byte $33, $EE, $02, $07, $29, $3E, $08, $01
                 .byte $02, $01, $02, $01, $02, $01, $02, $01
                 .byte $02, $01, $02, $01, $02, $01, $02, $01
                 .byte $02, $01, $02, $01, $02, $01, $02, $01
                 .byte $02, $20, $03, $06, $50, $06, $DC, $2A
                 .byte $03, $07, $44, $82, $4D, $31, $34, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $03, $06, $50, $06, $DE, $66, $03
                 .byte $07, $44, $82, $4D, $32, $70, $03, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $98, $03, $08, $81, $4C, $21, $81
                 .byte $4C, $A2, $03, $0C, $83, $46, $49, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $20, $20, $20, $20, $43, $4F, $44
                 .byte $45, $44, $20, $42, $59, $20, $4D, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $50, $0B, $08, $00, $0E, $01, $0D
                 .byte $86, $44, $45, $56, $4E, $55, $4D, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $03, $04, $03, $04, $03, $04, $03
                 .byte $04, $03, $36, $01, $0B, $50, $86, $44
                 .byte $45, $56, $54, $59, $50, $40, $01, $5D
                 .byte $5E, $5F, $5C, $5D, $5E, $5F, $5C, $5D
                 .byte $5E, $5F, $5C, $5D, $5E, $5F, $5C, $5D
                 .byte $5E, $5F, $5C, $5D, $5E, $5F, $5C, $5D
                 .byte $5E, $27, $07, $31, $02, $68, $01, $07
                 .byte $24, $3E, $06, $CE, $72, $01, $07, $51
                 .byte $3A, $3B, $38, $39, $3A, $3B, $38, $39
                 .byte $3A, $3B, $38, $39, $3A, $3B, $38, $39
                 .byte $3A, $3B, $38, $39, $3A, $3B, $38, $39
                 .byte $3A, $01, $07, $50, $05, $00, $D0, $A4
                 .byte $01, $07, $50, $05, $01, $D0, $AE, $55
                 .byte $3E, $3F, $3C, $3D, $3E, $3F, $3C, $3D
                 .byte $3E, $3F, $3C, $3D, $3E, $3F, $3C, $3D
                 .byte $3E, $3F, $3C, $3D, $3E, $3F, $3C, $3D
                 .byte $3E, $02, $D6, $01, $07, $51, $3E, $08
                 .byte $0F, $E0, $01, $07, $50, $07, $C4, $59
                 .byte $42, $43, $40, $41, $42, $43, $40, $41
                 .byte $42, $43, $40, $41, $42, $43, $40, $41
                 .byte $42, $43, $40, $41, $42, $43, $40, $41
                 .byte $42, $07, $24, $3E, $08, $00, $12, $02
                 .byte $0A, $82, $50, $54, $51, $3E, $08, $5D
                 .byte $46, $47, $44, $45, $46, $47, $44, $45
                 .byte $46, $47, $44, $45, $46, $47, $44, $45
                 .byte $46, $47, $44, $45, $46, $47, $44, $45
                 .byte $46, $02, $08, $50, $05, $40, $9F, $39
                 .byte $44, $02, $04, $32, $4E, $02, $07, $51
                 .byte $3A, $3B, $38, $39, $3A, $3B, $38, $39
                 .byte $3A, $3B, $38, $39, $3A, $3B, $38, $39
                 .byte $3A, $3B, $38, $39, $3A, $3B, $38, $39
                 .byte $3A, $45, $58, $54, $76, $02, $0B, $25
                 .byte $3E, $35, $84, $54, $45, $58, $54, $55
                 .byte $3E, $3F, $3C, $3D, $3E, $3F, $3C, $3D
                 .byte $3E, $3F, $3C, $3D, $3E, $3F, $3C, $3D
                 .byte $3E, $3F, $3C, $3D, $3E, $3F, $3C, $3D
                 .byte $3E, $A8, $02, $06, $26, $06, $DE, $B2
                 .byte $02, $06, $27, $06, $DF, $BC, $02, $59
                 .byte $42, $43, $40, $41, $42, $43, $40, $41
                 .byte $42, $43, $40, $41, $42, $43, $40, $41
                 .byte $42, $43, $40, $41, $42, $43, $40, $41
                 .byte $42, $02, $07, $20, $05, $5C, $E4, $E4
                 .byte $02, $0B, $83, $50, $54, $32, $25, $5D
                 .byte $46, $47, $44, $45, $46, $47, $44, $45
                 .byte $46, $47, $44, $45, $46, $47, $44, $45
                 .byte $46, $47, $44, $45, $46, $47, $44, $45
                 .byte $46, $84, $4E, $45, $57, $54, $0C, $03
                 .byte $07, $52, $3E, $08, $0B, $16, $03, $09
                 .byte $46, $84, $43, $4F, $4E, $54, $20, $03
                 .byte $08, $50, $40, $06, $DE, $37, $2A, $03
                 .byte $04, $33, $34, $03, $08, $21, $83, $4C
                 .byte $45, $53, $3E, $03, $09, $84, $4E, $45
                 .byte $57, $54, $33, $48, $03, $04, $43, $52
                 .byte $03, $04, $2C, $5C, $03, $06, $4F, $06
                 .byte $DC, $66, $03, $06, $50, $06, $DC, $70
                 .byte $03, $07, $44, $82, $50, $53, $7A, $03
                 .byte $06, $23, $06, $DD, $84, $03, $09, $82
                 .byte $50, $53, $51, $06, $DE, $8E, $03, $04
                 .byte $2C, $98, $03, $07, $4F, $3E, $08, $28
                 .byte $A2, $03, $06, $50, $06, $DE, $AC, $03
                 .byte $07, $44, $82, $49, $4D, $B6, $03, $06
                 .byte $23, $06, $DF, $C0, $03, $0B, $82, $49
                 .byte $4D, $21, $83, $50, $54, $32, $CA, $03
                 .byte $0C, $84, $43, $4F, $4E, $54, $51, $3E
                 .byte $08, $04, $D4, $03, $07, $50, $05, $14
                 .byte $9D, $DE, $03, $07, $51, $3E, $08, $2E
L_2389           .byte $E8, $03, $07, $50, $07, $2F, $02, $F2
                 .byte $03, $0C, $84, $4C, $4F, $4F, $50, $51
                 .byte $05, $0B, $D4, $FC, $03, $07, $4D, $3E
                 .byte $08, $03, $06, $04, $04, $3E, $10, $04
                 .byte $09, $51, $83, $43, $4F, $4C, $39, $1A
                 .byte $04, $07, $50, $05, $0A, $D4, $24, $04
                 .byte $07, $50, $07, $C5, $02, $2E, $04, $07
                 .byte $50, $05, $17, $D0, $38, $04, $07, $51
                 .byte $07, $1F, $D0, $42, $04, $07, $52, $3E
                 .byte $08, $06, $4C, $04, $08, $48, $83, $4E
                 .byte $53, $31, $56, $04, $0A, $21, $85, $53
                 .byte $54, $41, $52, $54, $60, $04, $0B, $83
L_23E9           .byte $4E, $53, $31, $51, $07, $84, $02, $04
L_23F1           .byte $00, $00, $00, $84, $4C, $4F, $4F, $10
                 .byte $10, $10, $10, $10, $10, $53, $54, $41
                 .byte $52, $54, $7E, $04, $08, $83, $52, $41
                 .byte $53, $35, $88, $04, $04, $41, $92, $04
                 .byte $04, $35, $9C, $04, $04, $43, $A6, $04
                 .byte $04, $35, $B0, $04, $0B, $83, $4B, $45
                 .byte $59, $24, $3E, $08, $00, $BA, $04, $07
                 .byte $25, $3E, $08, $00, $C4, $04, $07, $51
                 .byte $07, $FC, $02, $CE, $04, $06, $50, $06
                 .byte $FF, $D8, $04, $0F, $82, $4B, $32, $51
                 .byte $86, $4B, $45, $59, $44, $41, $54, $38
                 .byte $E2, $04, $06, $52, $06, $FF, $EC, $04
                 .byte $08, $46, $83, $41, $52, $50, $F6, $04
                 .byte $04, $33, $00, $05, $04, $33, $0A, $05
                 .byte $04, $33, $14, $05, $04, $32, $1E, $05
                 .byte $07, $28, $3E, $08, $05, $28, $05, $07
                 .byte $48, $82, $4B, $32, $32, $05, $0B, $83
                 .byte $4F, $55, $54, $51, $3E, $08, $FF, $3C
                 .byte $05, $07, $50, $07, $FC, $02, $46, $05
                 .byte $04, $37, $50, $05, $04, $3F, $5A, $05
                 .byte $04, $37, $64, $05, $04, $3E, $6E, $05
                 .byte $04, $37, $78, $05, $07, $21, $05, $62
                 .byte $E4, $82, $05, $13, $83, $41, $52, $50
                 .byte $51, $86, $4B, $45, $59, $44, $41, $54
                 .byte $12, $08, $01, $38, $8C, $05, $06, $50
                 .byte $06, $EC, $96, $05, $0F, $51, $86, $4B
                 .byte $45, $59, $44, $41, $54, $12, $08, $02
                 .byte $38, $A0, $05, $06, $50, $06, $ED, $AA
                 .byte $05, $06, $27, $06, $EE, $B4, $05, $09
                 .byte $25, $84, $4C, $41, $53, $54, $BE, $05
                 .byte $0F, $51, $86, $4B, $45, $59, $44, $41
                 .byte $54, $12, $08, $01, $38, $C8, $05, $06
                 .byte $50, $06, $EA, $D2, $05, $0F, $51, $86
                 .byte $4B, $45, $59, $44, $41, $54, $12
L_2500           stx L_254A+6
                 sty L_254A+7
                 clc
                 asl
                 tax
                 lda L_253A,x
                 sta L_2552+2
                 lda L_253A+1,x
                 sta L_2552+3
                 lda #$06
                 ldy #$56
                 ldx #$25
                 jsr L_1F00
                 lda #$00
                 sta L_2552+1
                 lda #$00
                 sta AUDCTL
                 lda #$03
                 sta L_2552
                 sta SKCTL
                 sta SSKCTL
                 ldx L_254A+6
                 ldy L_254A+7
                 rts
L_253A           .byte $BE, $25, $E2, $25, $06, $26, $2A, $26
                 .byte $4E, $26, $63, $26, $75, $26, $A5, $26
L_254A           .byte $B7, $26, $C9, $26, $6B, $27, $00, $00
L_2552           .byte $00, $FF, $DF, $25
                 pha
                 txa
                 pha
                 tya
                 pha
                 lda L_2552
                 bne L_2563
                 jmp L_2586
L_2563           ldx L_2552+2
                 ldy L_2552+3
                 stx FKDEF
                 sty FKDEF+1
                 ldy #$01
                 lda (FKDEF),y
                 cmp #$FF
                 beq L_25B0
                 sta AUDF1,y
                 dey
                 lda (FKDEF),y
                 sta AUDF1,y
                 lda L_2552+1
                 beq L_258E
                 dec L_2552+1
L_2586           pla
                 tay
                 pla
                 tax
                 pla
                 jmp SYSVBV
L_258E           lda L_2552+2
                 clc
                 adc #$03
                 sta L_2552+2
                 bcc L_259C
                 inc L_2552+3
L_259C           ldx L_2552+2
                 ldy L_2552+3
                 stx FKDEF
                 sty FKDEF+1
                 ldy #$02
                 lda (FKDEF),y
                 sta L_2552+1
                 jmp L_2586
L_25B0           lda #$00
                 sta L_2552
                 sta AUDF1
                 sta AUDC1
                 jmp L_2586
                 .byte $00, $00, $00, $3C, $AF, $00, $3B, $AD
                 .byte $00, $3B, $A7, $00, $3C, $A5, $00, $3B
                 .byte $A5, $00, $3C, $A4, $00, $3C, $A3, $00
                 .byte $3C, $A1, $00, $3C, $A0, $00, $3C, $A1
                 .byte $00, $FF, $FF, $FF, $00, $00, $00, $32
                 .byte $AF, $00, $31, $AD, $00, $31, $A7, $00
                 .byte $32, $A5, $00, $31, $A5, $00, $32, $A4
                 .byte $00, $32, $A3, $00, $32, $A1, $00, $32
                 .byte $A0, $00, $32, $A1, $00, $FF, $FF, $FF
                 .byte $00, $00, $00, $19, $AF, $00, $18, $AD
                 .byte $00, $18, $A7, $00, $19, $A5, $00, $18
                 .byte $A5, $00, $19, $A4, $00, $19, $A3, $00
                 .byte $19, $A1, $00, $19, $A0, $00, $19, $A1
                 .byte $00, $FF, $FF, $FF, $00, $00, $00, $13
                 .byte $AF, $00, $12, $AD, $00, $12, $A7, $00
                 .byte $13, $A5, $00, $12, $A5, $00, $12, $A4
                 .byte $00, $12, $A3, $00, $12, $A1, $00, $12
                 .byte $A0, $00, $12, $A1, $00, $FF, $FF, $FF
                 .byte $00, $00, $00, $01, $27, $00, $02, $29
                 .byte $00, $04, $2A, $00, $05, $28, $00, $04
                 .byte $25, $00, $FF, $FF, $FF, $00, $00, $00
                 .byte $1E, $8A, $04, $20, $88, $01, $24, $85
                 .byte $01, $2C, $84, $01, $FF, $FF, $FF, $14
                 .byte $29, $03, $10, $2C, $04, $12, $2B, $02
                 .byte $14, $27, $03, $10, $2A, $04, $12, $29
                 .byte $02, $14, $25, $03, $10, $28, $04, $12
                 .byte $27, $02, $14, $23, $03, $10, $26, $04
                 .byte $12, $25, $02, $14, $22, $03, $10, $25
                 .byte $04, $12, $24, $02, $FF, $FF, $FF, $00
                 .byte $00, $00, $FF, $AC, $03, $F5, $AD, $03
                 .byte $EB, $AE, $02, $E1, $AF, $02, $FF, $FF
                 .byte $FF, $00, $00, $00, $2F, $AC, $02, $33
                 .byte $AC, $02, $2F, $AE, $03, $33, $AE, $03
                 .byte $FF, $FF, $FF, $00, $00, $00, $03, $22
                 .byte $03, $05, $22, $03, $04, $22, $03, $03
                 .byte $22, $03, $03, $24, $03, $05, $24, $03
                 .byte $04, $24, $03, $03, $24, $03, $03, $26
                 .byte $03, $05, $26, $03, $04, $26, $03, $03
                 .byte $26, $03, $03, $28, $03, $05, $28, $03
                 .byte $04, $28, $03, $03, $28, $03, $03, $2A
                 .byte $03, $05, $2A, $03, $04, $2A, $03, $03
                 .byte $2A, $03, $03, $2C, $03, $05, $2C, $03
                 .byte $04, $2C, $03, $03, $2C, $03, $03, $2E
                 .byte $03, $05, $2E, $03, $04, $2E, $03, $03
                 .byte $2E, $03, $03, $2C, $03, $05, $2C, $03
                 .byte $04, $2C, $03, $03, $2C, $03, $03, $2A
                 .byte $03, $05, $2A, $03, $04, $2A, $03, $03
                 .byte $2A, $03, $03, $28, $03, $05, $28, $03
                 .byte $04, $28, $03, $03, $28, $03, $03, $26
                 .byte $03, $05, $26, $03, $04, $26, $03, $03
                 .byte $26, $03, $03, $24, $03, $05, $24, $03
                 .byte $04, $24, $03, $03, $24, $03, $03, $22
                 .byte $03, $05, $22, $03, $04, $22, $03, $03
                 .byte $22, $03, $FF, $FF, $FF, $00, $00, $00
                 .byte $1F, $2F, $07, $21, $2D, $07, $23, $2B
                 .byte $07, $25, $29, $07, $27, $27, $06, $29
                 .byte $25, $06, $2B, $23, $06, $FF, $FF, $FF
                 .byte $FF, $FF, $65, $C1, $01, $C1, $01, $01
                 .byte $C1, $09, $C1, $01, $01, $C1, $09, $C1
                 .byte $01, $01, $CB, $01, $0D, $0D, $FF, $0D
                 .byte $0D, $0D, $0D, $6D, $6D, $0D, $62, $C1
                 .byte $01, $C1, $63, $C1, $01, $C1, $62, $62
                 .byte $C1, $01, $C1, $63, $C1, $01, $C1, $62
                 .byte $62, $C1, $01, $C1, $63, $C1, $01, $A1
                 .byte $62, $62, $C1, $01, $C1, $63, $C1, $01
                 .byte $C1, $62, $0D, $6D, $6D, $0D, $0D, $0D
                 .byte $0D, $0D, $FF, $0D, $0D, $0D, $0D, $6D
                 .byte $0D, $02, $E3, $01, $E3, $01, $E3, $02
                 .byte $E1, $A1, $E1, $01, $E1, $A1, $E1, $01
                 .byte $E1, $A1, $E1, $02, $E3, $01, $E3, $01
                 .byte $E3, $0D, $01, $E3, $01, $E3, $01, $E3
                 .byte $01, $01, $E1, $A1, $E1, $01, $E1, $A1
                 .byte $E1, $01
L_2800           sta L_46C0+6,x
                 lda #$00
                 jsr L_2500
                 rts
L_2809           jsr L_2900
                 lda #$01
                 jsr L_2500
                 rts
L_2812           sta L_4C43,y
                 lda #$02
                 jsr L_2500
                 rts
                 sta HPOSP1,x
                 lda #$04
                 jsr L_2500
                 rts
L_2824           jsr L_3BB0+4
                 lda #$05
                 jsr L_2500
                 rts
L_282D           lda #$06
                 jsr L_2500
                 jmp L_3200
                 lda #$08
                 jsr L_2500
                 jmp $8F11
                 lda L_2552
                 bne L_2847
                 lda #$0A
                 jsr L_2500
L_2847           lda L_4405+4
                 rts
                 sta $507D
                 lda #$07
                 jsr L_2A0B+5
                 rts
L_2854           bvs L_2856+1
L_2856           sta L_2854
                 jsr L_3CFC+7
                 lda L_2854+1
                 cmp #$03
                 bcs L_2869
                 inc L_2854+1
                 jmp L_2876
L_2869           lda #$00
                 sta L_2854+1
                 jmp L_2A8C
                 brk
                 brk
                 sta L_46F0+3
L_2876           lda L_2854
                 rts
L_287A           jsr L_44CB
                 jsr L_44F1
                 rts
L_2881           lda #$B1
                 sta L_464D
                 jsr L_401C
                 lda #$91
                 sta L_464D
                 rts
L_288F           ldx #$00
                 jmp L_401A
L_2894           lda #$00
                 ldx #$00
L_2898           sta $9F60,x
                 inx
                 cpx #$28
                 bne L_2898
                 jmp L_3A3C
L_28A3           brk
L_28A4           lda L_28A3
                 sta L_2DFB+5
                 lda #$00
                 sta L_2DFB+6
                 jmp L_2D00
L_28B2           lda #$00
                 sta $5070
                 lda #$B4
                 sta $5071
                 jmp L_28C6
L_28BF           lda #$00
                 sta ATRACT
                 jmp $8F82
L_28C6           jsr $5113
                 jmp L_4517+4
L_28CC           lda L_46D8
                 cmp #$01
                 beq L_28D6
                 jmp L_4911
L_28D6           lda L_4607+1,x
                 and #$03
                 cmp #$03
                 beq L_28E2
                 jmp L_4918
L_28E2           jmp L_491D
L_28E5           lda L_46D8
                 cmp #$08
                 beq L_28EF
                 jmp L_493C
L_28EF           lda L_4607+4,x
                 and #$03
                 beq L_28F9
                 jmp L_4945
L_28F9           jmp L_494A
                 brk
                 brk
                 brk
                 brk
L_2900           lda FRE+4
                 sta ZTEMP4+1
                 lda FRE+5
                 sta ZTEMP3
                 lda FRE+5
                 sta FLPTR+1
                 lda FRE+4
                 sec
                 sbc #$2A
                 sta FLPTR
                 bcs L_2917
                 dec FLPTR+1
L_2917           lda FRE+5
                 sta FPTR2+1
                 lda FRE+4
                 sec
                 sbc #$02
                 sta FPTR2
                 bcs L_2926
                 dec FPTR2+1
L_2926           sty L_29D8
                 stx L_29D7
                 ldx #$00
                 tya
                 clc
                 adc #$28
                 tay
L_2933           lda (ZTEMP4+1),y
                 cmp #$50
                 bmi L_2942
                 cmp #$60
                 bpl L_2942
                 sec
                 sbc #$18
                 sta (ZTEMP4+1),y
L_2942           iny
                 inx
                 cpx #$02
                 bne L_2933
                 ldy L_29D8
                 ldx #$00
                 stx RADFLG
                 jsr L_299A
L_2952           lda (FLPTR),y
                 and #$7F
                 beq L_2964
                 cmp #$09
                 bmi L_2969
                 cmp #$1D
                 beq L_2969
                 cmp #$1E
                 beq L_2969
L_2964           iny
                 iny
                 jmp L_2986
L_2969           lda (FPTR2),y
                 and #$7F
                 cmp #$38
                 bmi L_2980
                 cmp #$60
                 bpl L_2979
                 cmp #$50
                 bpl L_2980
L_2979           lda (FPTR2),y
                 clc
                 adc #$18
                 sta (FPTR2),y
L_2980           iny
                 inx
                 cpx #$02
                 bne L_2969
L_2986           ldx #$00
                 inc RADFLG
                 lda RADFLG
                 cmp #$02
                 bne L_2952
                 ldy L_29D8
                 ldx L_29D7
                 lda L_49F9+7
                 rts
L_299A           lda (FLPTR),y
                 cmp #$22
                 bpl L_29A3
                 jmp L_29B8
L_29A3           cmp #$2A
                 bpl L_29B8
                 iny
                 lda (FLPTR),y
                 cmp #$38
                 bmi L_29B7
                 cmp #$48
                 bpl L_29B7
                 clc
                 adc #$18
                 sta (FLPTR),y
L_29B7           dey
L_29B8           lda (FPTR2),y
                 cmp #$22
                 bpl L_29BF
L_29BE           rts
L_29BF           lda (FPTR2),y
                 cmp #$2A
                 bpl L_29BE
                 iny
                 lda (FPTR2),y
                 cmp #$38
                 bmi L_29D5
                 cmp #$48
                 bpl L_29D5
                 clc
                 adc #$18
                 sta (FPTR2),y
L_29D5           dey
                 rts
L_29D7           brk
L_29D8           brk
                 lda CASINI+1
                 sta ZTEMP3
                 sta FLPTR+1
                 lda CASINI
                 sta ZTEMP4+1
                 sec
                 sbc #$2A
                 sta FLPTR
                 bcs L_29EC
                 dec FLPTR+1
L_29EC           lda CASINI+1
                 sta FPTR2+1
                 lda CASINI
                 sec
                 sbc #$02
                 sta FPTR2
                 bcs L_29FB
                 dec FPTR2+1
L_29FB           jsr L_2926
                 ldx FRE+2
                 ldy FRE+3
                 rts
                 .byte $45, $20, $54, $4F, $20, $55, $4E, $4C
L_2A0B           .byte $4F, $43, $4B, $3F, $9B, $AD, $52, $25
                 .byte $D0, $05, $A9, $07, $20, $00, $25, $60
L_2A1B           .byte $00, $00, $00, $00, $00
L_2A20           ldy #$00
                 ldx #$00
L_2A24           lda L_4C41,y
                 beq L_2A47
                 sta FRE+5
                 lda L_4C40,y
                 sta FRE+4
                 lda L_4C43,y
                 sta FRE+2
                 sty L_2A1B+4
                 ldy #$00
                 lda FRE+2
                 sta (FRE+4),y
                 iny
                 clc
                 adc #$01
                 sta (FRE+4),y
                 ldy L_2A1B+4
L_2A47           inx
                 iny
                 iny
                 iny
                 iny
                 cpx #$0F
                 bne L_2A24
                 jmp L_282D
                 jsr L_2812
                 jmp L_2C65
                 .byte $00, $00, $00, $00, $00, $00, $00
L_2A60           lda CONSOL
                 cmp #$06
                 beq L_2A89
                 lda PTRIG0
                 beq L_2A89
                 lda PTRIG1
                 beq L_2A89
                 lda STRIG0
                 beq L_2A89
                 lda STRIG1
                 beq L_2A89
                 lda SKSTAT
                 cmp #$F3
                 beq L_2A89
                 cmp #$F7
                 beq L_2A89
                 jmp L_3726
L_2A89           jmp L_37D0
L_2A8C           lda $5076
                 clc
                 adc $5077
                 bne L_2A9A
                 lda L_46F0+3
                 cmp #$02
L_2A9A           bcc L_2A9F
                 dec L_46F0+3
L_2A9F           rts
L_2AA0           lda #$40
                 sta POKMSK
                 sta IRQEN
                 jsr L_43D5
                 jmp L_2FB9
                 brk
                 brk
                 brk
L_2AB0           cmp #$18
                 bpl L_2AB8
                 lda L_4607+1
                 rts
L_2AB8           sec
                 sbc #$17
                 sta FR2+4
                 lda L_4607+1
                 sec
                 sbc FR2+4
                 sta L_4607+1
                 rts
L_2AC7           jsr L_3BB0+4
                 lda #$05
                 jmp L_2500
                 brk
L_2AD0           sta COLOR4
                 lda #$40
                 sta POKMSK
                 sta IRQEN
                 rts
L_2ADB           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00
                 lda L_2ADB+7,x
                 cmp #$14
                 bpl L_2AEF
                 inc L_2ADB+7,x
L_2AEF           rts
                 lda #$00
                 sta L_2ADB+7,x
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_2B00           jsr L_43D5
L_2B03           nop
                 jmp L_2FE0
L_2B07           stx FRE+2
                 sty FRE+3
                 ldx #$80
                 ldy #$8A
                 stx FRE+4
                 sty FRE+5
                 ldx #$00
L_2B15           ldy #$00
L_2B17           lda (FRE+2),y
                 and #$CC
                 sta (FRE+4),y
                 iny
                 lda (FRE+2),y
                 and #$33
                 sta (FRE+4),y
                 iny
                 cpy #$08
                 bne L_2B17
                 lda FRE+2
                 clc
                 adc #$08
                 sta FRE+2
                 bcc L_2B34
                 inc FRE+3
L_2B34           lda FRE+4
                 clc
                 adc #$08
                 sta FRE+4
                 bcc L_2B3F
                 inc FRE+5
L_2B3F           inx
                 cpx #$10
                 bne L_2B15
                 ldx #$30
                 ldy #$9B
                 stx FRE+2
                 sty FRE+3
                 ldx #$00
L_2B4E           ldy #$00
L_2B50           lda (FRE+2),y
                 and #$7F
                 cmp #$01
                 beq L_2B6B
                 cmp #$03
                 beq L_2B6B
                 cmp #$05
                 beq L_2B6B
                 cmp #$07
                 beq L_2B6B
                 cmp #$1D
                 beq L_2B6B
                 jmp L_2B91
L_2B6B           sty FPTR2+1
                 stx FPTR2
                 tya
                 clc
                 adc #$29
                 tay
                 ldx #$00
L_2B76           lda (FRE+2),y
                 and #$7F
                 cmp #$38
                 bmi L_2B87
                 cmp #$48
                 bpl L_2B87
                 clc
                 adc #$18
                 sta (FRE+2),y
L_2B87           iny
                 inx
                 cpx #$02
                 bne L_2B76
                 ldx FPTR2
                 ldy FPTR2+1
L_2B91           iny
                 iny
                 cpy #$1A
                 bne L_2B50
                 lda FRE+2
                 clc
                 adc #$28
                 sta FRE+2
                 bcc L_2BA2
                 inc FRE+3
L_2BA2           inx
                 cpx #$13
                 bne L_2B4E
                 ldx #$00
L_2BA9           lda $9B30,x
                 cmp #$38
                 bmi L_2BBA
                 cmp #$48
                 bpl L_2BBA
                 clc
                 adc #$18
                 sta $9B30,x
L_2BBA           inx
                 cpx #$1A
                 bne L_2BA9
                 ldx #$58
                 ldy #$9B
                 stx FRE+2
                 sty FRE+3
                 ldx #$00
                 ldy #$00
L_2BCB           lda (FRE+2),y
                 cmp #$38
                 bmi L_2BDA
                 cmp #$48
                 bpl L_2BDA
                 clc
                 adc #$18
                 sta (FRE+2),y
L_2BDA           lda FRE+2
                 clc
                 adc #$28
                 sta FRE+2
                 bcc L_2BE5
                 inc FRE+3
L_2BE5           inx
                 cpx #$19
                 bne L_2BCB
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_2BFB           .byte $00, $00, $00, $00, $00, $10, $11, $12
L_2C03           .byte $17, $12, $10, $10, $10, $20, $71, $5C
                 ldx #$00
L_2C0D           lda $9F67,x
                 cmp L_2BFB+5,x
                 beq L_2C19
                 bmi L_2C2E
                 bcs L_2C1E
L_2C19           inx
                 cpx #$06
                 bne L_2C0D
L_2C1E           ldx #$00
L_2C20           lda $9F67,x
                 sta $9F71,x
                 sta L_2BFB+5,x
                 inx
                 cpx #$06
                 bne L_2C20
L_2C2E           rts
L_2C2F           ldx L_367B+4
                 stx L_3533+3
                 lda L_3523+5,x
                 sta FRE+2
                 lda L_3523+6,x
                 sta FRE+3
                 ldy #$00
                 lda #$04
                 sta (FRE+2),y
                 lda L_367B+5
                 clc
                 adc #$11
                 sta $9DB6
                 lda L_28A3
                 clc
                 adc #$11
                 sta $9E06
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_2C60           .byte $00, $00, $00, $00, $00
L_2C65           lda L_2C60,x
                 cmp #$14
                 bpl L_2C70
                 inc L_2C60,x
                 rts
L_2C70           lda #$00
                 sta L_2C60,x
L_2C75           lda VCOUNT
                 and #$03
                 cmp L_46C8+1,x
                 beq L_2C75
                 sta L_46C8+1,x
                 rts
L_2C83           sta $6D00,x
                 sta $6D80,x
                 sta $6E00,x
                 sta $6E80,x
                 sta $6F00,x
                 sta $6F80,x
                 inx
                 cpx #$80
                 bne L_2C83
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_2CAB           lda FR2+4
                 jmp L_2856
                 lda L_4E03
                 cmp #$01
                 bne L_2CC2
                 lda #$04
                 sta L_46F0+3
                 sta L_46F0+4
                 sta L_46F0+5
L_2CC2           lda $7FFE
                 sta L_4E03
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00
L_2CD0           jsr L_2CF6
                 cmp #$20
                 beq L_2CE0
                 jsr L_2CAB
                 ldx L_46D0+4
                 jmp L_494D
L_2CE0           jmp L_4930
L_2CE3           jsr L_2CF6
                 cmp #$20
                 beq L_2CF3
                 jsr L_2CAB
                 ldx L_46D0+4
                 jmp L_4920
L_2CF3           jmp L_4905
L_2CF6           sta FR2+4
                 lda L_3FFD+3
                 rts
                 brk
                 brk
                 brk
                 brk
L_2D00           lda #$04
                 sta L_23E9+7
                 lda #$00
                 sta L_2E03+1
                 sta L_23F1
                 sta L_23F1+1
                 sta L_23F1+2
                 sta L_2DFB+7
                 sta L_2E03
                 lda L_3FFD+3
                 cmp #$20
                 beq L_2D26
                 jsr L_288F
                 jsr L_400F
L_2D26           ldx #$00
                 ldy #$20
                 stx FRE+2
                 sty FRE+3
                 ldx #$30
                 ldy #$9B
                 stx FRE+4
                 sty FRE+5
                 ldx #$00
L_2D38           ldy #$00
L_2D3A           lda (FRE+4),y
                 sta (FRE+2),y
                 iny
                 cpy #$1A
                 bne L_2D3A
                 lda FRE+2
                 clc
                 adc #$28
                 sta FRE+2
                 bcc L_2D4E
                 inc FRE+3
L_2D4E           lda FRE+4
                 clc
                 adc #$28
                 sta FRE+4
                 bcc L_2D59
                 inc FRE+5
L_2D59           inx
                 cpx #$13
                 bne L_2D38
                 ldx #$00
                 lda #$10
L_2D62           sta L_23F1+7,x
                 inx
                 cpx #$06
                 bne L_2D62
                 jmp $8E00
                 lda L_1F04
                 sta B0_ICBLL,x
                 lda L_1F05
                 sta B0_ICBLH,x
                 lda #$07
                 sta B0_ICCOM,x
                 jsr CIOV
                 bpl L_2D8D
                 cpy #$88
                 beq L_2D8A
                 jmp L_31EB+5
L_2D8A           dec L_1F0A
L_2D8D           ldx #$2C
                 lda #$7D
                 jsr L_31AB+5
                 jsr L_3033+4
                 bit L_1EF5
                 bpl L_2D9F
                 jmp L_2E1A
L_2D9F           ldx #$20
                 ldy #$09
                 lda L_1F0B
                 bne L_2DAD
                 ldy #$08
                 inc L_1F0B
L_2DAD           tya
                 sta B0_ICAX1,x
                 lda #$03
                 sta B0_ICCOM,x
                 lda #$7C
                 ldy #$1D
                 bit L_2389+6
                 bvc L_2DC3
                 lda #$B2
                 ldy #$23
L_2DC3           sta B0_ICBAL,x
                 tya
                 sta B0_ICBAH,x
                 jsr L_31E3+6
                 ldy #$10
                 ldx #$20
                 lda #$00
                 cmp B0_ICBLL,y
                 bne L_2DDD
                 cmp B0_ICBLH,y
                 beq L_2DFB
L_2DDD           lda #$0B
L_2DDF           sta $04AE,x
                 rol $01A9
                 sta L_2DFB+7,x
                 jmp L_2E05
                 .byte $03, $B9, $48, $03, $9D, $48, $03, $B9
                 .byte $49, $03, $9D, $49, $03, $20, $0A, $26
L_2DFB           .byte $2D, $C0, $00, $FF, $47, $00, $00, $00
L_2E03           .byte $00, $00
L_2E05           lda L_2DFB+7
                 clc
                 adc L_2E03
                 beq L_2E13
                 lda #$00
                 sta L_2DFB+5
L_2E13           cmp #$02
                 bne L_2E1A
                 jmp L_2FFD
L_2E1A           lda L_2E03+1
                 eor #$01
                 tax
                 stx L_2E03+1
                 lda L_367B+5
                 beq L_2E30
                 lda L_2DFB+6
                 eor #$01
                 sta L_2DFB+6
L_2E30           ldx #$00
                 ldy #$20
                 stx FRE+2
                 sty FRE+3
                 ldx #$00
                 ldy #$6D
                 stx FRE+4
                 sty FRE+5
                 ldx #$30
                 ldy #$9B
                 stx FLPTR
                 sty FLPTR+1
                 ldx #$00
L_2E4A           ldy #$00
L_2E4C           lda (FRE+2),y
                 sta FPTR2+1
                 lda (FLPTR),y
                 sta (FRE+2),y
                 lda FPTR2+1
                 sta (FRE+4),y
                 iny
                 cpy #$1A
                 bne L_2E4C
                 lda FRE+4
                 clc
                 adc #$28
                 sta FRE+4
                 sta FRE+2
                 bcc L_2E6C
                 inc FRE+5
                 inc FRE+3
L_2E6C           lda FLPTR
                 clc
                 adc #$28
                 sta FLPTR
                 bcc L_2E77
                 inc FLPTR+1
L_2E77           inx
                 cpx #$13
                 bne L_2E4A
                 ldx LIVES
                 ldy L_23E9+7
                 sty LIVES
                 stx L_23E9+7
                 ldx L_3FFD+3
                 ldy L_23F1
                 sty L_3FFD+3
                 stx L_23F1
                 ldx L_38FE+2
                 ldy L_23F1+1
                 sty L_38FE+2
                 stx L_23F1+1
                 ldx #$00
L_2EA2           lda L_23F1+7,x
                 sta FPTR2+1
                 lda $9F67,x
                 sta L_23F1+7,x
                 lda FPTR2+1
                 sta $8F00,x
                 inx
                 cpx #$06
                 bne L_2EA2
                 ldx #$00
L_2EB9           lda #$00
                 sta $9F60,x
                 inx
                 cpx #$28
                 bne L_2EB9
                 ldx #$00
                 ldy #$00
                 jsr L_2881
                 lda L_3FFD+3
                 cmp #$20
                 bne L_2ED7
                 jsr L_1503
                 jmp L_2EDD
L_2ED7           jsr L_42F9
                 jsr L_4D4A
L_2EDD           ldx #$00
                 ldy #$6D
                 stx FRE+2
                 sty FRE+3
                 ldx #$30
                 ldy #$9B
                 stx FRE+4
                 sty FRE+5
                 ldx #$00
L_2EEF           ldy #$00
L_2EF1           lda (FRE+2),y
                 sta (FRE+4),y
                 iny
                 cpy #$1A
                 bne L_2EF1
                 lda FRE+2
                 clc
                 adc #$28
                 sta FRE+2
                 bcc L_2F05
                 inc FRE+3
L_2F05           lda FRE+4
                 clc
                 adc #$28
                 sta FRE+4
                 bcc L_2F10
                 inc FRE+5
L_2F10           inx
                 cpx #$13
                 bne L_2EEF
                 lda L_3FFD+3
                 cmp #$20
                 bne L_2F24
                 ldx #$00
                 jsr L_401A
                 jsr L_1503
L_2F24           jsr L_43D5
                 lda #$03
                 sta GRACTL
                 lda #$2E
                 sta SDMCTL
                 jsr L_2B03
                 jmp L_3A4C
L_2F37           jsr L_2C65
                 jmp L_2809
                 .byte $00, $00, $00, $00, $C0, $30, $FF, $46
                 .byte $49, $4E, $0C, $22, $2E, $C0, $39, $FF
                 .byte $4F, $4E, $45, $44, $45, $56, $09, $34
                 .byte $2E, $C0, $4E, $00, $42, $52, $32, $08
                 .byte $36, $2E, $C0, $00, $FF, $42, $52, $08
                 .byte $56, $2E, $C0, $56, $FF, $53, $57, $09
                 .byte $94, $2E, $C0, $67, $00, $41, $48, $31
                 .byte $09, $96, $2E, $C0, $00, $FF, $41, $48
                 .byte $32, $08, $AA, $2E, $C0, $78, $00, $4D
                 .byte $31, $08, $B5, $2E, $C0, $00, $FF, $4D
                 .byte $32, $07, $BA, $2E, $C0, $80, $FF, $4C
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00
L_2FA0           sta SIZEP0
                 sta L_2C60
                 sta L_2C60+1
                 sta L_2C60+2
                 rts
                 brk
                 brk
                 brk
L_2FB0           jsr L_2800
                 lda #$00
                 sta L_2C60,x
                 rts
L_2FB9           ldx #$CC
                 ldy #$2F
                 stx CASINI
                 sty CASINI+1
                 stx DOSVEC
                 sty DOSVEC+1
                 stx DOSINI
                 sty DOSINI+1
                 jmp L_2FD2
                 ldx #$FF
                 txs
                 jmp L_3500
L_2FD2           lda #$8A
                 sta L_443F+1
                 lda #$88
                 sta L_4452+1
                 jmp L_3681
                 brk
L_2FE0           lda L_3FFD+3
                 cmp #$20
                 bne L_2FE8
                 rts
L_2FE8           ldx #$C0
                 ldy #$89
                 jmp L_2B07
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00
L_2FFD           jmp L_33C7
L_3000           jmp L_2A20
                 .byte $00, $00, $00, $00, $00, $00, $00, $50
                 .byte $64, $82, $7F, $E5, $E4, $60, $26, $00
                 .byte $00, $00, $00, $00, $00, $00, $88, $CC
                 .byte $82, $FC, $2E, $2E, $4C, $88, $00, $00
                 .byte $00, $00, $00, $00, $00, $17, $1B, $15
                 .byte $00, $1A, $1B, $1F, $1D, $00, $00, $00
L_3033           .byte $00, $00, $00, $00, $70, $30, $70, $00
                 .byte $D0, $D0, $B0, $70, $00, $00, $00, $00
                 .byte $00, $00, $00, $20, $60, $80, $E0, $E1
                 .byte $64, $20, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $08, $0C, $0E, $02, $0E, $2E
                 .byte $4C, $88, $00, $00, $00, $00, $00, $01
                 .byte $17, $17, $1B, $7D, $1D, $1C, $1B, $1F
                 .byte $19, $00, $00, $00, $00, $00, $00, $60
                 .byte $70, $B0, $F0, $FC, $D0, $D0, $B0, $70
                 .byte $00, $00, $00, $00, $00, $00, $00, $22
                 .byte $60, $80, $E0, $E0, $64, $64, $26, $00
                 .byte $00, $00, $00, $00, $00, $08, $0C, $0E
                 .byte $06, $0A, $2E, $4E, $8C, $08, $00, $00
                 .byte $00, $01, $03, $17, $16, $10, $1D, $7D
                 .byte $1D, $1B, $1B, $19, $1B, $00, $00, $00
                 .byte $20, $60, $70, $20, $30, $70, $78, $55
                 .byte $D0, $90, $30, $70, $00, $00, $C0, $C0
                 .byte $80, $00, $40, $C0, $80, $40, $C1, $C1
                 .byte $90, $00, $00, $00, $00, $08, $0C, $04
                 .byte $00, $08, $0C, $04, $00, $08, $2C, $0C
                 .byte $04, $00, $0F, $0F, $08, $00, $00, $21
                 .byte $21, $11, $18, $1E, $1E, $1C, $00, $00
                 .byte $00, $00, $60, $70, $30, $30, $10, $80
                 .byte $B0, $72, $F2, $92, $12, $22, $00, $00
                 .byte $30, $30, $20, $10, $30, $20, $40, $40
                 .byte $20, $60, $40, $00, $00, $00, $00, $00
                 .byte $00, $08, $0C, $04, $00, $8C, $28, $64
                 .byte $C0, $08, $28, $08, $04, $04, $00, $06
                 .byte $07, $00, $40, $41, $00, $04, $06, $07
                 .byte $07, $02, $00, $00, $00, $00, $40, $AC
                 .byte $70, $10, $00, $00, $04, $00, $00, $00
                 .byte $00, $04, $14, $20, $00, $08, $10, $00
                 .byte $10, $08, $10, $00, $40, $20, $40, $40
                 .byte $00, $00, $00, $00, $04, $04, $02, $00
                 .byte $04, $00, $02, $00, $04, $06, $00, $02
                 .byte $00, $00, $04, $00, $00, $00, $04, $06
                 .byte $00, $02, $00, $00, $00, $00, $00, $00
                 .byte $00, $A0, $80, $28, $88, $80, $40, $10
                 .byte $30, $00, $80, $80, $10, $00, $00, $00
                 .byte $00, $00, $20, $40, $00, $10, $20, $00
                 .byte $40, $40, $80, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $08, $00, $08, $00, $10
                 .byte $00, $00, $08, $00, $04, $00, $0A, $00
                 .byte $00, $02, $08, $04, $00, $00, $04, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $50, $00, $00, $00, $20, $00, $00
                 .byte $10, $00, $00, $00, $00, $00, $00, $00
L_31AB           .byte $00, $08, $00, $00, $04, $00, $00, $10
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $08, $00, $00, $10, $00, $00
                 .byte $08, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $01, $00, $00, $01, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $10
                 .byte $40, $00, $00, $00, $00, $00, $00, $10
L_31E3           .byte $27, $21, $2D, $25, $00, $2F, $36, $25
L_31EB           .byte $32, $00, $30, $2C, $21, $39, $25, $32
L_31F3           .byte $01, $04, $00
                 pha
                 lda #$01
                 sta L_31F3
                 pla
                 jmp XITVBV
L_3200           lda #$0F
                 sta GRACTL
                 ldx #$00
                 stx L_31F3
                 stx HPOSP0
                 stx HPOSP1
                 stx HPOSP2
                 stx HPOSP3
                 stx HPOSM0
                 stx HPOSM1
                 stx HPOSM2
                 stx HPOSM3
                 txa
L_3223           sta $6C00,x
                 sta $6D00,x
                 sta $6E00,x
                 sta $6F00,x
                 inx
                 bne L_3223
                 lda #$01
                 sta GPRIOR
                 ldx #$3E
                 ldy #$03
                 lda #$68
                 sta PMBASE
                 stx SDMCTL
                 sty GRACTL
                 lda #$00
                 sta FPTR2+1
                 sta L_31F3
                 lda #$07
                 ldy #$F6
                 ldx #$31
                 jsr L_1F00
L_3256           lda L_31F3
                 beq L_3256
                 lda L_4405+4
                 clc
                 adc #$36
                 sta HPOSP0
                 sta HPOSP2
                 clc
                 adc #$08
                 sta HPOSP1
                 sta HPOSP3
                 lda #$1F
                 sta PCOLR0
                 sta PCOLR1
                 lda COLOR0
                 sta PCOLR2
                 sta PCOLR3
                 lda #$00
                 sta L_4405+4
                 jsr L_44CB
                 jsr L_44F1
                 ldx #$03
                 ldy #$30
                 stx FRE+2
                 sty FRE+3
L_3294           ldx #$C8
                 ldy #$6C
                 stx FRE+4
                 sty FRE+5
                 ldx #$00
                 stx COLOR2
L_32A1           ldy #$00
L_32A3           lda (FRE+2),y
                 sta (FRE+4),y
                 iny
                 cpy #$0F
                 bne L_32A3
                 inc FRE+5
                 lda FRE+2
                 clc
                 adc #$0F
                 sta FRE+2
                 bcc L_32B9
                 inc FRE+3
L_32B9           inx
                 cpx #$04
                 bne L_32A1
                 ldx #$00
                 ldy #$00
L_32C2           iny
                 bne L_32C2
                 inx
                 cpx #$50
                 bne L_32C2
                 inc FPTR2+1
                 dec PCOLR0
                 dec PCOLR1
                 dec PCOLR2
                 dec PCOLR3
                 lda FPTR2+1
                 cmp #$08
                 bne L_3294
                 lda #$00
                 sta HPOSP0
                 sta HPOSP1
                 sta HPOSP2
                 sta HPOSP3
                 sta HPOSM0
                 sta HPOSM1
                 sta HPOSM2
                 sta HPOSM3
                 lda #$00
                 sta GRACTL
                 sta $57B0
                 sta $57B1
                 sta $57B2
                 sta $57B3
                 sta $57B4
                 sta $57B5
                 jsr $59C5
                 jsr $59C5
                 jsr $59C5
                 jmp L_3353
L_331B           ldx #$00
                 ldy #$6D
                 stx FRE+2
                 sty FRE+3
                 ldx #$30
                 ldy #$9B
                 stx FRE+4
                 sty FRE+5
                 ldx #$00
L_332D           ldy #$00
L_332F           lda (FRE+2),y
L_3331           sta (FRE+4),y
                 iny
                 cpy #$1A
                 bne L_332F
                 lda FRE+4
                 clc
                 adc #$28
                 sta FRE+4
                 bcc L_3343
                 inc FRE+5
L_3343           tya
                 clc
                 adc FRE+2
                 sta FRE+2
                 bcc L_334D
                 inc FRE+3
L_334D           inx
                 cpx #$13
                 bne L_332D
                 rts
L_3353           lda LIVES
                 beq L_33C7
                 dec LIVES
                 lda #$00
                 sta SDMCTL
                 lda #$DE
                 sta L_332F+1
                 lda #$DC
                 sta L_3331+1
                 jsr L_331B
                 lda L_2DFB+5
                 beq L_3375
                 jmp L_2E05
L_3375           ldx #$00
L_3377           lda $9F67,x
                 sta $8F00,x
                 inx
                 cpx #$06
                 bne L_3377
                 ldx #$00
                 txa
L_3385           sta $9F60,x
                 inx
                 cpx #$28
                 bne L_3385
                 ldx #$00
                 ldy #$00
                 jsr L_2881
                 lda #$DE
                 sta L_3331+1
                 lda #$DC
                 sta L_332F+1
                 jsr L_331B
                 lda L_3FFD+3
                 cmp #$20
                 bne L_33AE
                 jsr L_1503
                 jmp L_33B1
L_33AE           jsr L_4012
L_33B1           lda #$07
                 ldy #$62
                 ldx #$E4
                 jsr L_1F00
                 lda #$03
                 sta GRACTL
                 lda #$2E
                 sta SDMCTL
                 jmp L_3A4C
L_33C7           ldx #$00
                 txa
L_33CA           sta $9F60,x
                 inx
                 cpx #$28
                 bne L_33CA
                 ldx #$00
                 stx FRE+3
L_33D6           lda L_31E3,x
                 sta $9F6C,x
                 inx
                 cpx #$10
                 bne L_33D6
                 lda L_2E03+1
                 clc
                 adc #$11
                 sta $9F6D,x
                 lda #$3B
                 sta $9F6E,x
L_33EF           ldx #$00
L_33F1           ldy #$00
L_33F3           iny
                 bne L_33F3
                 inx
                 bne L_33F1
                 inc FRE+3
                 lda FRE+3
                 cmp #$06
                 bne L_33EF
                 lda L_2DFB+5
                 bne L_3409
                 jmp L_3500
L_3409           jmp L_2DDF+1
                 .byte $00, $00, $00, $00, $5C, $C0, $1B, $01
                 .byte $09, $09, $44, $C2, $00, $FF, $58, $43
                 .byte $4F, $08, $81, $36, $C0, $09, $FF, $45
                 .byte $50, $08, $03, $35, $C0, $42, $00, $44
                 .byte $4C, $09, $23, $35, $C0, $87, $00, $43
                 .byte $4F, $4C, $0C, $27, $35, $C0, $B6, $00
                 .byte $4B, $45, $59, $44, $41, $54, $0A, $36
                 .byte $35, $C0, $74, $00, $4C, $41, $53, $54
                 .byte $0A, $37, $35, $C0, $38, $FF, $54, $45
                 .byte $58, $54, $0C, $7F, $36, $C0, $4E, $00
                 .byte $44, $45, $56, $54, $59, $50, $0C, $80
                 .byte $36, $C0, $D9, $00, $44, $45, $56, $4E
                 .byte $55, $4D, $08, $C2, $36, $C0, $6B, $00
                 .byte $50, $54, $09, $47, $37, $C0, $62, $FF
                 .byte $52, $41, $53, $09, $F1, $36, $C0, $91
                 .byte $00, $50, $54, $32, $09, $F3, $36, $C0
                 .byte $A1, $00, $4C, $45, $53, $0A, $03, $37
                 .byte $C0, $7D, $FF, $4E, $45, $57, $54, $0A
                 .byte $1C, $37, $C0, $4E, $FF, $43, $4F, $4E
                 .byte $54, $08, $0E, $37, $C0, $E2, $00, $50
                 .byte $53, $08, $19, $37, $C0, $99, $FF, $49
                 .byte $4D, $0A, $26, $37, $C0, $F6, $FF, $4C
                 .byte $4F, $4F, $50, $0B, $B6, $37, $C0, $AB
                 .byte $FF, $53, $54, $41, $52, $54, $09, $4C
                 .byte $37, $C0, $BF, $00, $4B, $45, $59, $08
                 .byte $55, $37, $C0, $45, $FF, $4B, $32, $09
                 .byte $71, $37, $C0, $C7, $FF, $41, $52, $50
                 .byte $09, $64, $37, $C0, $D0, $FF, $4F, $55
                 .byte $54, $09, $AB, $37, $C0, $0A, $FF, $44
                 .byte $45, $56, $08, $D3, $37, $C0, $4E, $FF
                 .byte $50, $50, $C2, $DA
L_3500           jmp L_2AA0
L_3503           .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $42 ; DL LMS Antic Mode 2
                 .word $9C40
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $41 ; DL JMP
                 .word L_3503
L_3523           .byte $06, $0C, $0A, $08, $3F, $C4, $9C, $01
                 .byte $14, $9D, $05, $64, $9D, $12, $B4, $9D
L_3533           .byte $0A, $04, $9E, $03, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $33, $25, $2C, $25
                 .byte $23, $34, $00, $39, $2F, $35, $32, $00
                 .byte $29, $2E, $30, $35, $34, $00, $24, $25
                 .byte $36, $29, $23, $25, $3B, $0A, $0A, $0A
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $21, $34
                 .byte $21, $32, $29, $00, $30, $21, $24, $24
                 .byte $2C, $25, $33, $3B, $0A, $0A, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $2A, $2F, $39, $33
                 .byte $34, $29, $23, $2B, $3B, $0A, $0A, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $2B, $25, $39
                 .byte $22, $2F, $21, $32, $24, $3B, $0A, $0A
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $11, $00
                 .byte $23, $2F, $2E, $34, $32, $2F, $2C, $2C
                 .byte $25, $32, $3B, $0A, $0A, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $11, $00, $30, $2C, $21
                 .byte $39, $25, $32, $00, $2D, $2F, $24, $25
                 .byte $3B, $0A, $0A, $0A, $00, $00, $00, $00
                 .byte $33, $25, $2C, $25, $23, $34, $00, $2F
                 .byte $30, $34, $29, $2F, $2E, $00, $35, $33
                 .byte $29, $2E, $27, $00, $26, $29, $32, $33
                 .byte $34, $00, $2C, $25, $34, $34, $25, $32
                 .byte $3B, $0A, $0A, $00, $00, $00, $00, $26
                 .byte $29, $32, $25, $00, $22, $35, $34, $34
                 .byte $2F, $2E, $03, $33, $34, $21, $32, $34
                 .byte $00, $2B, $25, $39, $00, $22, $25, $27
                 .byte $29, $2E, $33, $00, $27, $21, $2D, $25
                 .byte $3B, $0A, $0A, $0A, $00, $00, $00, $00
                 .byte $00, $00, $00, $01, $00, $34, $21, $29
                 .byte $34, $2F, $00, $11, $19, $18, $17, $00
                 .byte $01, $00, $29, $2D, $21, $27, $29, $2E
                 .byte $25, $00, $11, $19, $18, $17, $3B, $0A
                 .byte $0A, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $23, $2F, $24, $25, $24, $00
                 .byte $22, $39, $00, $2D, $29, $2B, $25, $00
                 .byte $28, $35, $34, $23, $28, $29, $2E, $33
L_367B           .byte $2F, $2E, $3B, $0B, $03, $00
L_3681           lda #$00
                 sta SDMCTL
                 lda #$00
                 sta ATRACT
                 nop
                 ldx #$03
                 ldy #$35
                 stx SDLSTL
                 sty SDLSTH
                 ldx #$19
                 ldy #$1F
                 stx VDSLST
                 sty VDSLST+1
                 lda #$00
                 sta HPOSP0
                 sta HPOSP1
                 sta HPOSP2
                 sta HPOSP3
                 sta COLOR2
                 jsr L_2AD0
                 lda #$0F
                 sta COLOR0
                 sta COLOR0
                 lda #$03
                 sta L_3533+3
                 ldx #$00
L_36C2           lda #$00
                 sta $9C40,x
                 sta $9D40,x
                 sta $9E40,x
                 sta $9F40,x
                 inx
                 bne L_36C2
                 lda #$8C
                 sta CHBAS
                 ldx #$37
                 ldy #$35
                 stx FRE+2
                 sty FRE+3
                 ldx #$40
                 ldy #$9C
                 stx FRE+4
                 sty FRE+5
                 lda #$07
                 ldy #$4A
                 ldx #$37
                 jsr L_1F00
L_36F1           ldy #$00
L_36F3           lda (FRE+2),y
                 cmp #$0A
                 beq L_3703
                 cmp #$0B
                 beq L_371C
                 sta (FRE+4),y
                 iny
                 jmp L_36F3
L_3703           iny
                 tya
                 clc
                 adc FRE+2
                 sta FRE+2
                 bcc L_370E
                 inc FRE+3
L_370E           lda FRE+4
                 clc
                 adc #$28
                 sta FRE+4
                 bcc L_3719
                 inc FRE+5
L_3719           jmp L_36F1
L_371C           lda #$04
                 jsr L_2C2F
                 lda #$2E
                 sta SDMCTL
L_3726           lda VCOUNT
                 and #$03
                 tax
                 lda L_3523,x
                 sta WSYNC
                 sta COLOR1
                 sta COLPF1
                 jmp L_2A60
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00
                 pha
                 txa
                 pha
                 tya
                 pha
                 ldx #$00
                 ldy #$00
                 lda CH
                 sta FPTR2+1
L_3758           lda L_3523+4,y
                 cmp FPTR2+1
                 beq L_3774
                 iny
                 iny
                 iny
                 inx
                 cpx #$05
                 bne L_3758
L_3767           lda #$FF
                 sta CH
                 pla
                 tay
                 pla
                 tax
                 pla
                 jmp XITVBV
L_3774           lda L_3523+5,y
                 sta FRX
                 lda L_3523+6,y
                 sta EEXP
                 sty NSIGN
                 ldy L_3533+3
                 lda L_3523+5,y
                 sta FR2+4
                 lda L_3523+6,y
                 sta FR2+5
                 lda NSIGN
                 sta L_3533+3
                 ldy #$00
                 lda #$00
                 sta (FR2+4),y
                 lda #$04
                 sta (FRX),y
                 lda FPTR2+1
                 cmp #$0A
                 beq L_37AE
                 cmp #$12
                 beq L_37AE
                 ldy NSIGN
                 sty L_367B+4
                 jmp L_3767
L_37AE           cmp #$0A
                 bne L_37BD
                 lda L_28A3
                 eor #$01
                 sta L_28A3
                 jmp L_37C5
L_37BD           lda L_367B+5
                 eor #$01
                 sta L_367B+5
L_37C5           ldy #$02
                 lda (FRX),y
                 eor #$03
                 sta (FRX),y
                 jmp L_3767
L_37D0           lda #$00
                 sta SDMCTL
                 lda #$07
                 ldy #$62
                 ldx #$E4
                 jsr L_1F00
                 lda #$2E
                 sta SDMCTL
                 ldx #$00
                 stx L_38FE+2
                 stx L_3FFD+3
                 lda #$10
L_37ED           sta $8F00,x
                 inx
                 cpx #$06
                 bne L_37ED
                 lda #$04
                 sta ATRACT
                 sta LIVES
                 jmp L_28A4
                 brk
                 lda $5076
                 bne L_3814
                 lda $5077
                 bne L_3814
                 lda L_4607+4
                 cmp #$6A
                 bcc L_3814
                 jmp L_3000
L_3814           ldx L_3FFD+3
                 lda L_38FE+2
                 cmp $8FC0,x
                 beq L_3822
                 jmp L_4517+4
L_3822           inc L_3FFD+3
                 lda #$00
                 sta L_38FE+2
                 sta FRE+3
L_382C           ldx #$00
L_382E           ldy #$00
L_3830           iny
                 bne L_3830
                 inx
                 bne L_382E
                 inc FRE+3
                 lda FRE+3
                 cmp #$02
                 bne L_382C
                 ldx #$00
L_3840           lda $9F67,x
                 sta $8F00,x
                 inx
                 cpx #$06
                 bne L_3840
                 jmp L_2894
                 .byte $59, $4F, $42, $08, $1A, $53, $C0, $0C
                 .byte $01, $53, $48, $08, $93, $54, $C0, $14
                 .byte $01, $53, $54, $09, $2D, $53, $C0, $2E
                 .byte $01, $53, $4F, $4E, $09, $52, $53, $C0
                 .byte $26, $01, $43, $48, $4B, $08, $3F, $53
                 .byte $C0, $53, $01, $43, $4C, $0A, $6E, $53
                 .byte $C0, $5B, $01, $53, $45, $45, $4E, $08
                 .byte $73, $53, $C0, $38, $FF, $49, $47, $09
                 .byte $9F, $53, $C0, $65, $01, $52, $45, $4D
                 .byte $0A, $79, $53, $C0, $6D, $01, $42, $41
                 .byte $43, $4B, $08, $94, $53, $C0, $25, $02
                 .byte $43, $48, $0A, $95, $53, $C0, $BD, $01
                 .byte $53, $54, $4F, $50, $08, $AA, $53, $C0
                 .byte $48, $FF, $52, $32, $08, $B1, $53, $C0
                 .byte $7F, $01, $42, $31, $0A, $B7, $54, $C0
                 .byte $75, $FF, $47, $4C, $49, $53, $08, $B8
                 .byte $53, $C0, $87, $01, $42, $32, $08, $BF
                 .byte $53, $C0, $8F, $01, $42, $33, $08, $C6
                 .byte $53, $C0, $97, $01, $42, $34, $0A, $06
                 .byte $54, $C0, $13, $02, $42, $4F, $4F, $4D
                 .byte $0B, $DB, $53, $C0, $1C, $02, $00, $00
                 .byte $41, $54, $48, $08, $D8, $53, $C0, $AC
L_38FE           .byte $FF, $55, $00, $00, $28, $A0, $0B, $B0
                 .byte $0B, $C0, $0B, $D0, $0B, $50, $05, $60
                 .byte $07, $70, $07, $80, $07, $E0, $09, $F0
                 .byte $09, $10, $08, $20, $08, $30, $08, $40
                 .byte $05, $90, $0C, $00, $0A
                 sta L_39B0
                 stx L_38FE+3
                 sty L_38FE+4
                 lda CASINI+1
                 clc
                 asl
L_3930           tax
                 lda (FRE+4),y
                 cmp #$05
                 beq L_3985
                 cmp #$06
                 beq L_3985
                 cmp #$07
                 beq L_398B
                 cmp #$08
                 beq L_398B
                 and #$80
                 beq L_3948
                 inx
L_3948           lda L_3C1B+7
                 sta L_3954+1
                 lda L_3C23
                 sta L_3954+2
L_3954           lda $7B4C,x
L_3957           and #$F0
                 ldx #$00
L_395B           cmp L_38FE+5,x
                 beq L_3969
                 inx
                 inx
                 cpx #$20
                 bne L_395B
                 jmp L_397B
L_3969           inx
                 lda L_38FE+5,x
                 tay
L_396E           cpy #$00
                 beq L_397B
                 ldx #$01
                 jsr L_3BB0+4
                 dey
                 jmp L_396E
L_397B           lda L_39B0
                 ldx L_38FE+3
                 jsr L_39A9
                 rts
L_3985           lda COLOR0
                 jmp L_3957
L_398B           lda COLOR1
                 jmp L_3957
                 sta L_39B0
                 stx L_38FE+3
                 sty L_38FE+4
                 lda $507B,x
                 and #$FC
                 lsr
                 lsr
                 clc
                 asl
                 sec
                 sbc #$06
                 jmp L_3930
L_39A9           ldy L_38FE+4
                 inc L_38FE+2
                 rts
L_39B0           .byte $04, $02, $FF, $4C, $50, $34, $08, $53
                 .byte $33, $C0, $39, $FF, $43, $52, $0A, $1B
                 .byte $33, $C0, $50, $FF, $42, $52, $49, $4B
                 .byte $09, $2D, $33, $C0, $C0, $FF, $52, $45
                 .byte $32, $09, $2F, $33, $C0, $BD, $00, $53
                 .byte $54, $31, $09, $31, $33, $C0, $C0, $FF
                 .byte $53, $54, $32, $08, $43, $33, $C0, $E0
                 .byte $00, $41, $42, $09, $4D, $33, $C0, $F1
                 .byte $00, $43, $41, $52, $09, $B2, $33, $C0
                 .byte $00, $00, $45, $4E, $44, $09, $6F, $33
L_3A00           .byte $20, $20, $20, $20, $20, $32, $2F, $35
                 .byte $2E, $24, $20, $20, $20, $20, $32, $25
L_3A10           .byte $21, $24, $39, $3B, $11, $35, $30, $20
                 .byte $10, $10, $10, $10, $10, $10, $20, $28
                 .byte $29, $20, $10, $10, $10, $10, $10, $10
                 .byte $20, $2C, $29, $26, $25, $20, $14, $20
                 .byte $32, $2F, $35, $2E, $24, $20, $11, $20
L_3A38           .byte $20, $11, $04, $00
L_3A3C           jsr L_3B67
                 cmp #$20
                 bne L_3A49
                 jsr L_1503
                 jmp L_3A4C
L_3A49           jsr L_400F
L_3A4C           ldx #$00
L_3A4E           lda L_3A00,x
                 sta $9F6A,x
                 inx
                 cpx #$0E
                 bne L_3A4E
                 lda L_3FFD+3
                 sta FRE+4
                 inc FRE+4
                 lda #$20
                 sta L_3A38
                 ldy #$00
                 sty FRE+5
L_3A69           lda FRE+4
                 sec
                 sbc #$0A
                 sta FRE+4
                 beq L_3A77
                 bcs L_3A77
                 jmp L_3A7E
L_3A77           inc FRE+5
                 ldy #$01
                 jmp L_3A69
L_3A7E           clc
                 adc #$0A
                 sta FRE+4
                 ldx #$00
                 lda #$20
                 cpy #$00
                 beq L_3A94
                 lda FRE+5
                 clc
                 adc #$10
                 sta $9F75,x
                 inx
L_3A94           sta L_3A38
                 lda FRE+4
                 clc
                 adc #$10
                 sta $9F75,x
                 sta L_3A38+1
                 stx FRE+2
                 lda #$2E
                 sta SDMCTL
                 ldx #$00
L_3AAB           ldy #$00
L_3AAD           iny
                 bne L_3AAD
                 inx
                 cpx #$F0
                 bne L_3AAB
                 lda FRE+2
                 clc
                 adc #$0D
                 tax
                 clc
                 adc #$06
                 sta FRE+2
                 ldy #$0E
L_3AC2           lda L_3A00,y
                 sta $9F6A,x
                 inx
                 iny
                 cpx FRE+2
                 bne L_3AC2
                 lda #$00
                 sta FRE+3
L_3AD2           ldx #$00
L_3AD4           ldy #$00
L_3AD6           iny
                 bne L_3AD6
                 inx
                 bne L_3AD4
                 inc FRE+3
                 lda FRE+3
                 cmp #$03
                 bne L_3AD2
                 ldx #$00
L_3AE6           lda L_3A10+4,x
                 sta $9F63,x
                 inx
                 cpx #$23
                 bne L_3AE6
                 ldx #$00
                 lda L_3A38
                 cmp #$20
                 beq L_3AFE
                 sta $9F85,x
                 inx
L_3AFE           lda L_3A38+1
                 sta $9F85,x
                 lda L_3A38+2
                 clc
                 adc #$10
                 sta $9F7D
                 ldx #$00
                 ldy #$01
                 jsr L_460E
                 ldx #$00
                 ldy #$03
                 jsr L_460E
                 lda #$01
                 sta $5002
                 sta L_4A01+1
                 sta L_3A38+3
                 lda #$02
                 sta L_4E03
                 ldx #$00
L_3B2D           lda $8F00,x
                 sta $9F67,x
                 lda L_2BFB+5,x
                 sta $9F71,x
                 inx
                 cpx #$06
                 bne L_3B2D
                 lda LIVES
                 clc
                 adc #$10
                 sta $9F7D
                 lda L_2E03+1
                 clc
                 adc #$11
                 sta $9F63
                 lda L_3FFD+3
                 cmp #$20
                 bne L_3B5A
                 jmp L_1690
L_3B5A           jmp L_28B2
                 lda #$07
                 ldy #$62
                 ldx #$E4
                 jsr L_1F00
                 rts
L_3B67           ldx #$00
                 jsr L_401A
                 lda L_3FFD+3
                 rts
                 .byte $45, $57, $44, $45, $46, $0A, $10, $52
                 .byte $C0, $41, $FF, $4E, $45, $57, $46, $0A
                 .byte $3A, $52, $C0, $04, $03, $46, $52, $45
                 .byte $44, $08, $00, $57, $C0, $76, $FF, $46
                 .byte $52, $08, $74, $57, $C0, $09, $FF, $42
                 .byte $54, $09, $19, $57, $C0, $F4, $FF, $47
                 .byte $45, $4F, $08, $65, $57, $C0, $DF, $FF
                 .byte $53, $4D, $09, $81, $57, $C0, $2E, $03
L_3BB0           .byte $05, $01, $01, $01, $8D, $B0, $3B
                 stx L_3BB0+1
                 sty L_3BB0+2
                 txa
                 sta L_3BB0+3
                 lda #$06
                 sec
                 sbc L_3BB0+3
                 tax
L_3BC8           lda $9F66,x
                 cmp #$19
                 beq L_3BD5
                 inc $9F66,x
                 jmp L_3BE9
L_3BD5           lda #$10
                 sta $9F66,x
                 dex
                 bne L_3BC8
                 ldx #$00
L_3BDF           lda #$10
                 sta $9F66,x
                 inx
                 cpx #$06
                 bne L_3BDF
L_3BE9           ldx L_3BB0+1
                 ldy L_3BB0+2
                 lda L_3BB0
                 rts
                 .byte $33, $0A, $0E, $3E, $C0, $6B, $02, $55
                 .byte $50, $43, $48, $0C, $4F, $C4, $00, $9B
                 .byte $84, $84, $84, $84, $84, $84, $84, $84
                 .byte $84, $84, $84, $84, $84, $84, $84, $84
                 .byte $84, $84, $84, $84, $84, $84, $84, $84
L_3C1B           .byte $84, $04, $84, $02, $41, $00, $92, $00
L_3C23           .byte $00, $00, $00
L_3C26           lda SDLSTH
                 cmp #$3C
                 beq L_3C66
                 ldx #$00
                 ldy #$3C
                 stx SDLSTL
                 sty SDLSTH
                 ldx #$00
                 ldy #$7B
                 stx L_3C1B+7
                 sty L_3C23
                 stx L_3C23+1
                 txa
L_3C45           sta $9B00,x
                 sta $9C00,x
                 sta $9D00,x
                 sta $9E00,x
                 sta $9F00,x
                 inx
                 bne L_3C45
                 ldx #$67
                 ldy #$3C
                 stx VDSLST
                 sty VDSLST+1
                 lda #$C0
                 sta NMIEN
L_3C66           rts
                 pha
                 tya
                 pha
                 txa
                 pha
                 lda VCOUNT
                 cmp #$F2
                 bpl L_3C78
                 lda #$8C
                 sta CHBASE
L_3C78           lda L_3C23+1
                 tay
                 clc
                 adc #$02
                 sta L_3C23+1
                 ldx L_3C1B+7
                 lda L_3C23
                 stx FRE
                 sta FRE+1
                 cpy #$30
                 beq L_3CC5
                 cpy #$34
                 beq L_3CD8
                 lda (FRE),y
                 sta COLPF2
                 iny
                 lda (FRE),y
                 sta COLPF3
                 dey
                 cpy #$00
                 bne L_3CA7
                 sty L_3C23+2
L_3CA7           cpy #$32
                 beq L_3CD0
L_3CAB           jsr L_3CF3
                 and #$04
                 bne L_3CB8
                 lda KBCODE
                 sta CH
L_3CB8           lda #$00
                 sta POKMSK
                 sta IRQEN
                 pla
                 tax
                 pla
                 tay
                 pla
                 rti
L_3CC5           lda #$1F
                 sta COLPF2
                 inc L_3C23+2
                 jmp L_3CAB
L_3CD0           lda #$00
                 sta COLPF2
                 jmp L_3CAB
L_3CD8           lda #$0F
                 sta COLPF0
                 sta COLPF1
                 lda #$00
                 sta L_3C23+1
                 lda #$8C
                 sta CHBASE
                 jmp L_3CAB
                 jmp L_3CAB
                 .byte $3C, $00, $00
L_3CF3           lda #$00
                 sta SHFLOK
                 lda SKSTAT
                 rts
L_3CFC           .byte $00, $00, $00, $00, $04, $28, $70, $8E
                 .byte $00, $3D, $8C, $01, $3D, $8D, $02, $3D
                 cmp #$69
                 bpl L_3D15
                 ldx #$00
                 jmp L_3D20
L_3D15           cmp #$72
                 bpl L_3D1E
                 ldx #$01
                 jmp L_3D20
L_3D1E           ldx #$02
L_3D20           lda #$06
                 jmp L_45E0
L_3D25           ldx L_3CFC+4
                 ldy L_3CFC+5
                 lda L_3CFC+6
                 rts
                 lda $57B0,x
                 and #$02
                 lsr
                 sta $57E4
                 lda $57B0,x
                 clc
                 asl
                 asl
                 asl
                 asl
                 asl
                 asl
                 asl
                 sta $57E3
                 lda $57B0,x
                 and #$03
                 clc
                 asl
                 asl
                 asl
                 asl
                 asl
                 asl
                 clc
                 adc $57E3
                 sta $57E3
                 bcc L_3D5E
                 inc $57E4
L_3D5E           lda L_3DAB,x
                 and #$F8
                 lsr
                 lsr
                 lsr
                 clc
                 adc $57E4
                 sta $57E4
                 lda L_3DAB,x
                 and #$07
                 clc
                 asl
                 asl
                 asl
                 asl
                 asl
                 clc
                 adc $57E3
                 sta $57E3
                 bcc L_3D84
                 inc $57E4
L_3D84           lda L_3DAB,x
                 and #$F0
                 lsr
                 lsr
                 lsr
                 lsr
                 clc
                 adc $57E4
                 sta $57E4
                 lda L_3DAB,x
                 and #$0F
                 clc
                 asl
                 asl
                 asl
                 asl
                 clc
                 adc $57E3
                 sta $57E3
                 bcc L_3DAA
                 inc $57E4
L_3DAA           rts
L_3DAB           .byte $00, $00, $00, $00, $00, $00
                 lda #$04
                 sta $57BC,x
                 lda L_3DAB,x
                 cmp #$03
                 beq L_3DC1
                 inc L_3DAB,x
                 rts
L_3DC1           lda #$00
                 sta $57B0,x
                 sta $57B3,x
                 sta L_3DAB,x
                 sta L_3DAB+3,x
                 lda $5C6F
                 sta FRE+4
                 jsr L_3F93
                 lda FRE+4
                 sta $5C6F
                 lda L_3FFD+3
                 and #$03
                 tay
                 lda L_3DE9,y
                 sta $57BC,x
                 rts
L_3DE9           .byte $02, $03, $01, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00
L_3E00           ldx $57E8
                 lda $5DD4,x
                 and #$06
                 eor #$06
                 sta $5DD4,x
L_3E0D           rts
                 ldx $57E8
                 lda $57B3,x
                 cmp #$20
                 bcc L_3E0D
                 ldx #$00
                 ldy #$01
                 stx FRE+3
L_3E1E           lda (FRE+4),y
                 cmp #$37
                 bmi L_3E37
                 cmp #$60
                 bpl L_3E37
                 inx
                 tya
                 clc
                 adc #$28
                 tay
                 cpx $5DDB
                 bne L_3E1E
                 jmp $5F30
                 rts
L_3E37           ldx #$00
                 ldy #$04
                 inc FRE+3
                 lda FRE+3
                 cmp #$02
                 bne L_3E1E
                 lda $5DD3
                 sta FRE+5
                 lda $5DD2
                 sec
                 sbc #$28
                 sta FRE+4
                 bcs L_3E54
                 dec FRE+5
L_3E54           ldy #$02
L_3E56           lda (FRE+4),y
                 cmp #$37
                 bpl L_3E5F
L_3E5C           jmp $5F30
L_3E5F           jmp L_3FC9
L_3E62           nop
                 inx
                 iny
                 cpx $5DDA
                 bne L_3E56
                 ldx $57E8
                 lda #$01
                 sta $5DD4,x
                 rts
                 ldx $57E8
                 lda $57B3,x
                 and #$07
                 beq L_3E80
                 jmp L_3EE2
L_3E80           ldx $57E8
                 lda $5DDF,x
                 bne L_3EE2
                 lda $5DD2
                 sta FRE+4
                 lda $5DD3
                 sta FRE+5
                 ldy #$01
                 ldx #$00
                 stx FRE+3
                 stx FRE+2
L_3E9A           lda (FRE+4),y
                 cmp #$37
                 bmi L_3EB3
                 cmp #$60
                 bpl L_3EB3
                 inx
                 tya
                 clc
                 adc #$28
                 tay
                 cpx $5DDB
                 bne L_3E9A
                 sty FR0+5
                 inc FRE+2
L_3EB3           inc FRE+3
                 ldy #$04
                 ldx #$00
                 lda FRE+3
                 cmp #$02
                 bne L_3E9A
                 lda FRE+2
                 beq L_3EE2
                 ldy #$04
                 ldx $57E8
                 lda FR0+5
                 cmp #$01
                 beq L_3ED0
                 ldy #$02
L_3ED0           tya
                 sta $5DD4,x
L_3ED4           lda VCOUNT
                 and #$07
                 beq L_3ED4
                 clc
                 asl
                 asl
                 sta $5DDC,x
                 rts
L_3EE2           ldx $57E8
                 lda $57B0,x
                 and #$03
                 bne L_3F1F
                 lda $57B3,x
                 and #$07
                 bne L_3F1F
                 lda $5DD3
                 sta FRE+5
                 lda $5DD2
                 sec
                 sbc #$28
                 sta FRE+4
                 bcs L_3F04
                 dec FRE+5
L_3F04           ldx #$00
                 ldy #$02
L_3F08           lda (FRE+4),y
                 cmp #$37
                 bpl L_3F11
                 jmp L_3FBB
L_3F11           cmp #$60
                 bmi L_3F18
                 jmp L_3FBB
L_3F18           inx
                 iny
                 cpx $5DDA
                 bne L_3F08
L_3F1F           ldx $57E8
                 dec $57B3,x
                 dec $57B3,x
                 rts
                 ldx $57E8
                 lda $57B3,x
                 cmp #$20
                 bcc L_3F4E
                 lda #$08
                 sta $5DDC,x
L_3F38           ldy #$04
                 lda VCOUNT
                 and #$03
                 beq L_3F38
                 cmp #$03
                 beq L_3F38
                 cmp #$02
                 bne L_3F4A
                 tay
L_3F4A           tya
                 sta $5DD4,x
L_3F4E           rts
                 ldx $57E8
                 lda $5DD2
                 sta FRE+4
                 lda $5DD3
                 sta FRE+5
                 ldy #$51
                 lda $5DD4,x
                 cmp #$04
                 beq L_3F67
                 ldy #$54
L_3F67           lda (FRE+4),y
                 cmp #$37
                 bmi L_3F74
                 cmp #$60
                 bpl L_3F74
                 jmp $5F30
L_3F74           jmp L_3E00
                 lda $57B3,x
                 cmp #$FA
                 bcs L_3F93
                 inc $57B3,x
                 inc $57B3,x
                 lda $5DD4,x
                 cmp #$04
                 beq L_3F8F
                 inc $57B0,x
                 rts
L_3F8F           dec $57B0,x
                 rts
L_3F93           lda #$00
                 sta $5C60,x
                 sta $5C66,x
                 sta $5C69,x
                 sta $5C6C,x
                 sta $5C6F
                 sta $5DD7,x
                 sta $5DDC,x
                 sta $5DDF,x
                 sta $5DE2,x
                 lda #$03
                 sta $5C63,x
                 lda #$04
                 sta $5DD4,x
                 rts
L_3FBB           ldx $57E8
                 lda #$00
                 sta $5DDC,x
                 sta $5DDF,x
                 jmp L_3F38
L_3FC9           cmp #$5F
                 beq L_3FCF
                 bpl L_3FD2
L_3FCF           jmp L_3E62
L_3FD2           jmp L_3E5C
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_3FFD           .byte $00, $00, $00, $00, $0D, $00, $00, $00
                 .byte $07, $05, $03, $00, $83, $9D, $01
                 jsr L_4018
L_400F           jsr L_42F9
L_4012           jsr L_2B00
                 jmp L_4D4A
L_4018           ldx #$2E
L_401A           ldy #$03
L_401C           lda #$6C
                 stx SDMCTL
                 sty GRACTL
                 sta PMBASE
                 lda #$8F
                 sta PCOLR0
                 sta PCOLR1
                 sta PCOLR2
                 lda #$04
                 sta L_46F0+3
                 sta L_46F0+4
                 sta L_46F0+5
                 lda #$1A
                 sta L_4A01+2
                 ldx #$40
                 lda #$00
                 jsr L_4697
                 sta $5C70
                 sta L_4E04
                 sta $5002
                 sta $5072
                 sta $5073
                 sta $5074
                 sta L_4405+6
                 sta $5277
                 sta $5278
                 sta $5279
                 sta $5079
                 sta $507A
                 sta $507B
                 sta $507C
L_4073           sta L_4C00,x
                 inx
                 cpx #$D5
                 bne L_4073
                 ldx #$00
L_407D           lda $5C00,x
                 sta $8990,x
                 sta $89A8,x
                 inx
                 cpx #$18
                 bne L_407D
                 ldx #$AC
                 ldy #$9E
                 stx L_46C0
                 stx L_46C0+2
                 stx L_46C0+4
                 sty L_46C0+1
                 sty L_46C0+3
                 sty L_46C0+5
                 ldx #$09
                 stx L_46C0+6
                 stx L_46C0+7
                 stx L_46C8
                 ldx #$0E
                 ldy #$17
                 stx L_46F0+6
                 stx L_46F0+7
                 stx L_46F8
                 sty L_46F8+1
                 sty L_46F8+2
                 sty L_46F8+3
                 ldx #$01
                 stx L_46C8+1
                 stx L_46C8+2
                 stx L_46C8+3
                 stx $5075
                 dex
                 stx $5076
                 stx $5077
                 stx L_4607+2
                 stx L_4607+3
                 stx L_4607+5
                 stx L_4607+6
                 stx L_46D8+1
                 stx L_46D8+2
                 stx L_46D8+3
                 stx L_46D8+4
                 stx L_46D8+5
                 stx L_46D8+6
                 stx L_46D8+7
                 lda #$04
                 sta STICK0
                 ldx #$83
                 ldy #$62
                 stx L_4607+1
                 sty L_4607+4
                 ldx #$00
                 ldy #$03
                 jsr L_460E
                 ldx #$00
                 ldy #$02
                 jsr L_460E
                 lda #$88
                 sta CHBAS
                 jsr L_3C26
                 lda L_3FFD+3
                 and #$03
                 sta L_3FFD+4
                 ldx #$00
                 ldy #$90
                 stx FRE+2
                 sty FRE+3
L_412D           cpx L_3FFD+4
                 beq L_4141
                 lda FRE+2
                 clc
                 adc #$80
                 sta FRE+2
                 bcc L_413D
                 inc FRE+3
L_413D           inx
                 jmp L_412D
L_4141           ldy #$00
L_4143           lda (FRE+2),y
                 sta $89C0,y
                 iny
                 cpy #$80
                 bne L_4143
                 ldx #$07
                 ldy #$9B
                 stx FRE+2
                 sty FRE+3
                 lda #$38
                 sta FRE+4
                 ldx #$00
L_415B           ldy #$00
L_415D           stx L_3FFD+4
                 sty L_3FFD+5
                 ldx #$00
                 ldy #$00
L_4167           tya
                 clc
                 adc #$04
                 sta FRE+5
L_416D           lda FRE+4
                 sta (FRE+2),y
                 iny
                 inc FRE+4
                 cpy FRE+5
                 bne L_416D
                 dey
                 dey
                 dey
                 dey
                 tya
                 clc
                 adc #$28
                 tay
                 inx
                 cpx #$04
                 bne L_4167
                 ldx L_3FFD+4
                 ldy L_3FFD+5
                 lda #$38
                 sta FRE+4
                 lda FRE+2
                 clc
                 adc #$04
                 sta FRE+2
                 bcc L_419B
                 inc FRE+3
L_419B           iny
                 cpy #$07
                 bne L_415D
                 lda FRE+2
                 clc
                 adc #$84
                 sta FRE+2
                 bcc L_41AB
                 inc FRE+3
L_41AB           inx
                 cpx #$07
                 bne L_415B
                 ldx #$88
                 ldy #$82
                 lda L_3FFD+3
                 and #$01
                 beq L_41BF
                 ldx #$BA
                 ldy #$B4
L_41BF           stx COLOR0
                 sty COLOR1
                 ldx #$00
L_41C7           lda #$17
                 sta $9B08,x
                 lda #$1C
                 sta $9F40,x
                 inx
                 cpx #$1C
                 bne L_41C7
                 ldx #$13
                 stx $9B06
                 inx
                 stx $9B07
                 inx
                 stx $9B22
                 inx
                 stx $9B23
                 ldx #$2E
                 ldy #$9B
                 stx FRE+2
                 sty FRE+3
                 ldx #$00
L_41F1           ldy #$00
                 lda #$22
                 sta (FRE+2),y
                 iny
                 lda #$23
                 sta (FRE+2),y
                 ldy #$28
                 lda #$24
                 sta (FRE+2),y
                 iny
                 lda #$25
                 sta (FRE+2),y
                 ldy #$50
                 lda #$26
                 sta (FRE+2),y
                 iny
                 lda #$27
                 sta (FRE+2),y
                 ldy #$78
                 lda #$28
                 sta (FRE+2),y
                 iny
                 lda #$29
                 sta (FRE+2),y
                 ldy #$1C
                 lda #$2A
                 sta (FRE+2),y
                 iny
                 lda #$2B
                 sta (FRE+2),y
                 ldy #$44
                 lda #$2C
                 sta (FRE+2),y
                 iny
                 lda #$2D
                 sta (FRE+2),y
                 ldy #$6C
                 lda #$2E
                 sta (FRE+2),y
                 iny
                 lda #$2F
                 sta (FRE+2),y
                 ldy #$94
                 lda #$30
                 sta (FRE+2),y
                 iny
                 lda #$31
                 sta (FRE+2),y
                 lda FRE+2
                 clc
                 adc #$A0
                 sta FRE+2
                 bcc L_4254
                 inc FRE+3
L_4254           inx
                 cpx #$07
                 bne L_41F1
                 ldx #$18
                 stx $9F3E
                 inx
                 stx $9F3F
                 inx
                 stx $9F5A
                 inx
                 stx $9F5B
                 ldx #$00
L_426C           txa
                 clc
                 adc #$32
                 sta $9B0E,x
                 txa
                 clc
                 adc #$35
                 sta $9B1A,x
                 lda #$00
                 sta $5C66,x
                 sta $5C69,x
                 sta $5C6C,x
                 sta $57B0,x
                 sta $57B3,x
                 sta $57B6,x
                 sta $57B9,x
                 sta $57E5,x
                 sta $57E8
                 sta $5DD7,x
                 sta $5DDC,x
                 sta $5DDF,x
                 sta $5DE2,x
                 lda #$04
                 sta $5DD4,x
                 inx
                 cpx #$03
                 bne L_426C
                 ldx #$00
L_42AF           lda $9EFA,x
                 sta L_43FD+3,x
                 txa
                 clc
                 adc #$48
                 sta $9EFA,x
                 inx
                 cpx #$08
                 bne L_42AF
                 ldx #$00
L_42C3           lda #$00
                 sta $9F65,x
                 sta $9F6A,x
                 inx
                 cpx #$1B
                 bne L_42C3
                 lda #$48
                 sta L_4405+3
                 sta L_4405+4
                 jsr L_287A
                 lda VCOUNT
                 and #$07
                 clc
                 adc #$03
                 sta L_4E00
                 lda L_3FFD+3
                 and #$03
                 tax
                 lda L_43E5,x
                 sta $57BC
                 sta $57BD
                 sta $57BE
                 rts
L_42F9           ldx #$00
                 ldy #$7B
                 stx FRE+2
                 sty FRE+3
                 ldy #$70
                 stx FRE+4
                 sty FRE+5
                 ldx #$00
L_4309           cpx L_3FFD+3
                 beq L_431D
                 lda FRE+2
                 clc
                 adc #$26
                 sta FRE+2
                 bcc L_4319
                 inc FRE+3
L_4319           inx
                 jmp L_4309
L_431D           ldx #$00
L_431F           cpx L_3FFD+3
                 beq L_4344
                 ldy #$00
L_4326           lda (FRE+4),y
                 cmp #$FF
                 beq L_4330
                 iny
                 jmp L_4326
L_4330           iny
                 sty L_3FFD+4
                 lda FRE+4
                 clc
                 adc L_3FFD+4
                 sta FRE+4
                 bcc L_4340
                 inc FRE+5
L_4340           inx
                 jmp L_431F
L_4344           ldx FRE+2
                 ldy FRE+3
                 stx L_3C1B+7
                 sty L_3C23
                 ldx #$30
                 ldy #$9B
                 stx FRE+2
                 sty FRE+3
                 ldx #$00
                 stx L_3FFD+6
L_435B           ldy #$00
                 lda (FRE+4),y
                 cmp #$FF
                 beq L_43D4
                 sta L_3FFD+4
                 and #$1F
                 sta L_3FFD+5
                 tax
                 lda L_3FFD+4
                 and #$E0
                 lsr
                 lsr
                 lsr
                 lsr
                 lsr
                 tay
                 lda L_3FFD+7,y
                 sta L_3FFD+5
L_437D           ldy #$00
                 lda L_3FFD+4
                 and #$E0
                 beq L_4397
                 lda L_3FFD+5
                 sta (FRE+2),y
                 inc L_3FFD+5
                 iny
                 lda L_3FFD+5
                 sta (FRE+2),y
                 dec L_3FFD+5
L_4397           lda FRE+2
                 clc
                 adc #$02
                 sta FRE+2
                 bcc L_43A2
                 inc FRE+3
L_43A2           dex
                 cpx #$00
                 bne L_437D
                 lda FRE+4
                 cmp #$FF
                 bne L_43AF
                 inc FRE+5
L_43AF           inc FRE+4
                 lda L_3FFD+4
                 and #$1F
                 clc
                 adc L_3FFD+6
                 sta L_3FFD+6
                 cmp #$0D
                 bne L_435B
                 lda #$00
                 sta L_3FFD+6
                 lda FRE+2
                 clc
                 adc #$0E
                 sta FRE+2
                 bcc L_43D1
                 inc FRE+3
L_43D1           jmp L_435B
L_43D4           rts
L_43D5           ldx #$00
                 txa
L_43D8           sta $6D00,x
                 sta $6E00,x
                 sta $6F00,x
                 inx
                 bne L_43D8
                 rts
L_43E5           .byte $02, $03, $01, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_43FD           .byte $00, $00, $00, $3F, $3C, $3D, $3E, $3F
L_4405           .byte $3C, $3D, $3E, $48, $48, $1A, $00, $00
                 .byte $00
L_440E           and #$FC
                 lsr
                 lsr
                 lda L_4405+6
                 clc
                 adc #$80
                 sta FRE+3
                 lda L_4405+6
                 and #$07
                 clc
                 asl
                 asl
                 asl
                 asl
                 lda #$00
                 sta FRE+2
                 lda L_4405+4
                 and #$03
                 clc
                 asl
                 asl
                 asl
                 asl
                 asl
                 asl
                 clc
                 adc FRE+2
                 sta FRE+2
                 bcc L_443D
                 inc FRE+3
L_443D           ldx #$40
L_443F           ldy #$8A
                 stx LNFLG
                 sty NGFLAG
                 ldx #$00
L_4447           lda L_43FD+3,x
                 and #$E0
                 lsr
                 lsr
                 lsr
                 lsr
                 lsr
                 clc
L_4452           adc #$88
                 sta CASINI+1
                 lda L_43FD+3,x
                 and #$1F
                 asl
                 asl
                 asl
                 sta CASINI
                 ldy #$00
L_4462           lda FRE+2
                 sta FRE+4
                 lda FRE+3
                 clc
                 adc #$04
                 sta FRE+5
                 lda (CASINI),y
                 and (FRE+4),y
                 ora (FRE+2),y
                 sta (LNFLG),y
                 iny
                 cpy #$08
                 bne L_4462
                 lda FRE+2
                 clc
                 adc #$08
                 sta FRE+2
                 lda LNFLG
                 clc
                 adc #$08
                 sta LNFLG
                 inx
                 cpx #$08
                 bne L_4447
                 rts
L_448E           lda L_4405+4
                 sta L_4405+3
                 and #$FC
                 lsr
                 lsr
                 sta L_4405+5
                 ldx #$E8
                 ldy #$9E
                 stx FRE+4
                 sty FRE+5
                 lda FRE+4
                 clc
                 adc L_4405+5
                 sta FRE+4
                 bcc L_44AF
                 inc FRE+5
L_44AF           rts
L_44B0           ldy #$00
L_44B2           lda L_4405+3
                 cmp #$08
                 bcc L_44C2
                 cmp #$22
                 bcs L_44C2
                 lda L_43FD+3,y
                 sta (FRE+4),y
L_44C2           inc L_4405+3
                 iny
                 cpy #$08
                 bne L_44B2
                 rts
L_44CB           lda L_4405+3
                 and #$FC
                 lsr
                 lsr
                 sta L_4405+3
                 ldx #$E8
                 ldy #$9E
                 stx FRE+4
                 sty FRE+5
                 lda FRE+4
                 clc
                 adc L_4405+3
                 sta FRE+4
                 bcc L_44E9
                 inc FRE+5
L_44E9           lda L_3C23+2
                 nop
                 nop
                 jmp L_44B0
L_44F1           jsr L_448E
                 ldy #$00
L_44F6           lda L_4405+5
                 cmp #$08
                 bcc L_450C
                 cmp #$22
                 bcs L_450C
                 lda (FRE+4),y
                 sta L_43FD+3,y
                 tya
                 clc
                 adc #$48
                 sta (FRE+4),y
L_450C           inc L_4405+5
                 iny
                 cpy #$08
                 bne L_44F6
                 jmp L_454F
L_4517           .byte $01, $20, $0C, $40, $AD, $24, $3C
                 cmp #$1C
                 bmi L_4525
                 jsr L_46FD
L_4525           lda L_3C23+2
                 beq L_4517+4
                 jsr L_44CB
                 jsr $59C7
                 jsr L_44F1
                 jsr L_4EFA
                 jsr $5DE5
                 lda #$00
                 jsr L_4CD7
L_453E           jsr $8E7A
                 jsr $5003
                 jsr L_2C03+5
                 jmp L_28BF
L_454A           inx
L_454B           php
L_454C           lse L_1008+2
L_454F           stx L_454A
                 sty L_454B
                 sta L_454C
                 ldy #$0F
                 lda L_4A01+2
                 cmp #$1A
                 bne L_4563
                 ldy #$0A
L_4563           sty L_454C+1
                 ldy #$10
                 lda L_4A01+2
                 cmp #$1A
                 beq L_4571
                 ldy #$14
L_4571           sty L_454C+2
                 ldx $57E8
                 lda $5C69,x
                 cmp #$06
                 beq L_45AE
                 lda $57B3,x
                 cmp #$D0
                 bcc L_45AE
                 cmp #$E0
                 bcs L_45AE
                 lda $57B0,x
                 clc
                 adc L_454C+1
                 cmp L_4405+4
                 bcc L_45AE
                 lda $57B0,x
                 sec
                 sbc L_454C+2
                 cmp L_4405+4
                 bcs L_45AE
                 lda #$06
                 sta $5C69,x
                 ldx #$02
                 jsr L_3BB0+4
                 jsr L_2AC7
L_45AE           ldx L_454A
                 ldy L_454B
                 lda L_454C
                 jmp L_440E
                 lda STICK0
                 sta L_4517
                 cmp #$0B
                 bne L_45D0
                 dec L_4405+4
                 dec L_4405+4
                 dec L_4405+4
                 jmp L_45DD
L_45D0           cmp #$07
                 bne L_45DD
                 inc L_4405+4
                 inc L_4405+4
                 inc L_4405+4
L_45DD           rts
                 brk
                 brk
L_45E0           lda $5C69,x
                 cmp #$05
                 bne L_45FC
                 lda L_3CFC+6
                 lda #$06
                 sta $5C69,x
                 lda #$04
                 sta $57BC,x
                 ldx #$02
                 jsr L_2824
                 jsr L_3BB0+4
L_45FC           jmp L_3D25
L_45FF           .byte $00, $00, $00, $40, $A0, $40, $00, $00
L_4607           .byte $00, $84, $00, $00, $63, $00, $00
L_460E           txa
                 sta L_4607
                 sta FRE+4
                 and #$FE
                 lsr
                 clc
                 adc #$6E
                 sta FRE+5
                 lda FRE+4
                 and #$01
                 clc
                 asl
                 asl
                 asl
                 asl
                 asl
                 asl
                 jsr L_4677
                 cpy #$02
                 beq L_4656
                 cpy #$04
                 beq L_4663
                 lda L_4607+4,x
                 cpy #$03
                 beq L_463F
                 tay
                 dey
                 tya
                 jmp L_4642
L_463F           tay
                 iny
                 tya
L_4642           and #$7F
                 tay
                 sta L_4607+4,x
                 ldx #$00
L_464A           lda L_45FF+1,x
L_464D           sta (FRE+4),y
                 iny
                 inx
                 cpx #$06
                 bne L_464A
                 rts
L_4656           ldx L_4607
                 jsr L_4670
                 sta HPOSP0,x
                 inc L_4607+1,x
                 rts
L_4663           ldx L_4607
                 jsr L_4670
                 sta HPOSP0,x
                 dec L_4607+1,x
                 rts
L_4670           lda L_4607+1,x
                 sec
                 sbc #$01
                 rts
L_4677           asl
                 clc
                 adc #$01
                 sta FRE+4
                 rts
                 jmp L_2AB0
L_4681           sta FR2+5
                 nop
                 lda L_3FFD+3
                 cmp #$20
                 beq L_4691
                 nop
                 lda FR2+5
                 cmp #$60
                 rts
L_4691           nop
                 lda FR2+5
                 cmp #$48
                 rts
L_4697           sta $8F10
                 jmp L_2FA0
                 rts
                 lda L_4607+1
                 sec
                 sbc #$2C
                 sec
                 sbc L_4405+4
                 cmp #$0A
                 bpl L_46BD
                 sta FR2+4
                 lda #$0A
                 sec
                 sbc FR2+4
                 adc L_4607+1
                 sta L_4607+1
                 lda L_4607+1
                 rts
L_46BD           jmp L_2AB0
L_46C0           .byte $AC, $9E, $AC, $9E, $AC, $9E, $09, $09
L_46C8           .byte $09, $01, $01, $01, $01, $00, $00, $00
L_46D0           .byte $00, $01, $00, $02, $00, $00, $61, $9E
L_46D8           .byte $01, $00, $00, $00, $00, $00, $00, $00
L_46E0           .byte $00, $02, $00, $01, $00, $00, $01, $00
                 .byte $01, $00, $00, $00, $00, $01, $00, $02
L_46F0           .byte $00, $00, $00, $06, $06, $06, $0E, $0E
L_46F8           .byte $0E, $17, $17, $17, $01
L_46FD           ldx L_46F8+4
                 lda $5075,x
                 bne L_4708
                 jmp L_48F7
L_4708           lda L_46F0,x
                 cmp L_46F0+3,x
                 bcs L_4716
                 inc L_46F0,x
                 jmp L_48F7
L_4716           lda #$00
                 sta L_46F0,x
                 lda L_3C23+2
                 txa
                 clc
                 asl
                 sta L_46D0+5
                 stx L_46D0+4
                 jsr L_4A04
                 jsr L_495D
                 beq L_474B
                 jmp L_4964
L_4732           and #$F3
                 ora #$08
                 jsr L_2FB0
                 lda L_4A01+1
                 cmp #$02
                 bne L_474B
                 lda L_46C0+6,x
                 and #$FC
                 ora L_4A01
                 sta L_46C0+6,x
L_474B           lda L_46C8+1,x
                 clc
                 asl
                 sta L_46D8+7
                 ldy L_46D0+5
                 lda L_46C0,y
                 sta FRE+4
                 sta L_46D0+6
                 iny
                 lda L_46C0,y
                 sta FRE+5
                 sta L_46D0+7
                 ldy L_46D8+7
                 iny
                 lda L_46D8+1,x
                 cmp L_46E0,y
                 bcs L_4779
                 inc L_46D8+1,x
                 jmp L_4824
L_4779           lda #$00
                 sta L_46D8+1,x
                 lda L_46C0+6,x
                 and #$0C
                 sta L_46D8
                 cmp #$08
                 beq L_4791
                 ldy #$51
                 ldx #$03
                 jmp L_4795
L_4791           ldy #$01
                 ldx #$01
L_4795           lda (FRE+4),y
                 cmp #$60
                 bmi L_47A2
                 cmp #$7B
                 bpl L_47A2
                 jmp L_2CD0
L_47A2           cmp #$48
                 beq L_47D4
                 cmp #$49
                 beq L_47D4
                 cmp #$4A
                 beq L_47D4
                 cmp #$4B
                 beq L_47D4
                 cmp #$4C
                 beq L_47D4
                 cmp #$4D
                 beq L_47D4
                 cmp #$4E
                 beq L_47D4
                 cmp #$4F
                 beq L_47D4
                 cmp #$38
                 beq L_47D4
                 bpl L_47CB
                 jmp L_4930
L_47CB           nop
                 jsr L_4681
                 bmi L_47D4
                 jmp L_4930
L_47D4           txa
                 tay
                 ldx L_46D0+4
                 jsr L_460E
                 ldx L_46D0+4
                 ldy L_46D0+5
                 lda L_46D8
                 cmp #$08
                 beq L_4807
                 lda L_4607+4,x
                 and #$03
                 bne L_4824
                 inc L_46F8+1,x
                 ldx L_46D0+5
                 lda L_46D0+6
                 clc
                 adc #$28
                 sta L_46D0+6
                 bcc L_4824
                 inc L_46D0+7
                 jmp L_4824
L_4807           lda L_4607+4,x
                 and #$03
                 cmp #$03
                 bne L_4824
                 dec L_46F8+1,x
                 ldx L_46D0+5
                 lda L_46D0+6
                 sec
                 sbc #$28
                 sta L_46D0+6
                 bcs L_4824
                 dec L_46D0+7
L_4824           ldy L_46D8+7
                 ldx L_46D0+4
                 lda L_46D8+4,x
                 cmp L_46E0,y
                 bcs L_4838
                 inc L_46D8+4,x
                 jmp L_48E4
L_4838           lda #$00
                 sta L_46D8+4,x
                 ldy L_46D0+5
                 ldx L_46D0+4
                 lda L_46D0+6
                 sta FRE+4
                 iny
                 lda L_46D0+7
                 sta FRE+5
                 ldx L_46D0+4
                 lda L_46C0+6,x
                 and #$03
                 sta L_46D8
                 cmp #$02
                 beq L_4864
                 ldy #$2A
                 ldx #$02
                 jmp L_4868
L_4864           ldy #$28
                 ldx #$04
L_4868           lda (FRE+4),y
                 cmp #$60
                 bmi L_4875
                 cmp #$7B
                 bpl L_4875
                 jmp L_2CE3
L_4875           cmp #$48
                 beq L_48A1
                 cmp #$49
                 beq L_48A1
                 cmp #$4A
                 beq L_48A1
                 cmp #$4B
                 beq L_48A1
                 cmp #$4C
                 beq L_48A1
                 cmp #$4D
                 beq L_48A1
                 cmp #$4E
                 beq L_48A1
                 cmp #$4F
                 beq L_48A1
                 cmp #$38
                 beq L_48A1
                 bmi L_4905
                 nop
                 jsr L_4681
                 bpl L_4905
L_48A1           txa
                 tay
                 ldx L_46D0+4
                 jsr L_460E
                 ldx L_46D0+4
                 lda L_46D8
                 cmp #$02
                 beq L_48CD
                 lda L_4607+1,x
                 and #$03
                 bne L_48E4
                 inc L_46F0+6,x
                 lda L_46D0+6
                 cmp #$FF
                 bne L_48C7
                 inc L_46D0+7
L_48C7           inc L_46D0+6
                 jmp L_48E4
L_48CD           lda L_4607+1,x
                 and #$03
                 cmp #$03
                 bne L_48E4
                 dec L_46F0+6,x
                 lda L_46D0+6
                 bne L_48E1
                 dec L_46D0+7
L_48E1           dec L_46D0+6
L_48E4           ldx L_46D0+4
                 ldy L_46D0+5
                 lda L_46D0+6
                 sta L_46C0,y
                 iny
                 lda L_46D0+7
                 sta L_46C0,y
L_48F7           ldx L_46F8+4
                 cpx #$02
                 bne L_4900
                 ldx #$FF
L_4900           inx
                 stx L_46F8+4
                 rts
L_4905           stx FRE+2
                 ldx L_46D0+4
                 jmp L_28CC
                 cmp #$02
                 bne L_491D
L_4911           lda L_4607+1,x
                 and #$03
                 beq L_491D
L_4918           ldx FRE+2
                 jmp L_48A1
L_491D           jmp L_1A60
L_4920           lda L_46C0+6,x
                 eor #$03
                 sta L_46C0+6,x
                 lda #$00
                 sta L_46D8+4,x
                 jmp L_48E4
L_4930           stx FRE+2
                 ldx L_46D0+4
                 jmp L_28E5
                 cmp #$04
                 bne L_494A
L_493C           lda L_4607+4,x
                 and #$03
                 cmp #$03
                 beq L_494A
L_4945           ldx FRE+2
                 jmp L_47D4
L_494A           jmp L_1A63
L_494D           lda L_46C0+6,x
                 eor #$0C
                 sta L_46C0+6,x
                 lda #$00
                 sta L_46D8+4,x
                 jmp L_4824
L_495D           jsr L_49AD
                 sta $5073
                 rts
L_4964           lda L_4E03
                 cmp #$02
                 bne L_4999
                 lda $5002
                 beq L_4999
                 lda $5071
                 beq L_497D
                 dec $5071
                 lda L_4517
                 bne L_4992
L_497D           lda #$01
                 sta $5002
                 lda #$00
                 sta $5072
                 sta $5073
                 lda L_3A38+3
                 bne L_499F
                 jmp L_4999
L_4992           ldx L_46D0+4
                 ldy L_46D0+5
                 rts
L_4999           lda L_46C0+6,x
                 jmp L_4732
L_499F           lda #$00
                 sta $5002
                 sta L_4E03
                 sta L_3A38+3
                 jmp L_4999
L_49AD           lda L_3A38+3
                 bne L_49B6
                 lda L_4A01+1
                 rts
L_49B6           lda #$01
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_49F9           .byte $00, $00, $00, $00, $00, $00, $00, $03
L_4A01           .byte $43, $00, $1A
L_4A04           lda #$00
                 sta L_4A01+1
                 lda L_46C0+6,x
                 and #$0C
                 cmp #$08
                 beq L_4A1F
                 lda L_4607+1,x
                 sec
                 sbc #$2C
                 cmp L_4405+4
                 beq L_4A20
                 bpl L_4A20
L_4A1F           rts
L_4A20           sec
                 sbc L_4405+4
                 cmp L_4A01+2
                 beq L_4A2C
                 bmi L_4A2C
                 rts
L_4A2C           sta L_49F9+7
                 lda L_4607+4,x
                 cmp #$63
                 bmi L_4A1F
                 cmp #$66
                 bpl L_4A1F
                 lda L_4A01+2
                 cmp #$1E
                 beq L_4A4A
                 lda L_49F9+7
                 cmp #$06
                 beq L_4A4A
                 bmi L_4A1F
L_4A4A           ldy #$02
                 lda L_49F9+7
                 cmp #$11
                 beq L_4A56
                 bmi L_4A56
                 dey
L_4A56           sty L_4A01+1
                 lda L_46C0+6,x
                 and #$03
                 tay
                 lda #$01
                 cpy L_4A01+1
                 beq L_4A68
                 lda #$02
L_4A68           sta L_4A01+1
                 lda L_49F9+7
                 and #$FC
                 lsr
                 lsr
                 sta L_46C8+1,x
                 lda #$00
                 sta L_46D8+1,x
                 sta L_46D8+1,x
                 ldy #$01
                 lda L_49F9+7
                 cmp #$11
                 beq L_4A89
                 bpl L_4A89
                 iny
L_4A89           sty L_4A01
L_4A8C           rts
L_4A8D           sta L_49F9+7
                 sty L_4A01+1
                 lda (FRE+4),y
                 beq L_4A8C
                 cmp #$9D
                 beq L_4AB5
                 cmp #$9E
                 beq L_4AB5
                 cmp #$83
                 beq L_4AB5
                 cmp #$84
                 beq L_4AB5
                 cmp #$1D
                 beq L_4AB5
                 cmp #$1E
                 beq L_4AB5
                 cmp #$08
                 beq L_4AB5
                 bcs L_4A8C
L_4AB5           jsr L_4AE0
                 lda (FRE+4),y
                 cmp #$09
                 beq L_4A8C
                 cmp #$0A
                 beq L_4A8C
                 cmp #$89
                 beq L_4A8C
                 cmp #$8A
                 beq L_4A8C
                 and #$01
                 bne L_4ACF
                 dey
L_4ACF           lda L_4A01
                 sta (FRE+4),y
                 iny
                 lda FPTR2+1
                 sta (FRE+4),y
                 jsr L_2F37
                 ldy L_4A01+1
                 rts
L_4AE0           lda #$00
                 sta CASINI+1
                 sta L_4A01
                 sta FPTR2+1
                 lda FRE+4
                 sta LNFLG
                 lda FRE+5
                 sta NGFLAG
                 tya
                 clc
                 adc LNFLG
                 sta LNFLG
                 bcc L_4AFB
                 inc NGFLAG
L_4AFB           lda NGFLAG
                 cmp #$9B
                 bne L_4B0A
