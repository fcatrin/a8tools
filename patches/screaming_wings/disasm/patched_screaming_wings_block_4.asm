
; BLOCK 4 patched_screaming_wings.xex

                 org $1500

L_1500           lda ENEMY_MOV_TYPE
                 bne L_153C
                 lda #$28
                 sta ENEMY_Y
                 sta $0625
                 lda $0683
                 bmi L_1516
                 lda #$D0
                 bne L_1518
L_1516           lda #$28
L_1518           sta ENEMY_X
                 sta HPOSP2
                 sta HPOSP3
                 lda #$00
                 sta $06AE
                 sta BIGPLANE_FIRE_TYPE+3
                 lda #$0F
                 sta PCOLR3
                 lda #$42
                 sta PCOLR2
                 lda #$0E
                 sta L_542E+1
                 inc ENEMY_MOV_TYPE
                 rts
L_153C           lda $0625
                 bne L_155B
                 lda ENEMY_X+7
                 bne L_1579
                 lda $0624
                 beq L_154C
                 rts
L_154C           sta ENEMY_MOV_TYPE
                 sta ENEMY_TYPE
                 sta ENEMY_X+6
                 lda #$11
                 sta L_542E+1
                 rts
L_155B           lda $06AE
                 cmp #$18
                 bcc L_156E
                 lda #$00
                 sta $0625
                 sta ENEMY_X+2
                 inc ENEMY_X+7
                 rts
L_156E           inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
                 cmp #$02
                 bcs L_157B
                 rts
L_1579           bne L_15E4
L_157B           lda #$00
                 sta ENEMY_MOV_TYPE+1
                 inc $06C9
                 lda $06C9
                 cmp #$02
                 bcc L_15A0
                 lda #$00
                 sta $06C9
                 lda BIGPLANE_FIRE_TYPE
                 beq L_159B
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE
                 beq L_15A0
L_159B           lda #$01
L_159D           sta BIGPLANE_FIRE_TYPE
L_15A0           lda ENEMY_X
                 cmp PLANE_X
                 beq L_15B4
                 bcc L_15B1
                 dec ENEMY_X
                 lda #$00
                 beq L_15B4
L_15B1           inc ENEMY_X
L_15B4           lda ENEMY_X
                 sta HPOSP2
                 sta HPOSP3
                 lda ENEMY_MOV_TYPE
                 cmp #$02
                 bne L_15D5
                 dec ENEMY_Y
                 lda ENEMY_Y
                 cmp #$30
                 bcs L_15E4
                 lda #$03
                 sta ENEMY_MOV_TYPE
                 bne L_15E4
L_15D5           inc ENEMY_Y
                 lda ENEMY_Y
                 cmp #$60
                 bcc L_15E4
                 lda #$02
                 sta ENEMY_MOV_TYPE
L_15E4           lda $0625
                 bne L_15FC
                 ldx #$00
                 ldy ENEMY_Y
                 txa
L_15EF           sta L_3605+7,y
                 sta L_370C,y
                 iny
                 inx
                 cpx #$06
                 bne L_15EF
                 rts
L_15FC           ldx ENEMY_Y
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_1619
L_1606           lda L_2EFC+4,y
                 sta PMGFX0+3,x
                 lda L_2F1C+6,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$11
                 bne L_1606
                 rts
L_1619           lda L_2EFC+4,y
                 sta PMGFX0+3,x
                 lda L_2F0C+5,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$11
                 bne L_1619
                 rts
                 .word LNFLG
                 .word LNFLG
L_1630           lda BIGPLANE_FIRE_TYPE+3
                 bne L_1657
                 lda #$28
                 sta ENEMY_MOV_TYPE+7
                 sta $0624
                 lda M2PF
                 bmi L_1646
                 lda #$D0
                 bne L_1648
L_1646           lda #$28
L_1648           sta BIGPLANE_FIRE_TYPE+1
                 sta BIGPLANE_FIRE_TYPE+2
                 lda #$00
                 sta $06C5
                 inc BIGPLANE_FIRE_TYPE+3
                 rts
L_1657           lda $0624
                 beq L_16AA
                 lda $06C5
                 bne L_1671
                 dec BIGPLANE_FIRE_TYPE+1
                 dec BIGPLANE_FIRE_TYPE+2
                 lda BIGPLANE_FIRE_TYPE+1
                 cmp #$30
                 bcs L_1683
                 inc $06C5
L_1671           inc BIGPLANE_FIRE_TYPE+1
                 inc BIGPLANE_FIRE_TYPE+2
                 lda BIGPLANE_FIRE_TYPE+2
                 cmp #$C0
                 bcc L_1683
                 lda #$00
                 sta $06C5
L_1683           lda BIGPLANE_FIRE_TYPE+3
                 cmp #$02
                 bne L_169B
                 dec ENEMY_MOV_TYPE+7
                 lda ENEMY_MOV_TYPE+7
                 cmp #$30
                 bcs L_16AA
                 lda #$03
                 sta BIGPLANE_FIRE_TYPE+3
                 bne L_16AA
L_169B           inc ENEMY_MOV_TYPE+7
                 lda ENEMY_MOV_TYPE+7
                 cmp #$60
                 bcc L_16AA
                 lda #$02
                 sta BIGPLANE_FIRE_TYPE+3
L_16AA           lda $0624
L_16AD           bne L_16C2
                 ldx #$00
                 ldy ENEMY_MOV_TYPE+7
                 txa
L_16B5           sta L_340C,y
                 sta L_350C,y
                 iny
                 inx
                 cpx #$06
                 bne L_16B5
                 rts
L_16C2           ldx ENEMY_MOV_TYPE+7
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_16DF
L_16CC           lda L_2F1C+6,y
                 sta L_33FE+2,x
                 lda L_2EFC+4,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$11
                 bne L_16CC
                 rts
L_16DF           lda L_2F0C+5,y
                 sta L_33FE+2,x
                 lda L_2EFC+4,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$11
                 bne L_16DF
                 rts
                 .word LNFLG
                 .word LNFLG
                 .word LNFLG
                 .word LNFLG
                 .word LNFLG
                 .word LNFLG
                 .word LNFLG
L_1700           lda ENEMY_MOV_TYPE
                 bne L_173B
                 lda #$50
                 sta ENEMY_MOV_TYPE+7
                 sta $0624
                 lda #$00
                 sta HPOSP2
                 sta HPOSP3
                 lda #$C0
                 sta BIGPLANE_FIRE_TYPE+1
                 sta BIGPLANE_FIRE_TYPE+2
                 lda #$94
                 sta PCOLR1
                 lda #$0F
                 sta PCOLR0
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE
                 sta ENEMY_MOV_TYPE+1
                 sta BIGPLANE_FIRE_TYPE+3
                 lda #$0E
                 sta L_542E+1
                 inc ENEMY_MOV_TYPE
                 rts
L_173B           inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
                 cmp #$03
                 bcc L_1759
                 lda #$00
                 sta ENEMY_MOV_TYPE+1
                 lda BIGPLANE_FIRE_TYPE
                 bne L_1754
                 inc BIGPLANE_FIRE_TYPE
                 bpl L_1759
L_1754           lda #$00
                 sta BIGPLANE_FIRE_TYPE
L_1759           ldy ENEMY_MOV_TYPE+7
                 ldx #$00
                 lda ENEMY_MOV_TYPE
                 cmp #$02
                 bcc L_1766
                 rts
L_1766           lda BIGPLANE_FIRE_TYPE+1
                 cmp #$28
                 bcs L_1783
                 lda #$00
                 sta $0624
                 txa
L_1773           sta L_33FE+2,y
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0D
                 bne L_1773
                 inc ENEMY_MOV_TYPE
                 rts
L_1783           dec BIGPLANE_FIRE_TYPE+1
                 dec BIGPLANE_FIRE_TYPE+2
                 lda $0624
                 bne L_178F
                 rts
L_178F           lda BIGPLANE_FIRE_TYPE
                 bne L_17A7
L_1794           lda L_3E0A+6,x
                 sta L_33FE+2,y
                 lda L_3E1A+3,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0D
                 bne L_1794
                 rts
L_17A7           lda L_3E0A+6,x
                 sta L_33FE+2,y
                 lda L_3E2A,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0D
                 bne L_17A7
                 rts
                 brk
                 cpx #$12
                 beq L_17C0
                 rts
L_17C0           inc $06BB
                 rts
                 dec $06BC
                 lda $06BC
                 sta AUDC3
                 cmp #$E0
                 beq L_17D2
                 rts
L_17D2           lda #$00
                 sta $06BB
                 rts
                 .byte $40, $3C, $40, $48, $51, $48, $40, $3C
                 .byte $40, $48, $40, $3C, $35, $3C, $40, $48
                 .byte $51, $48, $51, $48, $00, $00, $00, $00
                 .byte $00, $00, $D2
                 lda L_19AA,y
                 bne L_1800
                 ldy #$00
                 sty $0673
                 lda L_19AA,y
L_1800           ldx $06BF
                 cpx #$00
                 bne L_181D
                 lda $0658
                 sta $06C1
                 stx $0658
                 stx AUDC1
                 stx AUDC2
                 stx $06CE
                 inc $06BF
                 rts
L_181D           inc $06C0
                 lda $06C0
                 cmp #$09
                 bcs L_1828
                 rts
L_1828           lda #$00
                 sta $06C0
                 sta AUDC3
                 cpx #$01
                 bne L_1851
                 lda #$EF
                 sta $06CD
                 sta AUDC4
                 ldx $06CE
                 lda L_186E,x
                 sta AUDF4
                 inc $06CE
                 cpx #$11
                 bcs L_184D
                 rts
L_184D           inc $06BF
                 rts
L_1851           cpx #$02
                 beq L_1856
                 rts
L_1856           dec $06CD
                 lda $06CD
                 sta AUDC4
                 cmp #$E0
                 bcc L_1864
                 rts
L_1864           inc $06BF
                 lda $06C1
                 sta $0658
                 rts
L_186E           rts
                 adc L_606B+1,y
                 rts
                 jmp (L_6C79)
                 rts
                 adc L_6C79,y
                 rts
                 rts
                 jmp (L_6C79)
                 rts
L_1880           ldx $06BB
                 bne L_1886
                 rts
L_1886           inc $06BE
                 lda $06BE
                 cmp #$03
                 bcs L_1891
                 rts
L_1891           lda #$00
L_1893           sta $06BE
                 cpx #$01
                 bne L_18AB
                 lda #$EF
                 sta $06BC
                 sta AUDC3
                 lda #$00
                 sta $06BD
                 inc $06BB
                 rts
L_18AB           cpx #$02
                 bne L_18C4
                 ldx $06BD
                 lda L_18D8,x
                 sta AUDF3
                 inc $06BD
                 cpx #$12
                 beq L_18C0
                 rts
L_18C0           inc $06BB
                 rts
L_18C4           dec $06BC
                 lda $06BC
                 sta AUDC3
                 cmp #$E0
                 beq L_18D2
                 rts
L_18D2           lda #$00
                 sta $06BB
                 rts
L_18D8           rti
                 .byte $3C, $40, $48, $51, $48, $40, $3C, $40
                 .byte $48, $40, $3C, $35, $3C, $40, $48, $51
                 .byte $48, $51, $48, $00, $00, $00, $00, $00
                 .byte $00, $D2
                 lda L_19AA,y
                 bne L_1900
                 ldy #$00
                 sty $0673
                 lda L_19AA,y
L_1900           lda #$00
                 sta $0670
                 sta $0674
                 sta $0672
                 sta $0673
                 sta $0675
                 lda #$07
                 sta $0671
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00
L_1920           lda $0658
                 bne L_1926
                 rts
L_1926           dec $0670
                 bne L_1939
                 inc $0674
                 lda $0674
                 cmp #$10
                 bcc L_1939
                 jsr L_1900
                 rts
L_1939           lda $0670
                 and #$07
                 sta $0675
                 ldx $0674
                 lda L_198A,x
                 ora $0675
                 sta AUDC1
                 lda $0675
                 ora #$A0
                 sta AUDC2
                 lda $0670
                 and $0671
                 bne L_1989
                 ldx $0672
                 ldy $0673
                 lda L_199A,x
                 bne L_1970
                 ldx #$00
                 stx $0672
                 lda L_199A,x
L_1970           sta AUDF1
                 lda L_19AA,y
                 bne L_1980
                 ldy #$00
                 sty $0673
                 lda L_19AA,y
L_1980           sta AUDF2
                 inc $0672
                 inc $0673
L_1989           rts
L_198A           .byte $9E, $9E, $9E, $9F, $DF, $DE, $DF, $9F
                 .byte $9E, $9E, $9F, $DF, $9F, $9E, $9E, $9F
L_199A           .byte $2A, $28, $2A, $28, $1F, $2A, $01, $2A
                 .byte $28, $2A, $35, $2F, $00, $00, $00, $00
L_19AA           .byte $40, $01, $80, $01, $40, $01, $90, $01
                 .byte $40, $01, $80, $01, $40, $01, $90, $01
                 .byte $40, $01, $80, $01, $40, $01, $90, $01
L_19C2           .byte $40, $01, $80, $01, $40, $01, $90, $01
                 .byte $40, $2F, $80, $23, $40, $28, $90, $35
                 .byte $40, $2F, $80, $23, $40, $28, $90, $35
                 .byte $40, $23, $80, $2F, $40, $35, $90, $28
                 .byte $40, $2F, $80, $2F, $40, $35, $90, $35
                 .byte $40, $35, $80, $2A, $40, $2F, $90, $23
                 .byte $40, $1F, $80, $28, $40, $23, $90, $2F
                 .byte $40, $2F, $80, $1F, $40, $1F, $90, $28
                 .byte $40, $1F, $80, $2F, $40, $23, $90, $2F
                 .byte $00, $40, $23, $90, $2F, $40, $2F, $80
                 .byte $1F, $40, $1F, $90, $28, $40, $1F, $80
L_1A1A           .byte $2F, $40, $23, $90, $2F, $00, $6F
                 sta L_975D+3,x
                 inx
                 cpx #$08
                 bne L_1A1A+4
                 rts
                 lda #$00
                 sta $0641
                 ldx #$00
                 lda L_6F91+4,x
                 sta L_34AC+1,x
                 asl PTABW
                 .byte $FF
                 beq L_1A44
                 lda ENEMY_TYPE
                 bne L_1A44
                 jsr L_5E5F+1
L_1A44           lda ENEMY_TYPE
                 cmp #$01
                 bne L_1A52
                 jsr L_47FE+2
                 jsr L_47FE+2
                 rts
L_1A52           cmp #$02
                 bne L_1A5A
                 jsr L_574F+1
                 rts
L_1A5A           cmp #$03
                 bne L_1A65
                 jsr L_6360
                 jsr L_6500
                 rts
L_1A65           cmp #$04
                 bne L_1A70
                 jsr L_6360
                 jsr L_61BF+1
                 rts
L_1A70           cmp #$05
                 bne L_1A78
                 jsr L_5C40
                 rts
L_1A78           cmp #$06
                 bne L_1A80
                 jsr L_1F1F+1
                 rts
L_1A80           cmp #$07
                 bne L_1A88
                 jsr L_1DBF+1
                 rts
L_1A88           cmp #$08
                 bne L_1A90
                 jsr L_47FE+2
                 rts
L_1A90           cmp #$FF
                 bne L_1A98
                 jsr L_6680
                 rts
L_1A98           .byte $60, $00, $20, $20, $4C, $44, $41, $20
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
L_1B00           lda #$EF
                 sta AUDC4
                 ldx $066C
                 lda $066B
                 bne L_1B15
                 dex
                 bmi L_1B16
                 inc $066B
                 bne L_1B16
L_1B15           inx
L_1B16           stx AUDF4
                 stx $066C
                 lda PLANE_X+5
                 cmp #$01
                 bpl L_1B4C
                 lda #$01
                 sta $060E
                 lda PLANE_X+2
                 cmp #$10
                 bcc L_1B36
                 dec PLANE_X+2
                 jsr L_4B80
                 rts
L_1B36           inc PLANE_X+5
                 lda #$00
                 sta $066B
                 lda #$B0
                 sta AUDF4
                 sta $066C
                 lda #$EC
                 sta AUDC4
                 rts
L_1B4C           ldx #$00
                 ldy PLANE_X+2
                 inc PLANE_X+5
                 lda PLANE_X+5
                 cmp #$08
                 bcs L_1B6B
L_1B5B           lda L_3C4A+4,x
                 sta L_3470,y
                 sta L_356D+3,y
                 iny
                 inx
                 cpx #$0D
                 bne L_1B5B
                 rts
L_1B6B           cmp #$10
                 bcs L_1B7F
L_1B6F           lda L_3C5A+1,x
                 sta L_3470,y
                 sta L_356D+3,y
                 iny
                 inx
                 cpx #$0D
                 bne L_1B6F
                 rts
L_1B7F           cmp #$18
                 bcs L_1B93
L_1B83           lda L_3C62+6,x
                 sta L_3470,y
                 sta L_356D+3,y
                 iny
                 inx
                 cpx #$0D
                 bne L_1B83
                 rts
L_1B93           cmp #$20
                 bcs L_1BA7
L_1B97           lda L_3C72+3,x
                 sta L_3470,y
                 sta L_356D+3,y
                 iny
                 inx
                 cpx #$0D
                 bne L_1B97
                 rts
L_1BA7           cmp #$48
                 bcs L_1BBE
                 inc PLANE_X+2
L_1BAE           lda L_3C82,x
                 sta L_3470,y
                 sta L_356D+3,y
                 iny
                 inx
                 cpx #$0D
                 bne L_1BAE
                 rts
L_1BBE           cmp #$50
                 bcs L_1BD2
L_1BC2           lda L_3C8A+5,x
                 sta L_3470,y
                 sta L_356D+3,y
                 iny
                 inx
                 cpx #$0D
                 bne L_1BC2
                 rts
L_1BD2           cmp #$58
                 bcs L_1BE6
L_1BD6           lda L_3C9A+2,x
                 sta L_3470,y
                 sta L_356D+3,y
                 iny
                 inx
                 cpx #$0D
                 bne L_1BD6
                 rts
L_1BE6           lda #$00
                 sta PLANE_X+4
                 sta AUDC4
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $9B, $52, $17, $10, $20, $20
                 .byte $42
L_1C00           lda $06BB
                 bne L_1C3F
                 lda $06BF
                 bne L_1C3F
                 lda $0665
                 bne L_1C1F
                 lda #$B0
                 sta AUDF3
                 sta $0666
                 lda #$E3
                 sta AUDC3
                 sta $0665
L_1C1F           ldx $0666
                 lda $0683
                 bmi L_1C34
                 inx
                 bmi L_1C39
L_1C2A           lda #$00
                 sta AUDC3
                 sta $0665
                 beq L_1C3F
L_1C34           dex
                 bmi L_1C39
                 bpl L_1C2A
L_1C39           stx $0666
                 stx AUDF3
L_1C3F           lda $0634
                 cmp #$FF
                 beq L_1C4E
                 lda ENEMY_TYPE
                 bne L_1C4E
                 jsr L_5E38
L_1C4E           lda ENEMY_TYPE
                 cmp #$01
                 bne L_1C5C
                 jsr L_47FE+2
                 jsr L_47FE+2
                 rts
L_1C5C           cmp #$02
                 bne L_1C64
                 jsr L_574F+1
                 rts
L_1C64           cmp #$03
                 bne L_1C7A
                 lda $06C2
                 bne L_1C73
                 jsr L_6360
                 jmp L_1C76
L_1C73           jsr L_1700
L_1C76           jsr L_6500
                 rts
L_1C7A           cmp #$04
                 bne L_1C90
                 lda $06C2
                 bne L_1C89
                 jsr L_6360
                 jmp L_1C8C
L_1C89           jsr L_1700
L_1C8C           jsr L_61BF+1
                 rts
L_1C90           cmp #$05
                 bne L_1CA0
                 lda STAGE_NO
                 beq L_1C9C
                 jsr L_5C40
L_1C9C           jsr L_5C40
                 rts
L_1CA0           cmp #$06
                 bne L_1CA8
                 jsr L_1F1F+1
                 rts
L_1CA8           cmp #$07
                 bne L_1CB0
                 jsr L_1DBF+1
                 rts
L_1CB0           cmp #$08
                 bne L_1CB8
                 jsr L_1500
                 rts
L_1CB8           cmp #$09
                 bne L_1CC3
                 jsr L_1500
                 jsr L_1630
                 rts
L_1CC3           cmp #$0A
                 bne L_1CCB
                 jsr L_6AFE+2
                 rts
L_1CCB           cmp #$0B
                 bne L_1CD3
                 jsr BIGPLANE_CHECK2
                 rts
L_1CD3           cmp #$FF
                 bne L_1CDB
                 jsr L_6680
                 rts
L_1CDB           rts
                 asl STARP+1
                 .byte $02
                 sta B0_ICBAL,x
                 lda #$19
                 sta B0_ICBAH,x
                 lda #$06
                 sta B0_ICBLL,x
                 lda #$00
                 sta B0_ICBLH,x
                 bit L_159D+1
                 bpl L_1D05
                 lda #$04
                 sta B0_ICBLL,x
                 lda #$C3
                 sta B0_ICBAL,x
                 lda #$19
                 sta B0_ICBAH,x
L_1D05           jsr L_31E4+5
                 ldx #$10
                 lda #$F9
                 sta B0_ICBLL,x
                 lda #$13
                 sta B0_ICBLH,x
                 inc B0_ICBLL,x
                 bne L_1D1C
                 inc B0_ICBLH,x
L_1D1C           lda L_19C2+1
                 sta B0_ICBAL,x
                 lda L_19C2+2
                 sta B0_ICBAH,x
                 jmp L_1893
                 .byte $53
                 eor (COLCRS+1,x)
                 eor ICSPRZ+1
L_1D30           ldy ENEMY_Y
                 cpy #$B0
                 bcc L_1D61
                 ldx #$00
                 txa
L_1D3A           sta PMGFX0+3,y
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$10
                 bne L_1D3A
                 lda #$00
                 sta ENEMY_TYPE
                 sta ENEMY_MOV_TYPE
                 lda #$11
                 sta L_542E+1
                 inc $06CC
                 lda $06CC
                 cmp #$05
                 bcs L_1D60
                 dec $06AF
L_1D60           rts
L_1D61           lda PLANE_X
                 cmp ENEMY_X
                 beq L_1D75
                 bcs L_1D72
                 dec ENEMY_X
                 lda #$01
                 bne L_1D75
L_1D72           inc ENEMY_X
L_1D75           lda ENEMY_X
                 sta HPOSP2
                 sta HPOSP3
                 lda $0625
                 bne L_1D84
                 rts
L_1D84           ldx #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_1D9E
L_1D8B           lda L_2EFC+3,x
                 sta PMGFX0+3,y
                 lda L_2F0C+4,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$10
                 bne L_1D8B
                 rts
L_1D9E           lda L_2FBC+4,x
                 sta PMGFX0+3,y
                 lda #$00
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$10
                 bne L_1D9E
                 rts
                 .byte $00, $00, $99, $00, $37, $C8, $E8, $E0
                 .byte $10, $D0, $EF, $60, $00, $00, $36
L_1DBF           lda #$AD
                 asl TRAMSZ,x
                 bne L_1DDD
                 lda #$B0
                 sta ENEMY_Y
                 lda #$20
                 sta ENEMY_X
                 lda #$0C
                 sta L_542E+1
                 lda #$00
                 sta $0669
                 inc ENEMY_MOV_TYPE
                 rts
L_1DDD           cmp #$02
                 bne L_1DF2
                 dec ENEMY_Y
                 ldy ENEMY_Y
                 cpy #$90
                 bcs L_1E01
                 lda #$01
                 sta ENEMY_MOV_TYPE
                 bne L_1E01
L_1DF2           inc ENEMY_Y
                 ldy ENEMY_Y
                 cpy #$B8
                 bcc L_1E01
                 lda #$02
                 sta ENEMY_MOV_TYPE
L_1E01           inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
                 cmp #$03
                 bcc L_1E1F
                 lda #$00
                 sta ENEMY_MOV_TYPE+1
                 inc BIGPLANE_FIRE_TYPE
                 lda BIGPLANE_FIRE_TYPE
                 cmp #$03
                 bmi L_1E1F
                 lda #$01
                 sta BIGPLANE_FIRE_TYPE
L_1E1F           lda #$04
                 sta $0668
                 lda $0669
                 beq L_1E2B
                 bne L_1E9F
L_1E2B           inc ENEMY_X
                 lda ENEMY_X
                 cmp #$D0
                 beq L_1E3D
                 sec
                 sbc #$30
                 cmp PLANE_X
                 bne L_1E4D
L_1E3D           ldx #$00
                 txa
L_1E40           sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 bne L_1E40
                 inc $0669
                 rts
L_1E4D           lda ENEMY_X
                 sta HPOSP2
                 sta HPOSP3
                 lda BIGPLANE_FIRE_TYPE
                 cmp #$02
                 beq L_1E7E
L_1E5D           ldx #$0E
L_1E5F           lda L_2F54+6,x
                 sta PMGFX0+3,y
                 lda L_2F64+5,x
                 sta PMGFX1,y
                 dey
                 dex
                 cpx #$FF
                 bne L_1E5F
                 dey
                 dey
                 dey
                 dey
                 dec $0668
                 lda $0668
                 bne L_1E5D
                 rts
L_1E7E           ldx #$0E
L_1E80           lda L_2F54+6,x
                 sta PMGFX0+3,y
                 lda L_2F74+4,x
                 sta PMGFX1,y
                 dey
                 dex
                 cpx #$FF
                 bne L_1E80
                 dey
                 dey
                 dey
                 dey
                 dec $0668
                 lda $0668
                 bne L_1E7E
                 rts
L_1E9F           dec ENEMY_X
                 lda ENEMY_X
                 cmp #$20
                 bcs L_1EC1
                 ldx #$00
                 txa
L_1EAC           sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 bne L_1EAC
                 sta ENEMY_TYPE
                 sta ENEMY_MOV_TYPE
                 lda #$11
                 sta L_542E+1
                 rts
L_1EC1           sta HPOSP2
                 sta HPOSP3
                 lda BIGPLANE_FIRE_TYPE
                 cmp #$02
                 beq L_1EEF
L_1ECE           ldx #$0E
L_1ED0           lda L_2F84+3,x
                 sta PMGFX0+3,y
                 lda L_2F94+2,x
                 sta PMGFX1,y
                 dey
                 dex
                 cpx #$FF
                 bne L_1ED0
                 dey
                 dey
                 dey
                 dey
                 dec $0668
                 lda $0668
                 bne L_1ECE
                 rts
L_1EEF           ldx #$0E
L_1EF1           lda L_2F84+3,x
                 sta PMGFX0+3,y
                 lda L_2FA4+1,x
                 sta PMGFX1,y
                 dey
                 dex
                 cpx #$FF
L_1F01           bne L_1EF1
                 dey
                 dey
                 dey
                 dey
                 dec $0668
                 lda $0668
                 bne L_1EEF
                 rts
                 .word LNFLG
                 bne L_1F01+1
                 rts
                 cmp #$03
                 bcs L_1F3A
                 inc ENEMY_X
                 inc ENEMY_MOV_TYPE+7
L_1F1F           stx L_16AD
                 asl $D0
                 .byte $13
                 lda #$B0
                 sta ENEMY_Y
                 lda #$D8
                 sta ENEMY_X
                 lda #$0A
                 sta L_542E+1
                 inc ENEMY_MOV_TYPE
                 rts
                 cmp #$02
L_1F3A           bne L_1F4D
                 dec ENEMY_Y
                 ldy ENEMY_Y
                 cpy #$9C
                 bcs L_1F5C
                 lda #$01
                 sta ENEMY_MOV_TYPE
                 bne L_1F5C
L_1F4D           inc ENEMY_Y
                 ldy ENEMY_Y
                 cpy #$B4
                 bcc L_1F5C
                 lda #$02
                 sta ENEMY_MOV_TYPE
L_1F5C           inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
                 cmp #$03
                 bcc L_1F7A
                 lda #$00
                 sta ENEMY_MOV_TYPE+1
                 inc BIGPLANE_FIRE_TYPE
                 lda BIGPLANE_FIRE_TYPE
                 cmp #$03
                 bmi L_1F7A
                 lda #$01
                 sta BIGPLANE_FIRE_TYPE
L_1F7A           lda #$06
                 sta $0668
                 dec ENEMY_X
                 lda ENEMY_X
                 cmp #$20
                 bcs L_1FA1
                 ldx #$00
                 txa
L_1F8C           sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 bne L_1F8C
                 sta ENEMY_TYPE
                 sta ENEMY_MOV_TYPE
                 lda #$11
                 sta L_542E+1
                 rts
L_1FA1           sta HPOSP2
                 sta HPOSP3
                 lda BIGPLANE_FIRE_TYPE
                 cmp #$02
                 beq L_1FCE
L_1FAE           ldx #$0C
L_1FB0           lda L_3E0A+5,x
                 sta PMGFX0+3,y
                 lda L_3E1A+2,x
                 sta PMGFX1,y
                 dey
                 dex
                 cpx #$FF
                 bne L_1FB0
                 dey
                 dey
                 dey
                 dec $0668
                 lda $0668
                 bne L_1FAE
                 rts
L_1FCE           ldx #$0C
L_1FD0           lda L_3E0A+5,x
                 sta PMGFX0+3,y
                 lda L_3E22+7,x
                 sta PMGFX1,y
                 dey
                 dex
                 cpx #$FF
                 bne L_1FD0
                 dey
                 dey
                 dey
                 dec $0668
                 lda $0668
                 bne L_1FCE
                 lda #$00
                 rts
                 .byte $00, $00, $60, $00, $05, $06, $20, $3B
                 .byte $9B, $82, $05, $06, $20, $3B, $9B, $8C
L_2000           .byte $AD, $5C, $06, $F0, $03, $4C, $63, $20
                 inc $065C
                 lda #$21
                 sta RUNSTK+1
                 lda #$21
                 sta RUNSTK
                 lda #$83
                 sta TOPSTK+1
                 lda #$21
                 sta TOPSTK
                 ldy #$00
L_201D           lda (RUNSTK),y
                 sta (TOPSTK),y
                 cpy #$A0
                 bne L_202B
                 lda TOPSTK+1
                 cmp #$8F
                 beq L_2035
L_202B           iny
                 bne L_201D
                 inc RUNSTK+1
                 inc TOPSTK+1
                 jmp L_201D
L_2035           ldx #$00
L_2037           lda L_2A54+5,x
                 sta L_8FDD,x
                 lda L_2B1C+5,x
                 sta L_90A5,x
                 lda L_2BE4+5,x
                 sta L_916D,x
                 inx
                 cpx #$C8
                 bne L_2037
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00
L_2063           lda #$00
                 sta $065C
                 lda #$A0
                 sta RUNSTK+1
                 lda #$61
                 sta RUNSTK
                 lda #$83
                 sta TOPSTK+1
                 lda #$21
                 sta TOPSTK
                 ldy #$00
L_207A           lda (RUNSTK),y
                 sta (TOPSTK),y
                 cpy #$A0
                 bne L_2088
                 lda TOPSTK+1
                 cmp #$8F
                 beq L_2092
L_2088           iny
                 bne L_207A
                 inc RUNSTK+1
                 inc TOPSTK+1
                 jmp L_207A
L_2092           ldx #$00
L_2094           lda L_A998+1,x
                 sta L_8FDD,x
                 lda L_AA60+1,x
                 sta L_90A5,x
                 lda L_AB28+1,x
                 sta L_916D,x
                 inx
                 cpx #$C8
                 bne L_2094
                 rts
                 .byte $00, $00, $00, $00, $00, $30, $2C, $58
                 .byte $9B, $56, $0E, $11, $20, $20, $53, $54
                 .byte $41, $20, $33, $36, $38, $32, $39, $2C
                 .byte $58, $9B, $60, $0E, $11, $20, $20, $4C
                 .byte $44, $41, $20, $31, $31, $30, $38, $30
                 .byte $2C, $58, $9B, $6A, $0E, $11, $20, $20
                 .byte $53, $54, $41, $20, $33, $37, $30, $32
                 .byte $39, $2C, $58, $9B, $74, $0E, $11, $20
                 .byte $20, $4C, $44, $41, $20, $31, $31, $32
                 .byte $38, $30, $2C, $58, $9B, $7E, $0E, $11
                 .byte $20, $20, $53, $54, $41, $20, $33, $37
                 .byte $32, $32, $39, $2C, $58, $9B, $88, $0E
                 .byte $11, $20, $20, $4C, $44, $41, $20, $31
                 .byte $31, $34, $38, $30, $2C, $58, $9B, $92
                 .byte $0E, $11, $20, $20, $53, $39, $39, $3A
                 .byte $39, $39, $49, $4A, $0C, $4A, $4B, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $3A
                 .byte $3A, $3A, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $49, $15, $3A, $49, $4A
                 .byte $0C, $4A, $4A, $14, $15, $14, $19, $0C
                 .byte $4A, $4B, $3A, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $49, $4A, $4A
                 .byte $4A, $4B, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $49, $4A, $0C, $15, $49, $0C, $19
                 .byte $15, $14, $15, $14, $15, $14, $15, $19
                 .byte $0C, $50, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $49, $4A, $4A, $0C, $0C, $0C, $14
                 .byte $19, $0C, $4B, $3A, $39, $3A, $49, $4A
                 .byte $4A, $0C, $14, $15, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $16, $16, $15, $15
                 .byte $19, $4A, $4B, $39, $3A, $39, $49, $4A
                 .byte $4A, $0C, $14, $15, $14, $15, $14, $15
                 .byte $14, $19, $0C, $4A, $4A, $4A, $0C, $15
                 .byte $14, $15, $14, $15, $15, $14, $15, $14
                 .byte $15, $16, $16, $15, $14, $14, $16, $15
                 .byte $15, $19, $0C, $4A, $0C, $4A, $0C, $0C
                 .byte $14, $15, $16, $14, $15, $14, $16, $14
                 .byte $15, $14, $19, $0C, $0C, $14, $16, $14
                 .byte $15, $14, $16, $15, $15, $15, $14, $15
                 .byte $16, $15, $15, $14, $16, $16, $15, $14
                 .byte $14, $18, $19, $19, $0C, $0C, $14, $14
                 .byte $15, $14, $15, $15, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $15, $15, $15, $14
                 .byte $16, $16, $15, $14, $19, $64, $65, $16
                 .byte $15, $14, $15, $14, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $15, $14, $15, $16
                 .byte $16, $15, $14, $15, $16, $76, $15, $14
                 .byte $16, $19, $66, $67, $14, $16, $14, $15
                 .byte $16, $14, $19, $14, $15, $16, $14, $15
                 .byte $14, $16, $19, $14, $15, $16, $14, $15
                 .byte $14, $16, $14, $15, $15, $15, $14, $15
                 .byte $14, $16, $14, $15, $16, $68, $69, $14
                 .byte $15, $14, $77, $15, $15, $15, $15, $14
                 .byte $16, $15, $15, $16, $14, $15, $14, $15
L_227C           .byte $14, $14, $14, $15, $16, $15, $19, $64
                 .byte $65, $16, $14, $14, $15, $16, $16, $16
                 .byte $16, $16, $14, $15, $15, $14, $15, $14
                 .byte $6A, $6B, $15, $15, $14, $14, $14, $15
                 .byte $6C, $6F, $14, $15, $14, $15, $14, $16
                 .byte $14, $15, $14, $16, $16, $14, $15, $14
                 .byte $16, $66, $67, $14, $15, $14, $15, $16
                 .byte $14, $16, $14, $15, $14, $15, $14, $16
                 .byte $14, $15, $14, $16, $14, $15, $14, $19
                 .byte $6C, $3A, $6F, $14, $15, $14, $16, $14
                 .byte $15, $14, $16, $14, $16, $16, $16, $15
                 .byte $14, $16, $14, $15, $15, $15, $64, $14
                 .byte $16, $66, $67, $14, $14, $15, $16, $14
                 .byte $15, $16, $15, $14, $15, $14, $19, $6C
                 .byte $39, $3A, $39, $6F, $14, $15, $15, $14
                 .byte $15, $14, $15, $14, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $15, $14, $68, $69
                 .byte $16, $15, $6B, $15, $16, $14, $15, $14
                 .byte $15, $16, $16, $15, $14, $19, $6C, $3A
                 .byte $39, $39, $3A, $39, $72, $14, $14, $15
                 .byte $14, $16, $19, $14, $15, $16, $14, $15
                 .byte $14, $16, $14, $15, $15, $16, $15, $14
                 .byte $14, $14, $15, $16, $15, $16, $15, $15
                 .byte $16, $15, $14, $15, $19, $70, $39, $3A
                 .byte $39, $3A, $39, $3A, $6E, $6D, $6E, $6D
                 .byte $6E, $6F, $14, $15, $16, $14, $15, $16
                 .byte $16, $15, $14, $16, $15, $15, $16, $18
                 .byte $15, $16, $14, $15, $16, $14, $16, $14
                 .byte $15, $16, $15, $14, $70, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $39, $71, $14, $15, $16, $15, $16, $15
                 .byte $14, $15, $14, $15, $15, $19, $14, $15
                 .byte $16, $16, $15, $14, $65, $67, $16, $15
                 .byte $16, $14, $15, $19, $72, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $75, $14, $15, $16, $14, $15, $14, $16
                 .byte $14, $15, $15, $14, $15, $18, $19, $15
                 .byte $19, $64, $65, $66, $14, $15, $16, $15
                 .byte $14, $15, $19, $6C, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $3A
                 .byte $6F, $16, $14, $16, $15, $16, $14, $14
                 .byte $15, $16, $15, $18, $15, $15, $16, $18
                 .byte $15, $14, $15, $14, $16, $14, $15, $14
                 .byte $15, $16, $15, $18, $72, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $75
                 .byte $16, $14, $15, $14, $16, $14, $15, $14
                 .byte $16, $14, $14, $15, $15, $19, $14, $15
                 .byte $16, $16, $15, $14, $14, $15, $16, $15
                 .byte $16, $14, $15, $16, $19, $72, $3A, $39
                 .byte $3A, $39, $75, $72, $3A, $39, $75, $15
                 .byte $16, $14, $15, $14, $16, $14, $15, $16
                 .byte $16, $16, $15, $14, $15, $18, $19, $15
                 .byte $14, $16, $16, $15, $14, $15, $16, $15
                 .byte $14, $15, $16, $15, $14, $15, $72, $73
                 .byte $74, $75, $14, $19, $72, $75, $15, $14
                 .byte $16, $14, $15, $14, $16, $14, $15, $14
                 .byte $16, $14, $15, $16, $15, $14, $15, $16
                 .byte $14, $15, $14, $16, $14, $15, $14, $16
                 .byte $19, $18, $14, $15, $16, $14, $15, $14
                 .byte $16, $14, $15, $14, $16, $14, $15, $14
                 .byte $16, $14, $15, $14, $16, $14, $15, $14
                 .byte $16, $14, $15, $14, $15, $15, $15, $16
                 .byte $16, $14, $15, $14, $16, $16, $15, $14
                 .byte $14, $14, $14, $18, $19, $14, $15, $16
                 .byte $14, $15, $14, $16, $14, $15, $16, $14
                 .byte $15, $15, $15, $14, $16, $15, $14, $16
                 .byte $15, $14, $16, $14, $15, $14, $14, $14
                 .byte $15, $16, $18, $18, $19, $14, $15, $16
                 .byte $14, $15, $14, $16, $14, $15, $14, $16
                 .byte $14, $15, $14, $16, $14, $15, $14, $16
                 .byte $14, $15, $14, $16, $14, $15, $14, $16
                 .byte $14, $15, $14, $15, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $16, $16, $15, $15
                 .byte $14, $15, $14, $15, $16, $14, $15, $14
                 .byte $14, $15, $15, $14, $15, $16, $14, $15
                 .byte $14, $1C, $64, $65, $66, $1C, $65, $67
                 .byte $14, $15, $14, $15, $15, $14, $15, $14
                 .byte $15, $16, $16, $15, $14, $14, $16, $15
                 .byte $15, $14, $15, $14, $15, $16, $14, $15
                 .byte $14, $15, $16, $14, $15, $14, $16, $14
                 .byte $15, $14, $76, $14, $15, $16, $19, $14
                 .byte $15, $14, $16, $15, $15, $15, $14, $15
                 .byte $16, $15, $15, $14, $16, $16, $15, $14
                 .byte $14, $18, $14, $14, $15, $16, $14, $15
                 .byte $15, $14, $15, $15, $15, $14, $15, $14
                 .byte $15, $14, $76, $1C, $1B, $1A, $1B, $77
                 .byte $15, $14, $15, $14, $15, $15, $15, $14
                 .byte $16, $16, $15, $14, $14, $15, $6C, $6D
                 .byte $6D, $6E, $6F, $14, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $15, $14, $15, $14
                 .byte $15, $14, $19, $76, $14, $15, $19, $14
                 .byte $15, $14, $15, $14, $15, $14, $15, $16
                 .byte $16, $15, $6C, $6D, $6D, $6E, $3A, $39
                 .byte $3A, $39, $3A, $6D, $6E, $6F, $14, $15
                 .byte $16, $14, $19, $14, $15, $16, $14, $15
                 .byte $14, $16, $19, $68, $1A, $6A, $6B, $15
                 .byte $14, $16, $14, $15, $15, $15, $14, $15
                 .byte $6C, $6E, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $6D, $6E
                 .byte $6F, $15, $15, $16, $14, $15, $14, $15
                 .byte $14, $14, $14, $15, $16, $15, $16, $14
                 .byte $15, $16, $14, $14, $15, $16, $16, $16
                 .byte $72, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $71, $15, $14, $15, $14, $15, $14, $16
                 .byte $14, $15, $14, $16, $16, $14, $15, $14
                 .byte $16, $15, $14, $14, $15, $14, $15, $16
                 .byte $6C, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $6C, $6D, $6E, $6F, $14, $16, $14
                 .byte $15, $14, $16, $14, $16, $16, $16, $15
                 .byte $14, $16, $14, $15, $15, $15, $15, $14
                 .byte $72, $73, $74, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $6C, $6D, $6F
                 .byte $15, $14, $15, $14, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $15, $14, $15, $16
                 .byte $16, $15, $14, $72, $73, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $6E, $6F, $19, $14, $15, $16, $14, $15
                 .byte $14, $16, $14, $15, $15, $16, $15, $14
                 .byte $14, $14, $15, $16, $15, $72, $73, $75
                 .byte $14, $15, $72, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $73, $74, $75, $73, $74
                 .byte $75, $14, $15, $16, $15, $14, $15, $16
                 .byte $16, $15, $14, $16, $15, $15, $16, $18
                 .byte $15, $16, $14, $15, $16, $14, $16, $14
                 .byte $15, $16, $15, $72, $73, $74, $6F, $6C
                 .byte $74, $75, $14, $15, $16, $14, $15, $16
                 .byte $14, $15, $14, $16, $64, $65, $1C, $66
                 .byte $67, $15, $14, $15, $15, $19, $14, $15
                 .byte $16, $16, $15, $14, $14, $15, $16, $15
                 .byte $16, $14, $15, $14, $15, $16, $14, $15
                 .byte $14, $16, $14, $15, $14, $16, $14, $15
                 .byte $14, $16, $15, $16, $76, $14, $15, $1B
                 .byte $77, $15, $15, $14, $15, $18, $19, $15
                 .byte $14, $16, $16, $15, $14, $15, $16, $15
                 .byte $14, $15, $14, $15, $16, $14, $15, $14
                 .byte $16, $14, $15, $14, $16, $14, $15, $14
                 .byte $15, $16, $14, $15, $15, $16, $14, $14
                 .byte $15, $16, $15, $18, $15, $15, $16, $18
                 .byte $15, $16, $14, $15, $16, $14, $16, $14
                 .byte $15, $16, $15, $14, $15, $16, $14, $15
                 .byte $14, $16, $14, $15, $14, $16, $14, $15
                 .byte $16, $14, $15, $14, $16, $68, $69, $14
                 .byte $6B, $14, $14, $15, $15, $19, $14, $15
                 .byte $16, $16, $15, $14, $14, $15, $16, $15
                 .byte $16, $14, $15, $16, $19, $14, $15, $16
                 .byte $14, $15, $14, $16, $14, $15, $14, $15
                 .byte $16, $14, $15, $14, $16, $14, $15, $16
                 .byte $16, $16, $15, $14, $15, $18, $19, $15
                 .byte $14, $16, $16, $15, $14, $15, $16, $15
                 .byte $14, $15, $16, $15, $14, $15, $16, $19
                 .byte $15, $14, $16, $14, $15, $14, $15, $14
                 .byte $16, $14, $15, $14, $16, $14, $15, $14
                 .byte $16, $14, $15, $16, $15, $14, $15, $16
                 .byte $14, $15, $14, $16, $14, $15, $14, $16
                 .byte $19, $18, $14, $15, $16, $14, $15, $14
                 .byte $16, $14, $15, $14, $16, $14, $15, $14
                 .byte $16, $14, $15, $14, $16, $14, $15, $14
                 .byte $16, $14, $15, $14, $14, $15, $15, $16
                 .byte $16, $14, $15, $14, $16, $16, $15, $14
                 .byte $14, $14, $14, $18, $19, $14, $15, $16
                 .byte $14, $15, $14, $16, $14, $15, $16, $14
                 .byte $15, $15, $15, $14, $16, $15, $14, $16
                 .byte $15, $14, $16, $14, $14, $14, $14, $14
                 .byte $15, $16, $18, $18, $19, $14, $15, $16
                 .byte $14, $15, $14, $16, $14, $15, $14, $16
                 .byte $14, $15, $14, $16, $14, $15, $14, $16
                 .byte $14, $15, $14, $16, $14, $15, $14, $16
                 .byte $14, $15, $14, $15, $14, $14, $15, $14
                 .byte $15, $14, $15, $14, $16, $16, $15, $15
                 .byte $14, $15, $14, $15, $16, $14, $15, $14
                 .byte $14, $15, $15, $14, $15, $16, $14, $15
                 .byte $14, $1C, $14, $15, $16, $14, $15, $15
                 .byte $14, $15, $14, $15, $14, $14, $15, $14
                 .byte $15, $16, $16, $15, $14, $14, $16, $15
                 .byte $15, $14, $15, $14, $15, $16, $14, $15
                 .byte $14, $15, $16, $14, $15, $14, $16, $14
                 .byte $15, $14, $14, $15, $16, $14, $16, $14
                 .byte $15, $14, $16, $15, $14, $15, $14, $15
                 .byte $16, $15, $15, $14, $16, $16, $15, $14
                 .byte $14, $18, $14, $15, $14, $15, $14, $14
                 .byte $15, $14, $15, $15, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $14, $15, $15, $14
                 .byte $16, $16, $15, $14, $14, $15, $6C, $6D
                 .byte $6D, $6E, $6F, $14, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $14, $14, $15, $16
                 .byte $16, $15, $6C, $6D, $6D, $6E, $3A, $39
                 .byte $3A, $39, $3A, $6D, $6E, $6F, $14, $15
                 .byte $16, $14, $19, $14, $15, $16, $14, $15
                 .byte $14, $16, $19, $14, $15, $16, $14, $15
                 .byte $14, $16, $14, $15, $14, $15, $14, $15
                 .byte $6C, $6E, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $6D, $6E
                 .byte $6F, $15, $15, $16, $14, $15, $14, $15
                 .byte $14, $14, $14, $15, $16, $15, $16, $14
                 .byte $15, $16, $14, $14, $14, $16, $16, $16
                 .byte $72, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $71, $15, $14, $15, $14, $15, $14, $16
                 .byte $14, $15, $14, $16, $16, $14, $15, $14
                 .byte $16, $15, $14, $14, $14, $14, $15, $16
                 .byte $6C, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $72, $73, $74, $39, $3A, $39, $74, $75
                 .byte $14, $15, $16, $14, $15, $16, $14, $15
                 .byte $15, $14, $16, $14, $16, $16, $16, $15
                 .byte $14, $16, $14, $15, $14, $15, $15, $14
                 .byte $72, $73, $3A, $39, $3A, $73, $74, $73
                 .byte $14, $15, $16, $14, $15, $14, $14, $15
                 .byte $16, $14, $15, $14, $15, $16, $14, $15
                 .byte $14, $14, $15, $14, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $14, $14, $15, $16
                 .byte $16, $15, $72, $73, $75, $16, $14, $15
                 .byte $14, $15, $16, $14, $15, $14, $16, $14
                 .byte $15, $14, $16, $14, $15, $16, $14, $15
                 .byte $14, $16, $19, $14, $15, $16, $14, $15
                 .byte $14, $16, $14, $15, $14, $16, $15, $14
                 .byte $14, $14, $15, $16, $15, $14, $15, $14
                 .byte $16, $14, $15, $14, $15, $14, $15, $14
                 .byte $16, $14, $15, $14, $16, $15, $14, $16
                 .byte $14, $15, $15, $16, $15, $14, $15, $16
                 .byte $16, $15, $14, $16, $14, $15, $16, $18
                 .byte $15, $16, $14, $15, $16, $14, $16, $14
                 .byte $15, $16, $15, $14, $15, $16, $14, $15
                 .byte $14, $16, $14, $15, $16, $14, $15, $16
                 .byte $14, $15, $14, $16, $16, $15, $16, $15
                 .byte $14, $15, $14, $15, $14, $19, $14, $15
                 .byte $16, $16, $15, $14, $14, $15, $16, $15
                 .byte $16, $14, $15, $14, $15, $16, $14, $15
                 .byte $14, $16, $14, $15, $14, $16, $14, $15
                 .byte $14, $16, $15, $16, $14, $15, $14, $16
                 .byte $14, $15, $15, $14, $14, $18, $19, $15
                 .byte $14, $16, $16, $15, $14, $15, $16, $15
                 .byte $14, $15, $14, $15, $16, $14, $15, $14
                 .byte $16, $14, $15, $14, $16, $14, $15, $14
                 .byte $15, $16, $14, $17, $15, $16, $14, $14
                 .byte $15, $16, $15, $18, $14, $15, $16, $18
                 .byte $15, $16, $14, $15, $16, $14, $16, $14
                 .byte $15, $16, $15, $14, $15, $16, $14, $15
                 .byte $14, $16, $14, $15, $14, $16, $14, $15
                 .byte $16, $14, $15, $14, $16, $14, $15, $14
                 .byte $16, $14, $14, $15, $14, $19, $14, $15
                 .byte $16, $16, $15, $14, $14, $15, $16, $15
                 .byte $16, $14, $15, $16, $19, $14, $15, $16
                 .byte $14, $15, $14, $16, $14, $15, $14, $15
                 .byte $16, $14, $15, $14, $16, $14, $15, $16
L_2A54           .byte $16, $16, $15, $14, $14, $18, $19, $15
                 .byte $14, $16, $16, $15, $14, $15, $16, $15
                 .byte $14, $15, $16, $15, $14, $15, $16, $19
                 .byte $15, $14, $16, $14, $15, $14, $15, $14
                 .byte $16, $14, $15, $14, $16, $14, $15, $14
                 .byte $16, $14, $15, $16, $14, $14, $15, $16
                 .byte $14, $16, $14, $15, $14, $15, $14, $16
                 .byte $14, $15, $14, $16, $14, $15, $14, $19
                 .byte $0C, $0C, $0C, $14, $15, $14, $16, $14
                 .byte $15, $14, $16, $14, $16, $16, $16, $15
                 .byte $14, $16, $14, $15, $15, $15, $15, $14
                 .byte $16, $16, $15, $14, $14, $15, $16, $16
                 .byte $15, $14, $15, $14, $15, $19, $1C, $0C
                 .byte $0C, $0C, $0C, $0C, $0C, $1B, $14, $14
                 .byte $15, $14, $15, $14, $15, $14, $15, $14
                 .byte $15, $14, $15, $14, $15, $14, $15, $16
                 .byte $16, $15, $14, $15, $16, $14, $15, $14
                 .byte $16, $14, $16, $15, $19, $0C, $0C, $0C
                 .byte $1A, $14, $15, $19, $0C, $0C, $0C, $14
                 .byte $14, $16, $19, $14, $15, $16, $14, $15
                 .byte $14, $16, $14, $15, $15, $16, $15, $14
                 .byte $14, $14, $15, $16, $15, $16, $15, $15
                 .byte $16, $15, $14, $15, $19, $0C, $0C, $1B
                 .byte $14, $15, $16, $14, $19, $0C, $0C, $0C
                 .byte $14, $15, $16, $15, $16, $14, $15, $16
L_2B1C           .byte $16, $15, $14, $16, $15, $18, $19, $15
                 .byte $14, $16, $16, $15, $14, $15, $16, $15
                 .byte $14, $15, $14, $19, $0C, $0C, $0C, $1B
                 .byte $14, $15, $16, $1C, $0C, $0C, $0C, $14
                 .byte $15, $16, $14, $16, $15, $16, $14, $14
                 .byte $15, $16, $14, $15, $15, $15, $16, $18
                 .byte $15, $16, $14, $15, $16, $14, $16, $14
                 .byte $15, $16, $15, $18, $0C, $0C, $0C, $0C
                 .byte $1B, $14, $1C, $0C, $0C, $0C, $14, $15
                 .byte $16, $14, $15, $14, $16, $14, $15, $14
                 .byte $16, $14, $14, $15, $15, $19, $14, $15
                 .byte $16, $16, $15, $14, $14, $15, $16, $15
                 .byte $16, $14, $15, $16, $19, $0C, $0C, $0C
                 .byte $0C, $0C, $0C, $0C, $0C, $14, $14, $15
                 .byte $16, $14, $15, $14, $16, $14, $15, $16
                 .byte $16, $16, $15, $14, $15, $18, $19, $15
                 .byte $14, $16, $16, $15, $14, $15, $16, $15
                 .byte $14, $15, $16, $15, $14, $15, $1C, $0C
                 .byte $0C, $0C, $0C, $14, $16, $14, $15, $14
                 .byte $16, $14, $15, $16, $14, $15, $14, $16
                 .byte $14, $15, $16, $16, $15, $15, $16, $18
                 .byte $15, $16, $14, $15, $16, $14, $16, $14
                 .byte $15, $16, $15, $14, $14, $1C, $0C, $15
                 .byte $16, $14, $15, $16, $14, $15, $14, $16
                 .byte $14, $15, $14, $16, $14, $15, $16, $15
L_2BE4           .byte $14, $15, $14, $15, $15, $19, $14, $15
                 .byte $16, $16, $15, $14, $14, $15, $16, $15
                 .byte $16, $14, $15, $14, $1C, $0C, $15, $16
                 .byte $14, $15, $14, $16, $14, $15, $14, $16
                 .byte $14, $15, $15, $16, $14, $15, $14, $16
                 .byte $14, $15, $15, $14, $15, $4E, $4F, $4F
                 .byte $4F, $0C, $14, $15, $14, $15, $16, $15
                 .byte $19, $0C, $0C, $0C, $0C, $14, $15, $14
                 .byte $16, $14, $15, $14, $16, $14, $15, $14
                 .byte $19, $0C, $0C, $14, $15, $16, $14, $14
                 .byte $15, $16, $15, $18, $15, $3A, $39, $3A
                 .byte $39, $4E, $4F, $4F, $4F, $0C, $14, $19
                 .byte $0C, $0C, $4F, $4F, $4F, $0C, $0C, $14
                 .byte $16, $14, $15, $14, $19, $0C, $0C, $0C
                 .byte $0C, $4F, $4F, $0C, $14, $14, $15, $14
                 .byte $16, $14, $14, $15, $15, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $4E, $4F, $4F
                 .byte $4F, $4D, $3A, $39, $3A, $4E, $4F, $4F
                 .byte $0C, $14, $19, $0C, $0C, $4F, $4F, $4F
                 .byte $4D, $39, $3A, $4E, $4F, $4F, $0C, $14
                 .byte $16, $16, $15, $14, $15, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $4E, $4F, $4F, $4F, $4D, $39, $3A, $39
                 .byte $39, $3A, $39, $3A, $39, $3A, $4E, $4F
                 .byte $4F, $4F, $4F, $4F, $15, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $15, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $00, $00, $00
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
L_2EFC           .byte $00, $00, $00, $00, $00, $38, $6C, $38
                 .byte $54, $38, $10, $7C, $BA, $BA, $6C, $92
L_2F0C           .byte $6C, $10, $10, $00, $00, $00, $00, $10
                 .byte $00, $28, $00, $00, $00, $44, $44, $10
L_2F1C           .byte $00, $10, $00, $00, $70, $00, $00, $00
                 .byte $10, $00, $28, $00, $00, $00, $44, $44
                 .byte $10, $00, $10, $00, $00, $1C, $00, $24
                 .byte $FF, $BD, $FF, $66, $24, $18, $00, $00
                 .byte $00, $00, $18, $00, $00, $81, $00, $00
                 .byte $42, $00, $18, $18, $00, $00, $1C, $00
                 .byte $00, $18, $00, $00, $42, $00, $00, $42
L_2F54           .byte $00, $18, $18, $00, $00, $20, $00, $00
                 .byte $18, $18, $98, $98, $94, $6A, $6A, $94
L_2F64           .byte $98, $98, $18, $18, $00, $00, $00, $00
                 .byte $00, $00, $01, $09, $95, $94, $08, $00
L_2F74           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $08, $94, $95, $09, $01, $00
L_2F84           .byte $00, $00, $00, $00, $00, $18, $18, $19
                 .byte $19, $29, $56, $56, $29, $19, $19, $18
L_2F94           .byte $18, $00, $00, $00, $00, $00, $00, $80
                 .byte $90, $A9, $29, $10, $00, $00, $00, $00
L_2FA4           .byte $00, $00, $00, $00, $00, $00, $00, $10
                 .byte $29, $A9, $90, $80, $00, $00, $00, $00
                 .byte $00, $20, $5C, $3A, $35, $CB, $87, $46
L_2FBC           .byte $29, $10, $08, $00, $00, $00, $10, $10
                 .byte $10, $10, $10, $10, $10, $10, $10, $10
                 .byte $10, $10, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $10, $00
                 .byte $00, $00, $00, $00, $00, $00, $08, $10
                 .byte $29, $46, $87, $CB, $35, $3A, $5C, $20
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_2FFC           .byte $00, $00, $00, $00, $00, $00, $00, $00
L_3004           .byte $00, $00, $00, $00, $00, $00, $00, $00
L_300C           .byte $00, $00, $00, $00, $00, $00, $00, $00
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
L_30BC           .byte $00, $00, $00, $00, $00, $00, $00, $00
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
L_31E4           .byte $00, $00, $00, $00, $00, $00, $00, $00
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
                 .byte $00, $00, $00, $00
MISSILE_GFX      lda ENEMY_MOV_TYPE
                 bne L_3345
                 sta $06D3     ; intialize big plane
                 sta $06D4
                 sta $06D8
                 sta $0625
                 lda #$28
                 sta ENEMY_Y
                 sta $06D0
                 lda #$D0      ; set big plane intial position
                 sta ENEMY_X
                 sta HPOSP2
                 clc
                 adc #$1E
                 sta HPOSP3
                 lda #$00
                 sta $06AC
                 lda #$90
                 sta PCOLR3
                 sta PCOLR2
                 lda #$03      ; set quadruple size players
                 sta SIZEP2
                 sta SIZEP3
                 lda #$0F
                 sta L_542E+1
                 inc ENEMY_MOV_TYPE
                 rts
L_3345           jsr L_B550
                 lda $06D0
                 beq L_33B2
                 lda $06D8
                 bne L_3383
                 lda BIGPLANE_FIRE_TYPE
                 bne BIGPLANE_NARROW
BIGPLANE_WIDE    lda ENEMY_X   ; big plane fire wide
                 clc
                 adc #$14
                 sta HPOSM0
                 adc #$14
                 sta HPOSM1
                 cmp #$00
                 bne L_3377
BIGPLANE_NARROW  lda ENEMY_X   ; big plane fire narrow
                 clc
                 adc #$1A
                 sta HPOSM0
                 adc #$07
                 sta HPOSM1
L_3377           lda ENEMY_Y
                 clc
                 adc #$1E
                 sta ENEMY_BULLET_Y
                 inc $06D8
L_3383           ldx #$00
                 ldy ENEMY_BULLET_Y
BP_MISSILE_DEL   lda MISSILE_GFX,y
                 and #$FA
                 sta MISSILE_GFX,y
                 iny
                 inx
                 cpx #$03
                 bne BP_MISSILE_DEL
                 cpy #$B0
                 bcc L_33A1
                 lda #$00
                 sta $06D8
                 beq L_33B2
L_33A1           sty ENEMY_BULLET_Y
BP_MISSILE_ADD   lda MISSILE_GFX,y
                 ora #$05
                 sta MISSILE_GFX,y
                 iny
                 inx
                 cpx #$06
                 bne BP_MISSILE_ADD
L_33B2           lda $06D0
                 beq L_33FC
                 inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
                 cmp #$03
                 bcc L_33FC
                 lda #$00
                 sta ENEMY_MOV_TYPE+1
                 lda BIGPLANE_FIRE_TYPE
                 beq L_33D4
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE
                 cmp #$00
                 beq L_33D7
L_33D4           inc BIGPLANE_FIRE_TYPE
L_33D7           lda ENEMY_X
                 clc
                 adc #$1C
                 cmp PLANE_X
                 beq L_33F0
                 bcc L_33ED
                 dec ENEMY_X
                 lda #$00
                 cmp #$00
                 beq L_33F0
L_33ED           inc ENEMY_X
L_33F0           lda ENEMY_X   ; set big plane X position
                 sta HPOSP2
                 clc
                 adc #$1E
                 sta HPOSP3
L_33FC           ldx #$00
L_33FE           ldy ENEMY_Y
L_3401           lda $06D0
                 bne L_345A
L_3406           inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
L_340C           cmp #$06
                 bcs L_3411
                 rts
L_3411           stx ENEMY_MOV_TYPE+1
                 inc $06D1
L_3417           lda $06D1
                 cmp #$10
                 bcs L_3421
                 jmp L_B424
L_3421           cmp #$18
                 bcs L_3438
L_3425           lda L_B50D+6,x
                 sta PMGFX0+3,y
L_342B           lda L_B52D+3,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$1D
L_3435           bne L_3425
L_3437           rts
L_3438           txa
L_3439           sta PMGFX0+3,y
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$1D
                 bne L_3439
                 sta ENEMY_MOV_TYPE
                 sta AUDC4
                 sta ENEMY_TYPE
                 lda #$11
                 sta L_542E+1
                 jsr L_67E6
                 jsr L_67E6
                 rts
L_345A           lda M0PL
                 and #$0C
                 bne L_3468
                 lda M3PL
                 and #$0C
                 beq L_34C0
L_3468           ldy ENEMY_MOV_TYPE+3
                 ldx #$00
L_346D           lda MISSILE_GFX,y
L_3470           and #$AF
                 sta MISSILE_GFX,y
                 dey
                 inx
                 cpx #$0C
                 bne L_346D
                 lda #$00
L_347D           sta ENEMY_MOV_TYPE+5
                 sta ENEMY_MOV_TYPE+6
L_3483           inc $06AC
                 lda $06AC
                 cmp #$50
                 bcc L_34A9
                 lda #$00
L_348F           sta $06D0
                 sta $06D1
                 ldx #$00
                 ldy ENEMY_BULLET_Y
L_349A           lda MISSILE_GFX,y
                 and #$FA
                 sta MISSILE_GFX,y
                 iny
                 inx
L_34A4           cpx #$03
                 bne L_349A
                 rts
L_34A9           jsr L_67B8
L_34AC           lda $06D3
                 bne L_34B8
                 inc $06D3
                 lda #$00
                 beq L_34C0
L_34B8           lda $06D4
                 bne L_34C0
L_34BD           inc $06D4
L_34C0           lda ENEMY_MOV_TYPE+1
                 bne L_34F0
                 lda ENEMY_MOV_TYPE
                 cmp #$01
                 bne BP_CHECK_Y_UP
BP_CHECK_Y_DOWN  lda ENEMY_Y
                 cmp #$68      ; check big plane bottom Y
                 bcc L_34D9
                 lda #$02
                 sta ENEMY_MOV_TYPE
                 rts
L_34D9           inc ENEMY_Y
                 lda #$00
                 beq L_34F0
BP_CHECK_Y_UP    lda ENEMY_Y
                 cmp #$28      ; check big plane top Y
                 bcs L_34ED
L_34E7           lda #$01
L_34E9           sta ENEMY_MOV_TYPE
                 rts
L_34ED           dec ENEMY_Y
L_34F0           ldx #$00
                 ldy ENEMY_Y
                 lda BIGPLANE_FIRE_TYPE
                 bne BP_GFX_2_DRAW
BP_GFX_1_DRAW    lda BIG_PLANE_GFX1C,x
                 sta PMGFX0+3,y
L_3500           lda BIG_PLANE_GFX2C+5,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$1D
                 bne BP_GFX_1_DRAW
L_350C           rts
BP_GFX_2_DRAW    lda BIG_PLANE_GFX3C+2,x
                 sta PMGFX0+3,y
                 lda BIG_PLANE_GFX4C+7,x
                 sta PMGFX1,y
                 iny
                 inx
L_351B           cpx #$1D
                 bne BP_GFX_2_DRAW
                 rts
                 nop
                 nop
                 nop
                 nop
                 stx ENEMY_MOV_TYPE+1
                 lda #$0F
                 sta AUDC4
                 lda $06D1
                 sta AUDF4
L_3532           lda $06D2
                 bne L_354D
L_3537           lda L_B4D5+4,x
                 sta PMGFX0+3,y
                 lda L_B4F5+1,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$1D
                 bne L_3537
                 inc $06D2
                 rts
L_354D           lda BIG_PLANE_GFX1C,x
                 sta PMGFX0+3,y
                 lda BIG_PLANE_GFX2C+5,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$1D
                 bne L_354D
                 lda #$00
                 sta $06D2
                 rts
BIG_PLANE_GFX1   .byte $00, $0F, $1F, $1F, $1F, $0E, $01, $01
L_356D           .byte $01, $01, $01, $01, $13, $7F, $FF, $FF
                 .byte $EE, $FE, $EF, $7F, $32, $03, $62, $03
                 .byte $01, $01, $00, $06, $00, $00, $F0, $F8
                 .byte $F8, $F8, $70, $80, $80, $80, $80, $80
BIG_PLANE_GFX2   .byte $80, $C8, $FE, $FF, $FF, $77, $7F, $F7
                 .byte $FE, $4C, $C0, $46, $C0, $80, $80, $00
                 .byte $60, $00, $00, $0F, $1F, $1F, $1F, $0E
L_35A5           .byte $01, $01, $01, $01, $01, $01, $13, $7F
L_35AD           .byte $FF, $FF, $EE, $FE, $EF, $7F, $32, $03
                 .byte $1A, $03, $01, $01, $00, $01, $00, $00
                 .byte $F0, $F8, $F8, $F8, $70, $80, $80, $80
                 .byte $80, $80, $80, $C8, $FE, $FF, $FF, $77
                 .byte $7F, $F7, $FE, $4C, $C0, $58, $C0, $80
                 .byte $80, $00, $80, $00, $00, $0F, $10, $10
                 .byte $10, $0E, $01, $01, $01, $01, $01, $01
                 .byte $02, $7F, $80, $80, $80, $80, $80, $7F
                 .byte $02, $02, $02, $02, $01, $01, $00, $00
                 .byte $00, $00, $F0, $08, $08, $08, $70, $80
PMGFX0           .byte $80, $80, $80, $80, $80, $40, $FE, $01
L_3605           .byte $01, $01, $01, $01, $FE, $40, $40, $40
                 .byte $40, $80, $80, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $44, $AA, $AA, $2A, $4A, $8A
L_3625           .byte $8A, $AA, $E4, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $44
                 .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $44
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00
                 lda $06D7
                 beq L_365C
                 lda #$00
                 sta $06D7
                 beq L_365F
L_365C           inc $06D7
L_365F           lda $06D3
                 beq L_36C1
                 cmp #$01
                 bne L_3680
                 lda #$ED
                 sta PCOLR0
                 lda PLANE_X
                 sec
                 sbc #$01
                 sta BIGPLANE_FIRE_TYPE+1
                 inc $06D3
                 lda #$00
                 sta $06D5
                 beq L_36C1
L_3680           ldx #$00
                 lda ENEMY_Y
                 clc
                 adc #$10
                 tay
                 inc $06D5
                 lda $06D5
                 cmp #$04
                 bcc L_36A2
                 txa
L_3694           sta L_33FE+2,y
                 iny
                 inx
                 cpx #$08
                 bne L_3694
                 sta $06D3
                 beq L_36C1
L_36A2           lda $06D7
                 bne L_36B5
L_36A7           lda L_B620,x
                 sta L_33FE+2,y
                 iny
                 inx
                 cpx #$08
                 bne L_36A7
                 beq L_36C1
L_36B5           lda L_B628,x
                 sta L_33FE+2,y
                 iny
                 inx
                 cpx #$08
                 bne L_36B5
L_36C1           lda $06D4
                 bne L_36C7
                 rts
L_36C7           cmp #$01
                 bne L_36E0
                 sta $06D6
                 lda #$ED
                 sta PCOLR1
                 lda PLANE_X
                 clc
                 adc #$0A
                 sta BIGPLANE_FIRE_TYPE+2
                 inc $06D4
                 rts
L_36E0           ldx #$00
                 lda ENEMY_Y
                 clc
                 adc #$10
                 tay
                 inc $06D6
                 lda $06D6
                 cmp #$05
                 bcc L_3701
                 txa
L_36F4           sta L_3500,y
                 iny
                 inx
                 cpx #$08
                 bne L_36F4
L_36FD           sta $06D4
PMGFX1           rts
L_3701           lda $06D7
                 bne L_3713
L_3706           lda L_B620,x
                 sta L_3500,y
L_370C           iny
                 inx
                 cpx #$08
                 bne L_3706
                 rts
L_3713           lda L_B628,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$08
                 bne L_3713
                 rts
L_3720           .byte $00, $00, $0E, $1B, $1F, $1B, $0E, $00
                 .byte $00, $10, $44, $82, $82, $44, $10, $00
                 .byte $00, $77, $60, $74, $74, $60, $60, $60
                 .byte $28, $44, $44, $40, $4C, $44, $44, $28
                 .byte $44, $44, $44, $6C, $6C, $44, $44, $44
                 .byte $7C, $54, $10, $10, $10, $10, $54, $7C
                 .byte $63, $63, $36, $14, $14, $36, $63, $63
                 .byte $63, $63, $76, $70, $76, $63, $63, $63
                 .byte $60, $60, $60, $60, $60, $63, $77, $77
                 .byte $77, $6B, $6B, $6B, $6B, $63, $63, $63
                 .byte $36, $77, $63, $63, $63, $63, $63, $63
                 .byte $36, $77, $63, $63, $63, $63, $77, $36
L_3780           .byte $68, $44, $44, $44, $68, $40, $40, $40
                 .byte $36, $77, $63, $63, $63, $67, $77, $37
                 .byte $68, $44, $44, $44, $68, $68, $48, $44
                 .byte $37, $77, $60, $76, $37, $03, $77, $76
                 .byte $77, $77, $55, $14, $14, $14, $14, $14
                 .byte $44, $44, $44, $44, $44, $44, $44, $28
                 .byte $63, $63, $63, $63, $63, $36, $36, $1C
                 .byte $63, $63, $63, $6B, $6B, $6B, $6B, $77
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $63, $63, $63, $36, $36, $1C, $1C, $1C
                 lda ENEMY_TYPE
                 bne L_37D6
                 rts
L_37D6           .byte $20, $50, $49, $20, $03, $49, $AD, $16
                 .byte $06, $D0, $09, $20, $CE, $55, $20, $B7
                 .byte $55, $20, $B7, $55, $20, $60, $57, $AD
                 .byte $0B, $D4, $C9, $58, $90, $F9, $A2, $26
                 .byte $BD, $08, $9D, $9D, $09, $9D, $BD, $30
L_37FE           .byte $9D, $9D, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $9A, $9A, $9A, $9A, $9A, $9A
                 .byte $9A, $9A, $9A, $9A, $9A, $55, $55, $9A
                 .byte $9A, $9A, $AA, $AA, $AA, $55, $55, $AA
                 .byte $AA, $AA, $A0, $A3, $A0, $A8, $A8, $AC
                 .byte $A8, $A8, $8A, $8A, $8A, $0A, $8A, $AA
                 .byte $AA, $AA, $63, $63, $06, $0C, $18, $30
                 .byte $63, $63, $00, $00, $00, $08, $08, $00
                 .byte $00, $00, $FF, $FF, $FE, $F8, $E2, $E2
                 .byte $EA, $0A, $AA, $EA, $EA, $FA, $FA, $0E
                 .byte $C3, $C3, $AA, $EA, $EA, $FA, $FA, $FE
                 .byte $FF, $FF, $AA, $EA, $FA, $FE, $FE, $FA
                 .byte $EA, $EA, $AA, $AA, $AA, $AA, $AA, $AA
                 .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA
                 .byte $AA, $AE, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $55, $6A, $6A, $6A, $6A, $6A
                 .byte $6A, $6A, $55, $A9, $A9, $A9, $A9, $A9
                 .byte $A9, $A9, $6A, $6A, $6A, $6A, $6A, $6A
                 .byte $6A, $55, $A9, $A9, $A9, $A9, $A9, $A9
                 .byte $A9, $55, $3C, $FE, $E3, $03, $8B, $23
                 .byte $03, $8A, $FA, $FA, $FA, $BE, $BE, $BF
                 .byte $AF, $FB, $BF, $EF, $FF, $FF, $AF, $AF
                 .byte $FB, $FE, $FE, $FE, $FE, $FB, $BF, $EF
                 .byte $FB, $FF, $FF, $FF, $FF, $BF, $BA, $EE
                 .byte $9A, $57, $FE, $FE, $FE, $FA, $BE, $EE
                 .byte $FA, $EA, $FA, $FE, $FE, $FA, $BF, $EF
                 .byte $FB, $FF, $AA, $AA, $AA, $AE, $BE, $BF
                 .byte $AF, $BB, $BF, $EF, $FF, $FF, $AF, $AF
                 .byte $BB, $AE, $FA, $FA, $EA, $EA, $AA, $FA
                 .byte $FA, $EA, $EA, $AA, $FA, $FA, $86, $86
L_38EE           .byte $FA, $FE, $2A, $95, $9A, $9A, $9A, $9A
                 .byte $9A, $9A, $AA, $A5, $95, $9A, $9A, $9A
                 .byte $9A, $A5, $AA, $6A, $5A, $9A, $9A, $9A
                 .byte $9A, $6A, $FF, $57, $A7, $A7, $A7, $A7
                 .byte $A7, $A7, $99, $99, $99, $9A, $9A, $9A
                 .byte $99, $99, $A9, $A9, $A9, $A9, $AA, $AA
                 .byte $A9, $A9, $A7, $A7, $A7, $AB, $AB, $AB
L_3926           .byte $A7, $A7, $AB, $AF, $B5, $F5, $D7, $DF
                 .byte $DF, $DF, $EA, $FA, $5E, $5F, $D7, $F7
                 .byte $F7, $F7, $DF, $DF, $DF, $DF, $DF, $DF
                 .byte $DF, $DF, $F7, $F7, $F7, $F7, $F7, $F7
                 .byte $F7, $F7, $DF, $DF, $DF, $D7, $F5, $B5
                 .byte $AF, $AB, $F7, $F7, $F7, $D7, $5F, $5E
                 .byte $FA, $EA, $E2, $C8, $F0, $BE, $BC, $AC
                 .byte $AF, $AB, $AB, $AF, $AE, $BC, $BE, $F8
                 .byte $E2, $C8, $A5, $9A, $9A, $9A, $9A, $95
                 .byte $A5, $AA, $6A, $9A, $9A, $9A, $9A, $5A
L_3976           .byte $6A, $AA, $AA, $55, $AA, $AA, $AA, $AA
                 .byte $AA, $AA, $AA, $95, $9A, $99, $99, $99
                 .byte $9A, $9A, $AA, $56, $A6, $A6, $A6, $A6
                 .byte $A6, $A6, $9A, $9A, $99, $99, $99, $9A
                 .byte $95, $AA, $89, $25, $FF, $85, $FF, $85
                 .byte $21, $88, $9A, $9A, $9A, $9A, $9A, $9A
                 .byte $95, $AA, $AA, $AA, $AA, $AA, $AA, $AA
L_39AE           .byte $55, $AA, $A7, $A7, $A7, $A7, $A7, $A7
                 .byte $57, $BF, $62, $58, $FF, $50, $FF, $58
                 .byte $62, $08, $CE, $CC, $DC, $56, $54, $54
                 .byte $58, $62, $02, $00, $00, $00, $00, $20
                 .byte $00, $00, $00, $00, $80, $00, $00, $00
                 .byte $02, $00, $AA, $AA, $AA, $AA, $A8, $A8
                 .byte $AC, $A8, $AA, $AA, $AA, $AA, $AA, $AA
                 .byte $8A, $0A, $A2, $A2, $A2, $A0, $A2, $AA
                 .byte $AA, $AA, $02, $32, $02, $2A, $2A, $3A
                 .byte $2A, $2A, $AA, $AA, $AA, $AA, $AA, $AA
                 .byte $A2, $A0, $AA, $AA, $AA, $AA, $2A, $2A
                 .byte $3A, $2A, $AA, $AA, $AA, $AA, $AB, $AF
                 .byte $AF, $AB, $A8, $A8, $A8, $A8, $A8, $E8
                 .byte $E8, $A8, $03, $0E, $0E, $3A, $3A, $EA
                 .byte $EA, $C0, $AA, $AA, $AA, $AA, $AA, $AA
                 .byte $AA, $00, $C0, $B0, $B0, $AC, $AC, $AB
                 .byte $AB, $03, $03, $0E, $0E, $3A, $3A, $EA
                 .byte $EA, $EA, $FF, $AA, $AA, $AA, $AA, $AA
                 .byte $AA, $AA, $C0, $B0, $B0, $AC, $AC, $AB
                 .byte $AB, $AB, $85, $15, $56, $5A, $9A, $1A
                 .byte $5A, $6A, $61, $96, $AA, $AA, $AA, $AA
                 .byte $AA, $AA, $62, $98, $A4, $A6, $90, $98
                 .byte $A6, $A4, $A9, $A9, $A6, $A4, $A6, $A9
                 .byte $A9, $A6, $96, $4A, $4A, $16, $96, $16
                 .byte $5A, $5A, $6A, $5A, $9A, $1A, $4A, $46
L_3A76           .byte $15, $85, $AA, $AA, $AA, $AA, $AA, $AA
                 .byte $96, $41, $A6, $A4, $98, $92, $A4, $A4
                 .byte $C0, $62, $FF, $AB, $AB, $AB, $AB, $AB
                 .byte $AB, $AB, $89, $25, $85, $14, $91, $55
                 .byte $14, $45, $45, $54, $45, $51, $45, $51
                 .byte $15, $51, $62, $58, $52, $14, $44, $55
                 .byte $14, $51, $A0, $3A
                 ldx #$95
                 lda #$02
                 jsr L_38EE+2
                 lda #$15
                 sta MVLNG+1
                 ldy #$8A
                 ldx #$1D
                 lda #$7C
                 jsr L_39AE
                 lda #$02
                 jsr L_3926+1
                 rts
                 asl RTCLOK+2
                 jmp L_3AC9
L_3AC9           jmp L_3AD6
                 .byte $09, $44, $3A, $44, $55, $50, $2E, $53
                 .byte $59, $53
L_3AD6           lda #$04
                 sta MVLNG+1
                 lda #$00
                 sta ECSIZE
                 ldy #$3A
                 ldx #$CC
                 lda #$01
                 jsr L_38EE+2
                 lda #$01
                 jsr L_3A76+2
                 lda TSLNUM
                 cmp #$80
                 bcs L_3AF5
                 jmp L_3AFB
L_3AF5           lda #$01
                 jsr L_3926+1
                 rts
L_3AFB           lda #$FF
                 sta MVLNG+1
                 ldy #$FF
                 ldx L_37FE+3
                 lda L_37FE+2
                 jsr L_227C+4
                 .byte $00, $28, $02, $00, $08, $02, $02, $00
                 .byte $02, $08, $20, $02, $88, $22, $01, $02
                 .byte $08, $00, $02, $28, $82, $00, $FB, $FE
                 .byte $BE, $BE, $EE, $E8, $A0, $80, $FF, $FB
                 .byte $EA, $A2, $80, $00, $00, $00, $AF, $FE
                 .byte $EA, $8A, $02, $00, $00, $00, $FB, $BE
                 .byte $BF, $AF, $2B, $0A, $02, $02, $80, $A0
                 .byte $A8, $AA, $AA, $AB, $BF, $EE, $00, $00
                 .byte $00, $80, $A2, $AA, $AF, $BB, $00, $00
                 .byte $00, $02, $8A, $AB, $BF, $EE, $02, $02
                 .byte $0A, $2B, $BB, $AE, $BF, $EB, $FF, $FE
                 .byte $F8, $E0, $E2, $C0, $A8, $80, $FF, $38
                 .byte $00, $80, $22, $00, $28, $00, $EF, $BE
                 .byte $28, $20, $02, $00, $28, $00, $BF, $2F
                 .byte $0B, $0A, $23, $02, $0B, $02, $80, $E0
                 .byte $F8, $F2, $C0, $C8, $A2, $80, $03, $0E
                 .byte $3E, $8F, $03, $22, $88, $00, $80, $A8
                 .byte $80, $A2, $A0, $A8, $AA, $AA, $00, $28
                 .byte $00, $22, $80, $00, $3C, $FB, $00, $28
                 .byte $00, $02, $20, $38, $AF, $FE, $03, $0A
                 .byte $03, $22, $0B, $0B, $2F, $FF, $80, $A0
                 .byte $E8, $E8, $B8, $B8, $A0, $80, $02, $0A
                 .byte $2E, $3B, $2B, $2A, $0A, $02, $20, $20
                 .byte $20, $20, $20, $20, $20, $A0, $F0, $EC
                 .byte $E5, $E1, $F3, $E5, $A0, $F7, $E1, $E9
                 .byte $F4, $A2, $3B, $A9, $B5, $20, $2D, $39
                 .byte $AD, $0A, $07, $09, $80, $8D, $0A, $07
                 .byte $20, $E0, $07, $A9, $00, $85, $A3, $A9
                 .byte $00, $85, $A4, $4C, $F4, $3B, $03, $44
                 .byte $38, $3A, $A9, $3B, $85, $A6, $A9, $F0
L_3BFA           .byte $85, $A5, $A0, $FE, $A2, $00, $00, $00
                 .byte $18, $66, $FF, $5A, $24, $24, $24, $24
L_3C0A           .byte $66, $3C, $00, $00, $00, $18, $66, $FF
                 .byte $5A, $24, $24, $24, $24, $66, $3C, $00
L_3C1A           .byte $00, $00, $1A, $2F, $7F, $36, $14, $14
L_3C22           .byte $14, $1E, $2E, $1C, $00, $00, $00, $1A
                 .byte $2F, $7F, $36, $14, $14, $14, $1E, $2E
L_3C32           .byte $1C, $00, $00, $00, $58, $F4, $FE, $6C
L_3C3A           .byte $28, $28, $28, $78, $74, $38, $00, $00
                 .byte $00, $58, $F4, $FE, $6C, $28, $28, $28
L_3C4A           .byte $78, $74, $38, $00, $00, $00, $00, $7E
                 .byte $DB, $24, $24, $24, $3C, $7E, $3C, $00
L_3C5A           .byte $00, $00, $00, $00, $00, $DB, $24, $3C
L_3C62           .byte $7E, $3C, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $7E, $FF, $7E, $00, $00, $00
L_3C72           .byte $00, $00, $00, $00, $00, $00, $00, $3C
                 .byte $7E, $3C, $24, $DB, $3C, $00, $00, $00
L_3C82           .byte $00, $00, $00, $00, $00, $18, $3C, $24
L_3C8A           .byte $5A, $3C, $18, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $18, $66, $FF, $5A, $00
L_3C9A           .byte $00, $00, $00, $00, $00, $00, $00, $99
L_3CA2           .byte $66, $FF, $5A, $24, $24, $3C, $00, $00
                 .byte $00, $42, $18, $00, $24, $00, $00, $00
L_3CB2           .byte $00, $18, $00, $00, $00, $00, $81, $18
                 .byte $00, $24, $00, $00, $00, $00, $18, $00
L_3CC2           .byte $00, $00, $01, $40, $10, $00, $08, $00
L_3CCA           .byte $00, $00, $00, $10, $00, $00, $00, $02
                 .byte $20, $10, $00, $08, $00, $00, $00, $00
L_3CDA           .byte $10, $00, $00, $00, $80, $02, $08, $00
                 .byte $10, $00, $00, $00, $00, $08, $00, $00
L_3CEA           .byte $00, $40, $04, $08, $00, $10, $00, $00
L_3CF2           .byte $00, $00, $08, $00, $00, $00, $3C, $24
                 .byte $18, $18, $18, $7E, $BD, $66, $18, $18
L_3D02           .byte $00, $00, $00, $3C, $24, $18, $18, $18
L_3D0A           .byte $7E, $BD, $66, $18, $18, $00, $00, $00
                 .byte $00, $18, $00, $00, $00, $00, $5A, $18
L_3D1A           .byte $00, $00, $00, $0C, $00, $00, $18, $00
                 .byte $00, $00, $00, $5A, $18, $00, $00, $00
L_3D2A           .byte $30, $00, $7E, $FF, $7E, $00, $00, $00
                 .byte $18, $18, $66, $BD, $7E, $18, $18, $18
L_3D3A           .byte $24, $3C, $00, $00, $00, $18, $18, $66
                 .byte $BD, $7E, $18, $18, $18, $24, $3C, $00
L_3D4A           .byte $0C, $00, $00, $00, $18, $5A, $00, $00
L_3D52           .byte $00, $00, $18, $00, $00, $30, $00, $00
                 .byte $00, $18, $5A, $00, $00, $00, $00, $18
L_3D62           .byte $00, $00, $00, $30, $58, $30, $30, $3C
                 .byte $76, $D6, $5E, $3C, $30, $00, $00, $46
L_3D72           .byte $00, $0C, $1A, $0C, $0C, $3C, $6E, $6B
L_3D7A           .byte $7A, $3C, $0C, $00, $00, $54, $00, $00
                 .byte $20, $00, $00, $00, $08, $2C, $28, $00
L_3D8A           .byte $00, $00, $18, $00, $00, $20, $00, $00
                 .byte $00, $08, $2C, $28, $00, $00, $00, $60
L_3D9A           .byte $00, $00, $04, $00, $00, $00, $10, $34
L_3DA2           .byte $14, $00, $00, $00, $18, $29, $00, $00
                 .byte $04, $00, $00, $00, $10, $34, $14, $00
L_3DB2           .byte $00, $00, $06, $30, $30, $B0, $B8, $64
                 .byte $64, $B8, $B0, $30, $30, $00, $00, $00
L_3DC2           .byte $00, $00, $00, $98, $99, $01, $01, $00
L_3DCA           .byte $00, $00, $00, $00, $00, $00, $00, $01
                 .byte $99, $99, $00, $00, $00, $00, $00, $00
L_3DDA           .byte $00, $00, $22, $47, $BE, $EC, $24, $34
L_3DE2           .byte $78, $E0, $C0, $00, $00, $00, $00, $00
                 .byte $40, $40, $10, $18, $09, $02, $00, $00
L_3DF2           .byte $00, $00, $00, $00, $44, $E2, $7D, $37
                 .byte $24, $2C, $1E, $07, $03, $00, $00, $00
L_3E02           .byte $00, $00, $02, $02, $08, $18, $90, $40
L_3E0A           .byte $00, $00, $00, $00, $00, $00, $0C, $0C
                 .byte $0D, $1D, $26, $26, $1D, $0D, $0C, $0C
L_3E1A           .byte $00, $00, $00, $00, $00, $00, $19, $99
L_3E22           .byte $80, $80, $00, $00, $00, $00, $00, $00
L_3E2A           .byte $00, $00, $80, $99, $99, $00, $00, $00
L_3E32           .byte $00, $00, $00, $00, $00, $00, $03, $07
                 .byte $1E, $2C, $24, $37, $7D, $E2, $44, $00
L_3E42           .byte $00, $00, $00, $00, $40, $90, $18, $08
                 .byte $02, $02, $00, $00, $00, $00, $00, $1A
                 .byte $B1, $18, $85, $1B, $A0, $01, $B1, $1A
                 .byte $AA, $88, $B1, $1A, $20, $B0, $31, $20
L_3E62           .byte $B6, $31, $00, $38, $7C, $BA, $BA, $57
L_3E6A           .byte $EF, $56, $BB, $BB, $7E, $3C, $00, $00
                 .byte $00, $44, $44, $28, $10, $28, $44, $44
L_3E7A           .byte $00, $00, $00, $00, $38, $6C, $CE, $EE
                 .byte $47, $FF, $AA, $AB, $FF, $7E, $3C, $00
L_3E8A           .byte $00, $00, $10, $30, $10, $38, $00, $54
L_3E92           .byte $54, $00, $00, $00, $00, $00, $00, $78
                 .byte $24, $24, $24, $24, $24, $24, $24, $78
L_3EA2           .byte $00, $00, $00, $F8, $84, $5A, $5A, $5A
L_3EAA           .byte $5A, $5A, $5A, $5A, $84, $F8, $00, $00
                 .byte $20, $00, $10, $18, $08, $02, $02, $00
                 .byte $00, $00, $00, $00, $00, $3B, $00, $C7
                 .byte $3E, $D0, $3E, $3B, $00, $CF, $3E, $DA
                 .byte $3E, $52, $54, $53, $00, $D5, $3E, $E4
                 .byte $3E, $3B, $00, $DB, $3E, $EE, $3E, $3B
                 .byte $00, $E1, $3E, $F8, $3E, $3B, $00, $EA
                 .byte $3E, $02, $3F, $47, $4F, $48, $31, $00
                 .byte $F7, $3E, $0C, $3F, $43, $4D, $50, $20
                 .byte $23, $24, $33, $30, $00, $04, $3F, $16
L_3EFA           .byte $3F, $42, $50, $4C, $20, $47, $00, $10
                 .byte $1C, $62, $42, $A3, $95, $92, $4A, $56
L_3F0A           .byte $64, $3C, $88, $08, $05, $5C, $7E, $7E
                 .byte $FF, $FF, $FE, $7E, $7E, $7C, $BC, $10
L_3F1A           .byte $00, $00, $00, $00, $1E, $33, $21, $41
L_3F22           .byte $63, $22, $1C, $00, $00, $00, $00, $12
                 .byte $40, $1E, $3F, $7F, $7F, $7F, $3E, $9C
L_3F32           .byte $01, $24, $00, $00, $00, $04, $20, $0C
L_3F3A           .byte $12, $54, $09, $28, $00, $00, $00, $00
                 .byte $00, $00, $08, $01, $0C, $5E, $1C, $2A
L_3F4A           .byte $14, $00, $00, $00, $00, $00, $00, $1E
                 .byte $33, $21, $41, $22, $1C, $00, $00, $00
L_3F5A           .byte $00, $00, $00, $09, $5E, $3F, $7F, $7F
                 .byte $3E, $8C, $01, $08, $00, $00, $49, $00
L_3F6A           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $08, $08, $08, $3E, $77, $55, $7F
                 .byte $3E, $08, $08, $08, $14, $14, $1C, $00
L_3F82           .byte $00, $00, $0C, $00, $00, $63, $00, $00
                 .byte $7F, $7F, $7F, $36, $00, $00, $00, $08
L_3F92           .byte $08, $00, $00, $00, $00, $18, $00, $00
                 .byte $14, $00, $00, $7F, $7F, $7F, $36, $00
                 .byte $00, $00, $08, $08, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $01, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $14
                 .byte $00, $00, $40, $4C, $4C, $80, $00, $00
                 .byte $00, $00, $00, $00, $00, $80, $00, $00
                 .byte $00, $00, $00, $00, $00, $00
L_4000           lda VCOUNT
                 cmp #$7A
                 bcc L_4000
                 lda #$40
                 sta NMIEN
                 lda #$20
                 sta VDSLST
                 lda #$40
                 sta VDSLST+1
                 lda #$C0
                 sta NMIEN
                 rts
                 .byte $3F, $9D, $F4, $1D
DLI_1            pha           ; set playfield color at the top of the screen
                 txa
                 pha
                 tya
                 pha
                 lda #$FC
                 ldx #$96
L_4029           ldy #$05
                 pha
                 lda #$08
                 sta WSYNC
                 stx COLBK
                 sty COLPF2
                 sta COLPF1
                 pla
                 sta COLPF0
                 lda #$75
                 sta VDSLST
                 pla
                 tay
                 pla
                 tax
                 pla
                 rti
                 .byte $23, $4C, $8A, $22, $20, $3B, $23, $4C
                 .byte $0F, $21, $A2, $10, $A9, $0C, $9D, $42
                 .byte $03, $4C, $E9, $31, $54, $59, $50, $45
                 .byte $20, $22, $59, $22, $20, $54, $4F, $20
                 .byte $44, $45, $4C, $45, $54, $45, $2E, $2E
                 .byte $2E, $9B, $44, $45
DLI_2            pha           ; set plane position and size
                 txa
                 pha
                 tya
                 pha
                 lda PLANE_X
L_407D           ldx #$75
                 ldy #$0E
                 sta WSYNC
                 sta HPOSP0
                 sta HPOSP1
                 stx COLPM0
                 sty COLPM1
                 lda #$00
                 sta SIZEP0
                 sta SIZEP1
                 lda #$B5
                 sta VDSLST
                 pla
                 tay
                 pla
                 tax
                 pla
                 rti
                 .byte $57, $45, $44, $9B, $00, $04, $04, $36
                 .byte $39, $37, $20, $46, $52, $45, $45, $20
                 .byte $53, $45
DLI_3            pha           ; reset charbase and color for score panel
                 txa
                 pha
                 lda #$02
                 ldx #$46
                 sta WSYNC
                 stx CHBASE
                 sta COLBK
                 lda #$E0
                 sta VDSLST
                 pla
                 tax
                 pla
                 rti
                 .byte $4F, $50, $59, $33, $32, $2E, $43, $4F
                 .byte $4D, $9B, $9B, $00, $00, $00, $00, $00
                 .byte $6C, $23
DLI_4            pha           ; set color for score line
                 lda #$2F
                 sta WSYNC
                 sta COLPF0
                 lda #$F2
                 sta VDSLST
                 pla
                 rti
                 ldx #$00
DLI_5            pha           ; reset everything at the end of the screen
                 txa
                 pha
                 tya
                 pha
                 lda #$20
                 ldx #$00
                 ldy BIGPLANE_FIRE_TYPE+1
                 sta WSYNC
                 stx COLPF2
                 stx COLBK
                 stx COLPF1
                 sty HPOSP0
                 sty HPOSP1
                 sta VDSLST
                 lda $0657
                 sta SIZEP0
                 sta SIZEP1
                 pla
                 tay
                 pla
                 tax
                 pla
                 rti
                 lda #$AD
                 and MVTA+1
                 cmp #$90
                 bne L_4137
                 lda #$81
                 sta L_9C1D+7
                 lda #$8C
                 sta L_9C25
                 jmp L_4169+1
L_4137           lda L_9C1D+7
                 cmp #$01
                 bne L_4152
L_413E           lda L_AD20+5
                 .byte $52, $06
                 cmp #$01
                 bne L_4153
                 lda #$00
                 sta $065B
                 sta $065A
                 inc $0652
L_4152           rts
L_4153           cmp #$02
                 bne L_4181
                 lda #$AC
                 sta AUDC3
                 lda $065A
                 clc
                 adc #$1E
                 cmp #$DA
                 bcs L_416D
                 sta $065A
L_4169           sta AUDF3
                 rts
L_416D           inc $065B
                 lda $065B
                 cmp #$03
                 bcs L_417D
                 lda #$00
                 sta $065A
                 rts
L_417D           inc $0652
                 rts
L_4181           lda $065A
                 sec
                 sbc #$0A
                 cmp #$0A
                 bcc L_4192
                 sta $065A
                 sta AUDF3
                 rts
L_4192           lda #$00
                 sta $0652
                 sta AUDC3
                 rts
L_419B           .byte $E0, $00, $85, $CF, $BD, $00, $00, $00
                 .byte $10, $3C, $56, $7A, $3E, $1C, $10, $08
L_41AB           .byte $34, $18, $00, $00, $1C, $00, $00, $00
                 .byte $28, $04, $00, $00, $00, $10, $08, $00
L_41BB           .byte $00, $3A, $00, $08, $00, $00, $00, $28
                 .byte $04, $00, $00, $00, $10, $08, $00, $00
L_41CB           .byte $00, $00, $00, $00, $10, $78, $D4, $BC
                 .byte $F8, $70, $10, $20, $58, $30, $00, $04
L_41DB           .byte $00, $70, $00, $00, $00, $28, $40, $00
L_41E3           .byte $00, $00, $10, $20, $00, $00, $08, $00
                 .byte $20, $00, $00, $00, $28, $40, $00, $00
                 .byte $00, $10, $20, $00, $00, $3A, $29, $01
                 .byte $F0, $08, $BD, $D8, $3A
                 lda $06AD
                 beq L_4208
                 jmp L_42DC
L_4208           inc ENEMY_MOV_TYPE+2
                 lda ENEMY_MOV_TYPE+2
                 cmp #$02
                 bcs L_4215
                 jmp L_42DC
L_4215           lda #$00
                 sta ENEMY_MOV_TYPE+2
                 lda $0680
                 cmp #$01
                 bmi L_4224
                 jmp L_42D9
L_4224           lda #$07
                 sta $0680
                 lda L_9C1D+7
                 cmp #$35
                 bne L_424C
                 lda L_9C25
                 cmp #$92
                 bne L_424C
                 inc $0681
                 lda $0681
                 cmp #$20
                 beq L_4244
                 jmp L_42DC
L_4244           lda #$D4
                 sta L_4029+1
                 jmp L_426F
L_424C           lda L_9C1D+7
                 cmp #$B7
                 bne L_426F
                 lda L_9C25
                 cmp #$7C
                 bne L_426F
                 inc $0681
                 lda $0681
                 cmp #$22
                 beq L_4267
                 jmp L_42DC
L_4267           lda #$05
                 sta L_4029+1
                 jmp L_426F
L_426F           lda #$00
                 sta $0681
                 lda L_9C1D+7
                 cmp #$05
                 bne L_428F
                 lda L_9C25
                 cmp #$90
                 bne L_428F
                 lda #$81
                 sta L_9C1D+7
                 lda #$8C
                 sta L_9C25
                 jmp L_42C5
L_428F           lda L_9C1D+7
                 cmp #$01
                 bne L_42AA
                 lda L_9C25
                 cmp #$80
                 bne L_42AA
                 lda #$DF
                 sta L_9C1D+7
                 lda #$7C
                 sta L_9C25
                 jmp L_42C5
L_42AA           lda L_9C1D+7
                 cmp #$BF
                 bne L_42C5
                 lda L_9C25
                 cmp #$79
                 bne L_42C5
                 inc $06AB
                 lda #$75
                 sta L_9C1D+7
                 lda #$98
                 sta L_9C25
L_42C5           lda L_9C1D+7
                 sec
                 sbc #$28
                 sta L_9C1D+7
                 bcc L_42D3
                 jmp L_42DC
L_42D3           dec L_9C25
                 jmp L_42DC
L_42D9           dec $0680
L_42DC           lda $0680
                 sta VSCROL
                 jsr L_1920
                 lda #$20
                 sta VDSLST
L_42EA           lda $063A
                 sta VNTP
                 lda $063B
                 sta VNTP+1
                 ldy #$00
                 jmp (VNTP)
                 .byte $20, $00, $00, $00, $00, $00, $00
L_4300           txa
                 pha
                 lda $0631
                 bne L_4317
                 lda #$2A
                 sta AUDC1
                 sta $0631
                 lda #$10
                 sta AUDF1
                 jmp L_431F
L_4317           lda #$00
                 sta AUDC1
                 sta $0631
L_431F           lda COLOR0
                 cmp #$7A
                 beq L_432E
                 lda #$7A
                 sta COLOR0
                 jmp L_4333
L_432E           lda #$3A
                 sta COLOR0
L_4333           ldx #$00
                 ldy #$00
L_4337           inx
                 bne L_4337
                 iny
                 cpy #$40
                 bne L_4337
                 pla
                 tax
                 rts
                 .byte $AE, $FF, $00, $00, $00, $00, $00, $00
                 pha
                 lda #$E0
                 sta WSYNC
                 sta CHBASE
                 lda #$FF
                 sta COLPF1
                 pla
                 rti
L_435A           bvs L_43CC
                 bvs L_43A0
                 rti
                 .byte $9C, $02, $02, $02, $02, $02, $02, $02
                 .byte $02, $02, $02, $02, $02, $02, $02, $02
                 .byte $02, $02, $02, $02, $02, $02, $02, $02
                 .byte $41, $20, $9C, $A9, $0C, $9D, $42, $03
                 .byte $20
                 lda #$00
                 sta AUDCTL
                 lda #$03
                 sta SKCTL
                 sta $0658
                 lda #$FF
                 sta PORTB
                 sta CH
                 lda $06CF
                 cmp #$99
                 beq L_43E7
                 lda #$83
                 sta VNTD+1
L_43A0           lda #$21
                 sta VNTD
                 lda #$A0
                 sta TOPSTK+1
                 lda #$61
                 sta TOPSTK
                 ldy #$00
L_43AE           lda (VNTD),y
                 sta (TOPSTK),y
                 cpy #$A0
                 bne L_43BC
                 lda VNTD+1
                 cmp #$8F
                 beq L_43C6
L_43BC           iny
                 bne L_43AE
                 inc VNTD+1
                 inc TOPSTK+1
                 jmp L_43AE
L_43C6           lda #$33
                 sta VNTD+1
                 lda #$00
L_43CC           sta VNTD
                 sta TOPSTK
                 lda #$B2
                 sta TOPSTK+1
L_43D4           ldy #$00
L_43D6           lda (VNTD),y
                 sta (TOPSTK),y
                 iny
                 bne L_43D6
                 inc TOPSTK+1
                 inc VNTD+1
                 lda VNTD+1
                 cmp #$38
                 bne L_43D4
L_43E7           lda VVBLKI
                 sta $063A
                 lda VVBLKI+1
                 sta $063B
                 tax
                 lda #$10
L_43F6           sta $0606,x
                 inx
                 cpx #$06
                 bne L_43F6
                 lda #$0E
                 ldx #$00
L_4402           sta $065E,x
                 inx
                 cpx #$05
                 bne L_4402
L_440A           lda #$99
                 sta $06CF
                 jsr L_1900
                 sei
                 lda #$F2
                 sta VVBLKI
                 lda #$47
                 sta VVBLKI+1
                 cli
                 lda #$01
                 sta CRSINH
                 jsr L_5380
                 lda #$70
                 sta CHBAS
                 lda #$42
                 sta COLOR0
                 sta COLOR3
                 lda #$00
                 sta COLOR2
                 sta COLOR4
                 ldx #$00
L_443D           lda $065E,x
                 sta L_7659+2,x
                 inx
                 cpx #$05
                 bne L_443D
                 ldx #$05
L_444A           lda $0606,x
                 sta L_7671+5,x
                 dex
                 cpx #$FF
                 bne L_444A
                 lda #$08
                 sta COLOR1
                 ldx #$00
L_445C           lda L_73F9+7,x
                 sta L_9C3D+3,x
                 lda L_74F9+7,x
                 sta L_9D3D+3,x
                 lda L_75F9+7,x
                 sta L_9E3D+3,x
                 lda L_76F9+7,x
                 sta L_9F3D+3,x
                 inx
                 bne L_445C
                 lda #$40
                 sta NMIEN
                 lda #$4A
                 sta VDSLST
                 lda #$43
                 sta VDSLST+1
                 lda #$06
                 sta L_9C25+2
                 sta L_9C25+3
                 sta L_9C35
                 sta L_9C35+1
                 lda #$82
                 sta L_9C25+6
                 lda #$07
                 sta L_9C2D+3
                 sta L_9C2D+4
                 lda #$C0
                 sta NMIEN
                 lda #$00
                 sta $064C
                 sta $064D
                 sta $064E
                 jsr L_2063
L_44B4           lda STRIG0
                 beq L_452C
                 lda CH
                 cmp #$3E
                 bne L_450A
                 inc $0659
                 lda $0659
                 cmp #$0A
                 bcs L_4505
                 lda #$00
                 sta $0659
                 lda $0658
                 bne L_44EC
                 sta L_7641+1
                 sta L_9E7D+5
                 lda #$01
                 sta $0658
                 lda #$2E
                 sta L_7641
                 sta L_9E7D+4
                 jsr L_1900
                 bne L_4505
L_44EC           lda #$00
                 sta $0658
                 sta AUDC1
                 sta AUDF2
                 lda #$26
                 sta L_7641
                 sta L_9E7D+4
                 sta L_7641+1
                 sta L_9E7D+5
L_4505           lda #$FF
                 sta CH
L_450A           inc $064C
                 lda $064C
                 bne L_44B4
                 inc $064D
                 lda $064D
                 bne L_44B4
                 inc $064E
                 lda $064E
                 cmp #$18
                 bne L_44B4
                 lda #$01
                 sta $066E
                 jmp L_4531
L_452C           lda #$00
                 sta $066E
L_4531           ldx #$00
                 stx $064A
                 stx $0627
                 stx $0632
                 stx $0636
                 stx $064F
                 stx $0637
                 stx $0698
                 stx $0635
                 stx $0653
                 stx STAGE_NO+3
                 stx STAGE_NO
                 stx STAGE_NO+4
                 txa
L_4558           sta L_9B9D+3,x
                 sta L_9C9D+3,x
                 sta L_9D9D+3,x
                 inx
                 bne L_4558
                 ldx #$00
                 txa
L_4567           sta L_9F5D+3,x
                 inx
                 cpx #$50
                 bne L_4567
                 ldx #$00
L_4571           lda #$10
                 sta L_9F95+7,x
                 sta $0600,x
                 sta $069C,x
                 lda $0606,x
                 sta L_9FA5+3,x
                 inx
                 cpx #$06
                 bne L_4571
                 lda #$10
                 sta L_9F9D+5
                 sta L_9FAD+1
                 sta $069A
                 lda #$11
                 sta $069B
                 lda #$13
                 sta L_9FA5
                 sta $062E
                 ldx #$00
L_45A1           lda L_45ED,x
                 sta L_9F75+1,x
                 inx
                 cpx #$0F
                 bne L_45A1
                 lda #$30
                 sta PMBASE
                 lda #$3E
                 sta SDMCTL
                 lda #$03
                 sta GRACTL
                 sta $0656
                 jsr L_6CFF+1
                 lda #$38
                 sta CHBAS
                 jsr L_5000
                 jsr L_5C00
                 lda $065D
                 beq L_45D4
                 jsr L_7800
L_45D4           jsr L_5380
                 ldx #$00
                 txa
L_45DA           sta HPOSP0,x
                 inx
                 cpx #$08
                 bne L_45DA
                 lda $066E
                 beq L_45EA
                 jmp L_452C
L_45EA           jmp L_440A
L_45ED           .byte $02, $11, $02, $00, $00, $00, $01, $01
                 .byte $01, $00, $00, $28, $29, $27, $28, $28
                 .byte $29, $27, $28, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $80, $80, $80, $80, $80
                 .byte $80, $88, $D8, $28, $28, $28, $28, $28
                 .byte $EE, $6C, $28, $42, $40, $9C, $02, $02
                 .byte $02, $02, $02, $02, $02, $02, $02, $02
                 .byte $02, $02, $02, $63, $63, $06, $0C, $18
                 .byte $30, $63, $63, $02, $02, $41, $20, $9C
                 .byte $20, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $38, $38, $38, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $36, $63, $63, $63, $63
                 .byte $63, $63, $36, $0C, $3C, $0C, $0C, $0C
                 .byte $0C, $0C, $0C, $36, $63, $03, $37, $76
                 .byte $60, $63, $77, $36, $63, $03, $17, $16
                 .byte $03, $63, $36, $18, $30, $60, $6C, $7F
                 .byte $7F, $0C, $0C, $77, $63, $60, $76, $37
                 .byte $03, $63, $36, $0C, $18, $30, $36, $77
                 .byte $63, $63, $36, $77, $63, $03, $03, $06
                 .byte $06, $0C, $0C, $36, $63, $63, $77, $36
                 .byte $63, $63, $36, $36, $63, $63, $77, $36
                 .byte $06, $0C, $18, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $14, $36, $63, $77, $77
                 .byte $63, $63, $63, $76, $63, $63, $77, $76
                 .byte $63, $63, $76, $36, $77, $63, $60, $60
                 .byte $63, $77, $36, $76, $77, $63, $63, $63
                 .byte $63, $77, $76, $37, $77, $60, $74, $74
                 .byte $60, $77, $37, $37, $77, $60, $74, $74
                 .byte $60, $60, $60, $28, $44, $44, $40, $4C
                 .byte $44, $44, $28, $44, $44, $44, $6C, $6C
                 .byte $44, $44, $44, $7C, $54, $10, $10, $10
                 .byte $10, $54, $7C, $63, $63, $36, $14, $14
                 .byte $36, $63, $63, $63, $63, $76, $70, $76
                 .byte $63, $63, $63, $60, $60, $60, $60, $60
                 .byte $63, $77, $77, $77, $6B, $6B, $6B, $6B
                 .byte $63, $63, $63, $36, $77, $63, $63, $63
                 .byte $63, $63, $63, $36, $77, $63, $63, $63
                 .byte $63, $77, $36, $68, $44, $44, $44, $68
                 .byte $40, $40, $40, $36, $77, $63, $63, $63
                 .byte $67, $77, $37, $68, $44, $44, $44, $68
                 .byte $68, $48, $44, $37, $77, $60, $76, $37
                 .byte $03, $77, $76, $77, $77, $55, $14, $14
                 .byte $14, $14, $14, $44, $44, $44, $44, $44
                 .byte $44, $44, $28, $63, $63, $63, $63, $63
                 .byte $36, $36, $1C, $63, $63, $63, $6B, $6B
                 .byte $6B, $6B, $77, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $63, $63, $63, $36, $36
                 .byte $1C, $1C, $1C
                 lda ENEMY_TYPE
                 bne L_47D6
                 rts
L_47D6           jsr L_4950
                 jsr L_4902+1
                 lda ENEMY_MOV_TYPE
                 bne L_47EA
                 jsr L_55CC+2
                 jsr L_55B7
                 jsr L_55B7
L_47EA           jsr L_5760
                 lda VCOUNT
                 cmp #$58
                 jsr L_1920
                 jmp L_42EA
                 sta $099D,x
                 sta L_30BC+1,x
L_47FE           sta L_AD98+5,x
                 asl TRAMSZ,x
                 bne L_4847
                 lda #$20
                 sta ENEMY_MOV_TYPE+7
                 lda $0683
                 bpl L_4812
                 lda PLANE_X
L_4812           sta HPOSP2
                 sta HPOSP3
                 sta BIGPLANE_FIRE_TYPE+1
                 sta BIGPLANE_FIRE_TYPE+2
                 sta ENEMY_X
                 lda #$34
                 sta PCOLR0
                 lda #$0E
                 sta PCOLR1
                 sta PCOLR3
                 sta $0624
                 lda #$82
                 sta PCOLR2
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE
                 sta BIGPLANE_FIRE_TYPE+3
                 lda #$0E
                 sta L_542E+1
                 inc ENEMY_MOV_TYPE
                 rts
L_4847           inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
                 cmp #$03
                 bcc L_4864
                 ldx #$00
                 stx ENEMY_MOV_TYPE+1
                 lda BIGPLANE_FIRE_TYPE
                 bne L_4861
                 inc BIGPLANE_FIRE_TYPE
                 jmp L_4864
L_4861           stx BIGPLANE_FIRE_TYPE
L_4864           lda ENEMY_MOV_TYPE
                 cmp #$06
                 bcc L_486E
                 jmp L_4945
L_486E           cmp #$03
                 bpl L_48C8
                 inc ENEMY_MOV_TYPE+7
                 lda ENEMY_MOV_TYPE+7
                 cmp #$30
                 bne L_487F
                 inc ENEMY_MOV_TYPE
L_487F           cmp #$6A
                 bcc L_488C
                 jsr L_4950
                 inc ENEMY_MOV_TYPE
                 jmp L_4945
L_488C           lda $0624
                 bne L_4894
                 jmp L_4945
L_4894           ldx ENEMY_MOV_TYPE+7
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_48B3
L_489E           lda L_3CF2+5,y
                 sta PMGFX0+3,x
                 lda L_3D0A+7,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_489E
                 jmp L_4945
L_48B3           lda L_3D02+2,y
                 sta PMGFX0+3,x
                 lda L_3D1A+4,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_48B3
                 jmp L_4945
L_48C8           cmp #$05
                 bpl L_48E8
                 lda $0624
                 beq L_48E2
                 ldx ENEMY_MOV_TYPE+7
                 ldy #$00
L_48D6           lda L_3D2A+1,y
                 sta L_3406+1,x
                 inx
                 iny
                 cpy #$04
                 bne L_48D6
L_48E2           inc ENEMY_MOV_TYPE
                 jmp L_4945
L_48E8           dec ENEMY_MOV_TYPE+7
                 lda ENEMY_MOV_TYPE+7
                 cmp #$25
                 bcs L_490D
                 ldx ENEMY_MOV_TYPE+7
                 ldy #$00
                 tya
L_48F8           sta L_33FE+2,x
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
L_4902           bne L_48F8
                 inc ENEMY_MOV_TYPE
                 sta $0624
                 jmp L_4945
L_490D           lda $0624
                 bne L_4914
                 beq L_4945
L_4914           ldx ENEMY_MOV_TYPE+7
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_4933
L_491E           lda L_3D2A+6,y
                 sta L_33FE+2,x
                 lda L_3D4A,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_491E
                 jmp L_4945
L_4933           lda L_3D3A+3,y
                 sta L_33FE+2,x
                 lda L_3D52+5,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4933
L_4945           lda ENEMY_MOV_TYPE
                 cmp #$02
                 bpl L_494D
                 rts
L_494D           jmp L_4C80
L_4950           ldx ENEMY_MOV_TYPE+7
                 ldy #$00
                 tya
L_4956           sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4956
                 rts
                 .byte $1F, $60, $4C, $80, $4C, $54
                 jsr L_4000
                 sei
                 lda #$00
                 sta VVBLKI
                 lda #$42
                 sta VVBLKI+1
                 cli
                 rts
                 .byte $45, $00, $00, $00, $00, $00, $00
L_4980           ldx #$00
L_4982           lda L_49BC,x
                 sta L_9C1D+3,x
                 inx
                 cpx #$22
                 bne L_4982
                 lda #$00
                 sta DINDEX
                 lda #$40
                 sta SAVMSC
                 lda #$9C
                 sta SAVMSC+1
                 lda #$20
                 sta SDLSTL
                 lda #$9C
                 sta SDLSTH
                 lda #$38
                 sta CHBAS
                 lda #$00
                 sta COLOR0
                 sta COLOR1
                 sta COLOR2
                 sta COLOR4
                 lda #$FF
                 sta COLOR3
                 rts
L_49BC           .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $C2 ; DL LMS DLI Antic Mode 2
                 .word L_9875
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $A4 ; DL DLI Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $24 ; DL Horizontal Scroll Antic Mode 4
                 .byte $84 ; DL DLI Antic Mode 4
                 .byte $46 ; DL LMS Antic Mode 6
                 .word L_9F5D+3
                 .byte $06 ; DL Antic Mode 6
                 .byte $86 ; DL DLI Antic Mode 6
                 .byte $06 ; DL Antic Mode 6
                 .byte $86 ; DL DLI Antic Mode 6
                 .byte $41 ; DL JMP
                 .word L_9C1D+3
                 .byte $AD, $9C, $1E, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00
                 lda ENEMY_MOV_TYPE+1
                 bne L_4A23
                 lda #$2A
                 sta HPOSP1
                 sta $061F
                 ldx #$00
L_4A0F           lda L_4A6D,x
                 sta L_954D+6,x
                 inx
                 cpx #$0B
                 bne L_4A0F
                 lda #$0E
                 sta PCOLR1
                 inc ENEMY_MOV_TYPE+1
                 rts
L_4A23           inc $061F
                 lda $061F
                 sta HPOSP1
                 cmp #$D8
                 bcc L_4A36
                 lda #$00
                 sta ENEMY_MOV_TYPE+1
                 rts
L_4A36           cmp #$50
                 bne L_4A48
                 ldx #$00
L_4A3C           lda L_4A75+3,x
                 sta L_954D+6,x
                 inx
                 cpx #$0B
                 bne L_4A3C
                 rts
L_4A48           cmp #$78
                 bne L_4A5A
                 ldx #$00
L_4A4E           lda L_4A7D+6,x
                 sta L_954D+6,x
                 inx
                 cpx #$0B
                 bne L_4A4E
                 rts
L_4A5A           cmp #$A0
                 beq L_4A5F
                 rts
L_4A5F           ldx #$00
L_4A61           lda L_4A8D+1,x
                 sta L_954D+6,x
                 inx
                 cpx #$0B
                 bne L_4A61
                 rts
L_4A6D           .byte $14, $3E, $77, $BE, $6A, $47, $BB, $66
L_4A75           .byte $D3, $6E, $34, $00, $00, $2C, $BE, $6A
L_4A7D           .byte $44, $BA, $66, $D4, $6E, $04, $00, $00
                 .byte $0C, $36, $2A, $44, $3A, $66, $50, $00
L_4A8D           .byte $00, $00, $00, $00, $14, $2A, $14, $1A
                 .byte $04, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00
L_4AC0           jsr L_4980
                 jsr L_4000
                 jsr L_1900
                 lda #$00
                 sta NMIEN
                 sei
                 lda #$00
                 sta VVBLKI
                 lda #$42
                 sta VVBLKI+1
                 cli
                 lda #$C0
                 sta NMIEN
                 lda #$A2
                 sta L_407D+1
                 lda #$01
                 sta GPRIOR
                 sta $060E
                 sta ENEMY_TYPE
                 ldx #$00
                 txa
L_4AF2           sta MISSILE_GFX,x
                 sta L_33FE+2,x
                 sta L_3500,x
                 sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 bne L_4AF2
                 tax
L_4B05           sta HPOSP0,x
                 sta SIZEP0,x
                 sta ENEMY_X+6,x
                 inx
                 cpx #$04
                 bne L_4B05
                 sta $060C
                 sta $060D
                 sta ENEMY_MOV_TYPE+5
                 sta ENEMY_MOV_TYPE+6
                 sta ENEMY_MOV_TYPE
                 sta ENEMY_Y+5
                 sta $0698
                 sta $0620
                 sta $0621
                 sta $0624
                 sta $0625
                 sta $06AA
                 lda #$74
                 sta HPOSP0
                 sta HPOSP1
                 sta PLANE_X
                 sta PLANE_X+1
                 lda #$20
                 sta PLANE_X+2
                 lda GPRIOR
                 ora #$10
                 sta GPRIOR
                 lda #$05
                 sta L_4029+1
                 lda #$30
                 sta $0683
                 jsr L_4B80
                 lda #$0F
                 sta COLOR3
                 jmp L_6CA0
                 .byte $50, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00
L_4B80           inc $060C
                 lda $060C
                 cmp #$02
                 bcc L_4B9F
                 lda #$00
                 sta $060C
                 lda $060D
                 bne L_4B9A
                 inc $060D
                 jmp L_4B9F
L_4B9A           lda #$00
                 sta $060D
L_4B9F           ldx #$00
                 ldy PLANE_X+2
                 lda $060E
                 bne L_4BD4
                 lda $060D
                 bne L_4BC1
L_4BAE           lda L_3C1A,x
                 sta L_3470,y
                 lda L_3CC2+1,x
                 sta L_356D+3,y
                 iny
                 inx
                 cpx #$0D
                 bne L_4BAE
                 rts
L_4BC1           lda L_3C22+5,x
                 sta L_3470,y
                 lda L_3CCA+6,x
                 sta L_356D+3,y
                 iny
                 inx
                 cpx #$0D
                 bne L_4BC1
                 rts
L_4BD4           cmp #$01
                 bne L_4C03
                 lda $060D
                 bne L_4BF0
L_4BDD           lda L_3BFA+6,x
                 sta L_3470,y
                 lda L_3CA2+7,x
                 sta L_356D+3,y
                 iny
                 inx
                 cpx #$0D
                 bne L_4BDD
                 rts
L_4BF0           lda L_3C0A+3,x
                 sta L_3470,y
                 lda L_3CB2+4,x
                 sta L_356D+3,y
                 iny
                 inx
                 cpx #$0D
                 bne L_4BF0
                 rts
L_4C03           lda $060D
                 bne L_4C1B
L_4C08           lda L_3C32+2,x
                 sta L_3470,y
                 lda L_3CDA+3,x
                 sta L_356D+3,y
                 iny
                 inx
                 cpx #$0D
                 bne L_4C08
                 rts
L_4C1B           lda L_3C3A+7,x
                 sta L_3470,y
                 lda L_3CEA,x
                 sta L_356D+3,y
                 iny
                 inx
                 cpx #$0D
                 bne L_4C1B
                 rts
                 .byte $4F, $00
L_4C30           lda #$28
                 sta AUDC1
                 sta AUDC2
                 ldx #$01
L_4C3A           stx AUDF1
                 inx
                 stx AUDF2
                 jsr L_561C
                 cpx #$09
                 bmi L_4C3A
                 lda #$00
                 sta AUDC1
                 sta AUDC2
                 rts
                 .byte $48, $00, $00, $00, $00, $00, $00, $00
                 .byte $00
L_4C5A           lda #$28
                 sta AUDC1
                 sta AUDC2
                 ldx #$0D
L_4C64           stx AUDF1
                 dex
                 stx AUDF2
                 jsr L_561C
                 cpx #$03
                 bpl L_4C64
                 lda #$00
                 sta AUDC1
                 sta AUDC2
                 rts
                 .byte $ED, $00, $00, $00, $00
L_4C80           lda BIGPLANE_FIRE_TYPE+3
                 bne L_4C99
                 lda #$20
                 sta ENEMY_Y
                 sta $0625
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE+4
                 jsr L_4CCD
                 inc BIGPLANE_FIRE_TYPE+3
                 rts
L_4C99           cmp #$06
                 bcc L_4CA0
                 jmp L_4D74
L_4CA0           cmp #$03
                 bpl L_4D09
                 inc ENEMY_Y
                 lda ENEMY_Y
                 cmp #$30
                 bne L_4CB1
                 inc BIGPLANE_FIRE_TYPE+3
L_4CB1           cmp #$6A
                 bcc L_4CCD
L_4CB5           ldx ENEMY_Y
                 ldy #$00
                 tya
L_4CBB           sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4CBB
                 inc BIGPLANE_FIRE_TYPE+3
                 jmp L_4D74
L_4CCD           lda $0625
                 bne L_4CD5
                 jmp L_4D74
L_4CD5           ldx ENEMY_Y
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_4CF4
L_4CDF           lda L_3CF2+5,y
                 sta PMGFX0+3,x
                 lda L_3D0A+7,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4CDF
                 jmp L_4D74
L_4CF4           lda L_3D02+2,y
                 sta PMGFX0+3,x
                 lda L_3D1A+4,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4CF4
                 jmp L_4D74
L_4D09           cmp #$05
                 bpl L_4D29
                 lda $0625
                 beq L_4D23
                 ldx ENEMY_Y
                 ldy #$00
L_4D17           lda L_3D2A+1,y
                 sta L_3406+1,x
                 inx
                 iny
                 cpy #$04
                 bne L_4D17
L_4D23           inc BIGPLANE_FIRE_TYPE+3
                 jmp L_4D74
L_4D29           dec ENEMY_Y
                 lda ENEMY_Y
                 cmp #$25
                 bcs L_4D3B
                 lda #$00
                 sta $0625
                 jmp L_4CB5
L_4D3B           lda $0625
                 bne L_4D43
                 jmp L_4D74
L_4D43           ldx ENEMY_Y
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_4D62
L_4D4D           lda L_3D2A+6,y
                 sta L_33FE+2,x
                 lda L_3D4A,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4D4D
                 jmp L_4D74
L_4D62           lda L_3D3A+3,y
                 sta L_33FE+2,x
                 lda L_3D52+5,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4D62
L_4D74           lda BIGPLANE_FIRE_TYPE+3
                 cmp #$02
                 bpl L_4D7C
                 rts
L_4D7C           jmp L_4DA0
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00
L_4DA0           lda BIGPLANE_FIRE_TYPE+4
                 bne L_4DB9
                 lda #$20
                 sta ENEMY_Y+1
                 sta $0627
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE+5
                 jsr L_4DED
                 inc BIGPLANE_FIRE_TYPE+4
                 rts
L_4DB9           cmp #$06
                 bcc L_4DC0
                 jmp L_4EA7
L_4DC0           cmp #$03
                 bpl L_4E29
                 inc ENEMY_Y+1
                 lda ENEMY_Y+1
                 cmp #$30
                 bne L_4DD1
                 inc BIGPLANE_FIRE_TYPE+4
L_4DD1           cmp #$6A
                 bcc L_4DED
                 ldx ENEMY_Y+1
                 ldy #$00
                 tya
L_4DDB           sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4DDB
                 inc BIGPLANE_FIRE_TYPE+4
                 jmp L_4EA7
L_4DED           lda $0627
                 bne L_4DF5
                 jmp L_4EA7
L_4DF5           ldx ENEMY_Y+1
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_4E14
L_4DFF           lda L_3CF2+5,y
                 sta PMGFX0+3,x
                 lda L_3D0A+7,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4DFF
                 jmp L_4EA7
L_4E14           lda L_3D02+2,y
                 sta PMGFX0+3,x
                 lda L_3D1A+4,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4E14
                 jmp L_4EA7
L_4E29           cmp #$05
                 bpl L_4E49
                 lda $0627
                 beq L_4E43
                 ldx ENEMY_Y+1
                 ldy #$00
L_4E37           lda L_3D2A+1,y
                 sta L_3406+1,x
                 inx
                 iny
                 cpy #$04
                 bne L_4E37
L_4E43           inc BIGPLANE_FIRE_TYPE+4
                 jmp L_4EA7
L_4E49           dec ENEMY_Y+1
                 lda ENEMY_Y+1
                 cmp #$25
                 bcs L_4E6E
                 ldx ENEMY_Y+1
                 ldy #$00
                 sty $0627
                 tya
L_4E5C           sta L_33FE+2,x
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4E5C
                 inc BIGPLANE_FIRE_TYPE+4
                 jmp L_4EA7
L_4E6E           lda $0627
                 bne L_4E76
                 jmp L_4EA7
L_4E76           ldx ENEMY_Y+1
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_4E95
L_4E80           lda L_3D2A+6,y
                 sta L_33FE+2,x
                 lda L_3D4A,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4E80
                 jmp L_4EA7
L_4E95           lda L_3D3A+3,y
                 sta L_33FE+2,x
                 lda L_3D52+5,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4E95
L_4EA7           lda BIGPLANE_FIRE_TYPE+4
                 cmp #$02
                 bpl L_4EAF
                 rts
L_4EAF           jmp L_4EC0
                 .byte $4F, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00
L_4EC0           lda BIGPLANE_FIRE_TYPE+5
                 bne L_4ED9
                 lda #$20
                 sta ENEMY_Y+2
                 sta $06B0
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE+6
                 jsr L_4F0D
                 inc BIGPLANE_FIRE_TYPE+5
                 rts
L_4ED9           cmp #$06
                 bcc L_4EE0
                 jmp L_4FCA
L_4EE0           cmp #$03
                 bpl L_4F49
                 inc ENEMY_Y+2
                 lda ENEMY_Y+2
                 cmp #$30
                 bne L_4EF1
                 inc BIGPLANE_FIRE_TYPE+5
L_4EF1           cmp #$6A
                 bcc L_4F0D
                 ldx ENEMY_Y+2
                 ldy #$00
                 tya
L_4EFB           sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4EFB
                 inc BIGPLANE_FIRE_TYPE+5
                 jmp L_4FCA
L_4F0D           lda $06B0
                 bne L_4F15
                 jmp L_4FCA
L_4F15           ldx ENEMY_Y+2
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_4F34
L_4F1F           lda L_3CF2+5,y
                 sta PMGFX0+3,x
                 lda L_3D0A+7,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4F1F
                 jmp L_4FCA
L_4F34           lda L_3D02+2,y
                 sta PMGFX0+3,x
                 lda L_3D1A+4,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4F34
                 jmp L_4FCA
L_4F49           cmp #$05
                 bpl L_4F6C
                 inc BIGPLANE_FIRE_TYPE+5
                 lda $06B0
                 bne L_4F58
                 jmp L_4FCA
L_4F58           ldx ENEMY_Y+2
                 ldy #$00
L_4F5D           lda L_3D2A+1,y
                 sta L_3406+1,x
                 inx
                 iny
                 cpy #$04
                 bne L_4F5D
                 jmp L_4FCA
L_4F6C           dec ENEMY_Y+2
                 lda ENEMY_Y+2
                 cmp #$25
                 bcs L_4F91
                 ldx ENEMY_Y+2
                 ldy #$00
                 tya
L_4F7C           sta L_33FE+2,x
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4F7C
                 sta $06B0
                 inc BIGPLANE_FIRE_TYPE+5
                 jmp L_4FCA
L_4F91           lda $06B0
                 bne L_4F99
                 jmp L_4FCA
L_4F99           ldx ENEMY_Y+2
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_4FB8
L_4FA3           lda L_3D2A+6,y
                 sta L_33FE+2,x
                 lda L_3D4A,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4FA3
                 jmp L_4FCA
L_4FB8           lda L_3D3A+3,y
                 sta L_33FE+2,x
                 lda L_3D52+5,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_4FB8
L_4FCA           lda BIGPLANE_FIRE_TYPE+5
                 cmp #$02
                 bpl L_4FD2
                 rts
L_4FD2           jmp L_5440
                 .byte $27, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00
L_4FE0           lda $062E
                 cmp #$15
                 bcc L_4FE8
                 rts
L_4FE8           inc $062E
                 lda $062E
                 sta L_9FA5
                 rts
                 .byte $2C, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00
L_5000           lda $062E
                 cmp #$10
                 bpl L_5008
                 rts
L_5008           jsr L_4AC0
                 lda $0653
                 beq L_5017
                 lda #$24
                 sta L_9F85+1
                 bne L_501C
L_5017           lda #$00
                 sta L_9F85+1
L_501C           lda $0635
                 beq L_5028
                 lda #$2A
                 sta L_9F6D+7
                 bne L_502D
L_5028           lda #$00
                 sta L_9F6D+7
L_502D           jsr L_1880
                 lda $0652
                 beq L_5038
                 jsr L_413E+2
L_5038           jsr L_6900
                 lda ENEMY_Y+5
                 beq L_504B
                 jsr L_6840
                 lda $0698
                 bne L_5000
                 jmp L_51A4
L_504B           lda PLANE_X+4
                 beq L_5056
                 jsr L_1B00
                 jmp L_5162
L_5056           lda $06AB
                 beq L_508F
                 jsr L_1800
                 lda PLANE_X
                 cmp #$74
                 bne L_5077
                 lda #$01
                 ldx $06BF
                 cpx #$03
                 bcc L_5086
                 jsr L_6700
                 inc STAGE_NO
                 jmp L_5008
L_5077           bmi L_5081
                 lda #$00
                 dec PLANE_X
                 jmp L_5086
L_5081           lda #$02
                 inc PLANE_X
L_5086           sta $060E
                 jsr L_4B80
                 jmp L_51A4
L_508F           jsr L_52CF+1
                 lda $0633
                 beq L_509D
                 lda STRIG0
                 bne L_509D
                 rts
L_509D           lda STICK0
                 cmp #$0B
                 bne L_50AA
                 jsr L_5212
                 jmp L_5113
L_50AA           lda STICK0
                 cmp #$07
                 bne L_50B7
                 jsr L_5222
                 jmp L_5113
L_50B7           lda STICK0
                 cmp #$0E
                 bne L_50C4
                 jsr L_5232
                 jmp L_5113
L_50C4           lda STICK0
                 cmp #$0D
                 bne L_50CE
                 jsr L_5243
L_50CE           lda STICK0
                 cmp #$06
                 bne L_50DE
                 jsr L_5232
                 jsr L_5222
                 jmp L_5113
L_50DE           lda STICK0
                 cmp #$0A
                 bne L_50EE
                 jsr L_5232
                 jsr L_5212
                 jmp L_5113
L_50EE           lda STICK0
                 cmp #$05
                 bne L_50FE
                 jsr L_5243
                 jsr L_5222
                 jmp L_5113
L_50FE           lda STICK0
                 cmp #$09
                 bne L_510E
                 jsr L_5243
                 jsr L_5212
                 jmp L_5113
L_510E           lda #$01
                 sta $060E
L_5113           jsr L_4B80
                 jsr L_526E
                 jsr L_6900
                 lda CH
                 cmp #$21
                 bne L_5145
                 lda #$FF
                 sta CH
                 lda STAGE_NO+1
                 bne L_5145
                 ldx $062A
                 bmi L_5145
                 lda #$00
                 sta L_9F75+7,x
                 dec $062A
                 jsr L_6C79+7
                 lda #$FF
                 sta CH
                 jmp L_5162
L_5145           lda STRIG0
                 bne L_5162
                 lda ENEMY_MOV_TYPE+5
                 bne L_5162
                 lda #$4E
                 sta AUDC4
                 lda #$01
                 sta AUDF4
                 sta $0630
                 sta $062F
                 jsr L_5253
L_5162           lda CH
                 cmp #$0A
                 bne L_516C
                 jsr L_6C00
L_516C           lda CH
                 cmp #$3A
                 bne L_5195
                 lda $0653
                 beq L_5190
                 lda ENEMY_TYPE
                 cmp #$06
                 bne L_5181
                 beq L_5185
L_5181           cmp #$07
                 bne L_518D
L_5185           lda #$28
                 sta PCOLR2
                 jsr L_53C8
L_518D           jsr L_6000
L_5190           lda #$FF
                 sta CH
L_5195           inc $0683
                 lda $0683
                 cmp #$C4
                 bcc L_51A4
                 lda #$30
                 sta $0683
L_51A4           jsr L_6A80
                 jsr L_6090
                 lda $0663
                 cmp #$02
                 bcc L_51B4
                 jsr L_5D60
L_51B4           jsr L_6B80
                 sta HITCLR
                 jsr L_6D3F+1
                 jsr L_5420
                 jsr L_1C00
                 jsr L_526E
                 lda STAGE_NO+1
                 beq L_51D1
                 jsr L_6E50
                 jmp L_51D4
L_51D1           jsr L_53DF+1
L_51D4           lda $062F
                 beq L_5206
                 lda $0630
                 clc
                 adc #$08
                 sta $0630
                 sta AUDF4
                 cmp #$28
                 bcc L_5206
                 inc $062F
                 lda $062F
                 cmp $0656
                 beq L_51FE
                 lda #$01
                 sta $0630
                 sta AUDF4
                 bne L_5206
L_51FE           lda #$00
                 sta AUDC4
                 sta $062F
L_5206           jmp L_502D
                 jsr L_6700
                 inc $0632
                 jmp L_5008
L_5212           lda PLANE_X
                 cmp #$2B
                 bcc L_5221
                 lda #$00
                 sta $060E
                 dec PLANE_X
L_5221           rts
L_5222           lda PLANE_X
                 cmp #$C8
                 bcs L_5231
                 lda #$02
                 sta $060E
                 inc PLANE_X
L_5231           rts
L_5232           lda PLANE_X+2
                 cmp STAGE_NO+2
                 bmi L_523D
                 dec PLANE_X+2
L_523D           lda #$01
                 sta $060E
                 rts
L_5243           lda PLANE_X+2
                 cmp #$3A
                 bcs L_524D
                 inc PLANE_X+2
L_524D           lda #$01
                 sta $060E
                 rts
L_5253           inc ENEMY_MOV_TYPE+5
                 ldx PLANE_X
                 inx
                 stx HPOSM2
                 inx
                 inx
                 inx
                 inx
                 stx HPOSM3
                 lda PLANE_X+2
                 clc
                 adc #$70
                 sta ENEMY_MOV_TYPE+3
                 rts
L_526E           lda ENEMY_MOV_TYPE+5
                 bne L_5274
                 rts
L_5274           ldx ENEMY_MOV_TYPE+3
                 ldy #$00
L_5279           lda MISSILE_GFX,x
                 and #$AF
                 sta MISSILE_GFX,x
                 dex
                 iny
                 cpy #$0A
                 bne L_5279
                 inx
                 inx
                 inx
                 inx
                 inx
                 inx
                 inx
                 cpx #$30
                 bcc L_52BB
                 stx ENEMY_MOV_TYPE+3
                 ldy #$00
L_5297           lda MISSILE_GFX,x
                 ora #$50
                 sta MISSILE_GFX,x
                 dex
                 iny
                 cpy #$04
                 bne L_5297
                 lda $0635
                 beq L_52BA
                 dex
                 dex
L_52AC           lda MISSILE_GFX,x
                 ora #$50
                 sta MISSILE_GFX,x
                 dex
                 iny
                 cpy #$08
                 bne L_52AC
L_52BA           rts
L_52BB           lda #$00
                 sta ENEMY_MOV_TYPE+5
L_52C0           rts
                 .byte $00, $00, $8D, $1B, $06, $60, $00, $00
                 .byte $00
                 cpy #$08
                 bne L_52C0
                 rts
L_52CF           lda #$AD
                 sta TRAMSZ,x
                 beq L_52D6
                 rts
L_52D6           lda M0PL
                 and #$01
                 beq L_52EF
                 ldy $061E
                 bpl L_52EF
                 lda #$FE
                 sta STAGE_NO+5
                 jsr L_5364
                 sta $0620
                 beq L_533E
L_52EF           lda M1PL
                 and #$01
                 beq L_5308
                 ldy $061F
                 bpl L_5308
                 lda #$FB
                 sta STAGE_NO+5
                 jsr L_5364
                 sta $0621
                 beq L_533E
L_5308           lda P0PL
                 and #$0C
                 bne L_5310
                 rts
L_5310           lda ENEMY_Y
                 bpl L_533D
                 ldx $0634
                 cpx #$01
                 bmi L_533E
                 stx $0652
                 inx
                 stx $0634
                 lda PCOLR2
                 cmp #$26
                 bne L_532E
                 sta $0650
                 rts
L_532E           cmp #$F2
                 bne L_5336
                 sta $0651
                 rts
L_5336           cmp #$96
                 bne L_533D
                 sta $0635
L_533D           rts
L_533E           lda STAGE_NO+1
                 beq L_534B
                 lda $0634
                 cmp #$FF
                 beq L_534B
                 rts
L_534B           lda #$00
                 sta ENEMY_Y+6
                 sta $0635
                 sta $0653
                 inc ENEMY_Y+5
                 lda #$02
                 sta $062F
                 lda #$03
                 sta $0656
                 rts
L_5364           ldx #$00
L_5366           lda MISSILE_GFX,y
                 and STAGE_NO+5
L_536C           sta MISSILE_GFX,y
                 iny
                 inx
                 cpx #$03
                 bne L_5366
                 lda #$00
                 rts
                 brk
                 bne L_536C
                 lda #$00
                 rts
                 bne L_5380
L_5380           ldx #$00
                 txa
L_5383           sta AUDC1,x
                 inx
                 inx
                 cpx #$08
                 bmi L_5383
                 ldx #$00
L_538E           lda L_435A,x
                 sta L_9C1D+3,x
                 inx
                 cpx #$20
                 bne L_538E
                 lda #$00
                 tax
L_539C           sta L_9C3D+3,x
                 sta L_9D3D+3,x
                 sta L_9E3D+3,x
                 sta L_9F3D+3,x
                 inx
                 bne L_539C
                 lda #$00
                 sta DINDEX
                 lda #$40
                 sta SAVMSC
                 lda #$9C
L_53B5           sta SAVMSC+1
                 lda #$20
                 sta SDLSTL
                 lda #$9C
                 sta SDLSTH
                 lda #$E0
                 sta CHBAS
                 rts
                 brk
L_53C8           ldx #$00
                 txa
L_53CB           sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 bne L_53CB
                 lda #$FF
                 sta ENEMY_TYPE
                 lda #$00
                 sta $066A
                 rts
L_53DF           ora L_B6A8+5
                 asl PTABW
                 bpl L_53B5+1
                 and $D0
                 rol L_ABA8+5
                 asl $D0
                 and #$AD
                 ora (TRAMSZ),y
                 cmp #$22
                 bcc L_5417
                 ldx #$01
                 stx STAGE_NO+1
                 lda $06BB
                 bne L_5402
                 stx $06BB
L_5402           dex
                 stx STAGE_NO+4
                 lda #$20
                 sta STAGE_NO+2
                 rts
                 inc STAGE_NO+3
                 lda STAGE_NO+3
                 bne L_5417
                 inc STAGE_NO+4
L_5417           rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_5420           tya
                 pha
                 txa
                 pha
                 ldy #$00
                 sty ATRACT
L_5428           ldx #$10
L_542A           inx
                 bne L_542A
                 iny
L_542E           cpy #$0E
                 bne L_5428
                 pla
                 tax
                 pla
                 tay
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00
L_5440           lda BIGPLANE_FIRE_TYPE+6
                 bne L_5454
                 lda #$20
                 sta ENEMY_Y+3
                 sta $06B1
                 jsr L_5486
                 inc BIGPLANE_FIRE_TYPE+6
                 rts
L_5454           cmp #$06
                 bcc L_545B
                 jmp L_5543
L_545B           cmp #$03
                 bpl L_54BC
                 inc ENEMY_Y+3
                 lda ENEMY_Y+3
                 cmp #$30
                 bne L_546C
                 inc BIGPLANE_FIRE_TYPE+6
L_546C           cmp #$6A
                 bcc L_5486
                 ldx ENEMY_Y+3
                 ldy #$00
                 tya
L_5476           sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5476
                 inc BIGPLANE_FIRE_TYPE+6
                 rts
L_5486           lda $06B1
                 bne L_548C
                 rts
L_548C           ldx ENEMY_Y+3
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_54A9
L_5496           lda L_3CF2+5,y
                 sta PMGFX0+3,x
                 lda L_3D0A+7,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5496
                 rts
L_54A9           lda L_3D02+2,y
                 sta PMGFX0+3,x
                 lda L_3D1A+4,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_54A9
                 rts
L_54BC           cmp #$05
                 bpl L_54DD
                 inc BIGPLANE_FIRE_TYPE+6
                 lda $06B1
                 bne L_54C9
                 rts
L_54C9           ldx ENEMY_Y+3
                 ldy #$00
L_54CE           lda L_3D2A+1,y
                 sta L_3406+1,x
                 inx
                 iny
                 cpy #$04
                 bne L_54CE
                 jmp L_5543
L_54DD           dec ENEMY_Y+3
                 lda ENEMY_Y+3
                 cmp #$25
                 bcs L_550C
                 ldx ENEMY_Y+3
                 ldy #$00
                 tya
L_54ED           sta L_33FE+2,x
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_54ED
                 inc BIGPLANE_FIRE_TYPE+6
                 lda #$00
                 sta ENEMY_MOV_TYPE
                 nop
                 nop
                 sta ENEMY_TYPE
                 lda #$11
                 sta L_542E+1
                 rts
L_550C           lda $06B1
                 bne L_5512
                 rts
L_5512           ldx ENEMY_Y+3
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_5531
L_551C           lda L_3D2A+6,y
                 sta L_33FE+2,x
                 lda L_3D4A,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_551C
                 jmp L_5543
L_5531           lda L_3D3A+3,y
                 sta L_33FE+2,x
                 lda L_3D52+5,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5531
L_5543           rts
                 brk
                 ldx #$00
                 stx $0621
                 lda #$2F
                 sta L_9CE5+4,x
                 inc $0646
                 rts
                 lda L_3976+4
                 and #$01
                 beq L_5577+1
                 ldx $0621
                 cpx #$0E
L_555F           beq L_5581
                 bcc L_55B7+2
                 ldx #$00
L_5565           lda L_5641,x
                 sta L_3401+2,x
                 lda #$3F
                 sta L_3417,x
                 inx
                 cpx #$0E
                 bne L_5565
                 ldx #$00
L_5577           lda L_5649+6,x
                 sta L_34A4,x
                 jsr L_4300
                 inx
L_5581           cpx #$0C
                 bne L_5577
                 ldx #$00
L_5587           lda $069C,x
                 sta L_34BD+1,x
                 jsr L_4300
                 inx
                 cpx #$04
                 bne L_5587
                 ldx #$00
L_5597           lda L_5659+2,x
                 sta L_351B+1,x
                 jsr L_4300
L_55A0           inx
                 cpx #$05
                 bne L_5597
                 ldx #$00
L_55A7           lda $0600,x
                 sta L_3532+1,x
                 jsr L_4300
                 inx
                 cpx #$06
                 bne L_55A7
                 lda #$10
L_55B7           sta L_3537+2
                 ldx #$00
L_55BC           lda L_5659+7,x
                 sta BIG_PLANE_GFX2+7,x
                 jsr L_4300
                 inx
                 cpx #$0B
                 bne L_55BC
                 ldx #$00
L_55CC           lda $0606,x
                 sta L_35A5+6,x
                 jsr L_4300
                 inx
                 cpx #$06
                 bne L_55CC
                 lda #$10
                 sta L_35AD+4
                 ldx #$00
L_55E1           lda L_5671+4,x
                 sta L_3605+7,x
                 jsr L_4300
                 inx
                 cpx #$0D
                 bne L_55E1
                 lda $069A
                 sta L_3625+3
                 lda $069B
                 sta L_3625+4
                 ldx #$00
L_55FD           lda L_5669+2,x
                 sta L_3720+5,x
                 jsr L_4300
                 inx
                 cpx #$0A
                 bne L_55FD
L_560B           jsr L_4C30
L_560E           jsr L_4C5A
                 ldx #$00
L_5613           jsr L_561C
                 inx
                 cpx #$10
                 bne L_5613
                 rts
L_561C           txa
                 pha
                 lda COLOR0
                 cmp #$7A
                 beq L_562D
                 lda #$7A
                 sta COLOR0
                 jmp L_5632
L_562D           lda #$3A
                 sta COLOR0
L_5632           ldx #$00
                 ldy #$00
L_5636           inx
                 bne L_5636
                 iny
                 cpy #$30
                 bne L_5636
                 pla
                 tax
                 rts
L_5641           .byte $30, $29, $2C, $2F, $34, $07, $33, $00
L_5649           .byte $32, $25, $30, $2F, $32, $34, $21, $29
                 .byte $32, $23, $32, $21, $26, $34, $00, $28
L_5659           .byte $29, $34, $33, $23, $2F, $32, $25, $34
                 .byte $2F, $24, $21, $39, $07, $33, $00, $34
L_5669           .byte $2F, $30, $27, $21, $2D, $25, $00, $00
L_5671           .byte $2F, $36, $25, $32, $33, $34, $21, $27
                 .byte $25, $00, $32, $25, $21, $23, $28, $25
                 .byte $24, $00, $24, $00, $06, $8D, $29, $36
                 ldx #$00
                 jsr L_5692+2
                 inx
L_568F           cpx #$A9
                 brk
L_5692           sta NMIEN
                 sei
                 lda $063A
                 sta VVBLKI
                 lda $063B
                 sta VVBLKI+1
                 cli
                 lda #$40
                 sta NMIEN
                 ldx #$00
                 txa
L_56AB           sta HPOSP0,x
                 inx
                 cpx #$08
                 bne L_56AB
                 ldx #$00
                 txa
L_56B6           sta AUDC1,x
                 inx
                 inx
                 cpx #$08
                 bmi L_56B6
                 ldx #$00
L_56C1           lda L_5709,x
                 sta L_2FFC+4,x
                 inx
                 cpx #$20
                 bne L_56C1
                 lda #$00
                 tax
L_56CF           sta L_33FE+2,x
                 sta L_3500,x
                 sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 bne L_56CF
                 lda #$00
                 sta DINDEX
                 lda #$00
                 sta SAVMSC
                 lda #$34
                 sta SAVMSC+1
                 lda #$00
                 sta SDLSTL
                 lda #$30
                 sta SDLSTH
                 lda #$78
                 sta COLOR2
                 lda #$00
                 sta COLOR4
                 lda #$0F
                 sta COLOR1
                 lda #$E0
                 sta CHBAS
                 rts
L_5709           .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $46 ; DL LMS Antic Mode 6
                 .word L_33FE+2
                 .byte $06 ; DL Antic Mode 6
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
                 .byte $07 ; DL Antic Mode 7
                 .byte $07 ; DL Antic Mode 7
                 .byte $07 ; DL Antic Mode 7
                 .byte $07 ; DL Antic Mode 7
                 .byte $41 ; DL JMP
                 .word L_2FFC+4
                 .byte $00, $02, $D0, $08
                 lda #$19
                 sta L_9FA5
                 dec L_9F9D+7
                 lda L_9F9D+7
                 cmp #$10
                 bne L_5753+1
                 lda L_9FA5
                 cmp #$10
                 bne L_5753+1
                 lda L_9FA5+1
                 cmp #$10
                 bne L_5753+1
                 lda #$10
                 sta L_9F9D+7
L_574F           lda #$AD
                 asl TRAMSZ,x
L_5753           bne L_57A5
                 inc $066F
                 inc $066F
                 lda $066F
                 cmp #$20
L_5760           bcc L_5767
                 lda #$00
                 sta $066F
L_5767           clc
                 adc #$70
                 sta ENEMY_X
                 sta HPOSP2
                 sta HPOSP3
                 sta BIGPLANE_FIRE_TYPE+1
                 sta BIGPLANE_FIRE_TYPE+2
                 lda #$0F
                 sta PCOLR1
                 sta PCOLR3
                 lda #$82
                 sta PCOLR0
                 sta PCOLR2
                 lda #$20
                 sta ENEMY_MOV_TYPE+7
                 sta $0624
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE
                 sta ENEMY_MOV_TYPE+1
                 sta BIGPLANE_FIRE_TYPE+3
                 lda #$0E
                 sta L_542E+1
                 inc ENEMY_MOV_TYPE
                 rts
L_57A5           inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
                 cmp #$01
                 bcs L_57B8
                 lda ENEMY_MOV_TYPE+7
                 cmp #$69
                 bcc L_57CD
                 rts
                 rts
L_57B8           lda #$00
                 sta ENEMY_MOV_TYPE+1
                 lda BIGPLANE_FIRE_TYPE
                 bne L_57C8
                 inc BIGPLANE_FIRE_TYPE
                 jmp L_57CD
L_57C8           lda #$00
                 sta BIGPLANE_FIRE_TYPE
L_57CD           lda ENEMY_MOV_TYPE
                 cmp #$03
                 bcc L_57D7
                 jmp L_582A
L_57D7           inc ENEMY_MOV_TYPE+7
                 lda ENEMY_MOV_TYPE+7
                 cmp #$30
                 bne L_57E4
                 inc ENEMY_MOV_TYPE
L_57E4           cmp #$6A
                 bcc L_57EE
                 inc ENEMY_MOV_TYPE
                 jmp L_588B
L_57EE           lda $0624
                 bne L_57F6
                 jmp L_588B
L_57F6           ldx ENEMY_MOV_TYPE+7
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_5815
L_5800           lda L_3CF2+5,y
                 sta L_33FE+2,x
                 lda L_3D0A+7,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5800
                 jmp L_588B
L_5815           lda L_3D02+2,y
                 sta L_33FE+2,x
                 lda L_3D1A+4,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5815
                 jmp L_588B
L_582A           inc BIGPLANE_FIRE_TYPE+1
                 inc BIGPLANE_FIRE_TYPE+2
                 lda BIGPLANE_FIRE_TYPE+2
                 cmp #$E0
                 bcc L_5852
                 ldx ENEMY_MOV_TYPE+7
                 ldy #$00
                 tya
L_583D           sta L_33FE+2,x
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_583D
                 sta $0624
                 inc ENEMY_MOV_TYPE
                 jmp L_588B
L_5852           lda $0624
                 bne L_585A
                 jmp L_588B
L_585A           ldx ENEMY_MOV_TYPE+7
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_5879
L_5864           lda L_3D72,y
                 sta L_33FE+2,x
                 lda L_3D9A,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5864
                 jmp L_588B
L_5879           lda L_3D72,y
                 sta L_33FE+2,x
                 lda L_3DA2+6,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5879
L_588B           lda ENEMY_MOV_TYPE
                 cmp #$02
                 bpl L_5893
                 rts
L_5893           jmp L_58B0
                 brk
                 asl FKDEF
                 cmp #$04
                 bne L_58BA+2
                 ldx #$00
                 lda #$00
                 sta L_9C65+3,x
                 sta L_9C1D,x
                 lda #$06
                 sta L_9C8D+3,x
                 sta L_9C45,x
                 txa
L_58B0           lda BIGPLANE_FIRE_TYPE+3
                 bne L_58C9
                 lda #$20
                 sta ENEMY_Y
L_58BA           sta $0625
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE+4
                 jsr L_58F2
                 inc BIGPLANE_FIRE_TYPE+3
                 rts
L_58C9           lda $0634
                 beq L_58D1
                 jmp L_59F1
L_58D1           lda BIGPLANE_FIRE_TYPE+3
                 cmp #$03
                 bcc L_58DB
                 jmp L_592E
L_58DB           inc ENEMY_Y
                 lda ENEMY_Y
                 cmp #$30
                 bne L_58E8
                 inc BIGPLANE_FIRE_TYPE+3
L_58E8           cmp #$5A
                 bcc L_58F2
                 inc BIGPLANE_FIRE_TYPE+3
                 jmp L_59F1
L_58F2           lda $0625
                 bne L_58FA
                 jmp L_59F1
L_58FA           ldx ENEMY_Y
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_5919
L_5904           lda L_3CF2+5,y
                 sta PMGFX0+3,x
                 lda L_3D0A+7,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5904
                 jmp L_59F1
L_5919           lda L_3D02+2,y
                 sta PMGFX0+3,x
                 lda L_3D1A+4,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5919
                 jmp L_59F1
L_592E           cmp #$03
                 bne L_5987
                 dec ENEMY_X
                 lda ENEMY_X
                 sta HPOSP2
                 sta HPOSP3
                 cmp #$40
                 bcs L_594B
                 jsr L_59FC
                 inc BIGPLANE_FIRE_TYPE+3
                 jmp L_59F1
L_594B           lda $0625
                 bne L_5953
                 jmp L_59F1
L_5953           ldx ENEMY_Y
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_5972
L_595D           lda L_3D62+2,y
                 sta PMGFX0+3,x
                 lda L_3D7A+6,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_595D
                 jmp L_59F1
L_5972           lda L_3D62+2,y
                 sta PMGFX0+3,x
                 lda L_3D8A+3,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5972
                 jmp L_59F1
L_5987           inc ENEMY_X
                 lda ENEMY_X
                 sta HPOSP2
                 sta HPOSP3
                 inc ENEMY_Y
                 lda ENEMY_Y
                 cmp #$B0
                 bcc L_59B5
                 lda #$00
                 sta ENEMY_MOV_TYPE
                 sta $0625
                 lda #$11
                 sta L_542E+1
                 lda #$00
                 sta ENEMY_TYPE
                 jsr L_59FC
                 jmp L_59F1
L_59B5           lda $0625
                 bne L_59BD
                 jmp L_59F1
L_59BD           ldx ENEMY_Y
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_59DC
L_59C7           lda L_3D72,y
                 sta PMGFX0+3,x
                 lda L_3D9A,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_59C7
                 jmp L_59F1
L_59DC           lda L_3D72,y
                 sta PMGFX0+3,x
                 lda L_3DA2+6,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_59DC
                 jmp L_59F1
L_59F1           lda BIGPLANE_FIRE_TYPE+3
                 cmp #$02
                 bpl L_59F9
                 rts
L_59F9           jmp L_5A1E+2
L_59FC           ldx ENEMY_Y
                 ldy #$00
                 tya
L_5A02           sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5A02
                 rts
                 brk
                 .byte $D2
                 lda PLANE_X+3
                 cmp #$02
                 bne L_5A3D
                 jsr L_55A0
                 lda PLANE_X
L_5A1E           sta L_AD50+2
                 dey
                 asl $D0
                 .byte $14
                 lda #$20
                 sta ENEMY_Y+1
                 sta $0627
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE+5
                 jsr L_5A57
                 inc BIGPLANE_FIRE_TYPE+4
                 rts
                 cmp #$03
                 bcc L_5A40
L_5A3D           jmp L_5A93
L_5A40           inc ENEMY_Y+1
                 lda ENEMY_Y+1
                 cmp #$30
                 bne L_5A4D
                 inc BIGPLANE_FIRE_TYPE+4
L_5A4D           cmp #$4A
                 bcc L_5A57
                 inc BIGPLANE_FIRE_TYPE+4
                 jmp L_5AEE
L_5A57           lda $0627
                 bne L_5A5F
                 jmp L_5AEE
L_5A5F           ldx ENEMY_Y+1
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_5A7E
L_5A69           lda L_3CF2+5,y
                 sta L_33FE+2,x
                 lda L_3D0A+7,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5A69
                 jmp L_5AEE
L_5A7E           lda L_3D02+2,y
                 sta L_33FE+2,x
                 lda L_3D1A+4,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5A7E
                 jmp L_5AEE
L_5A93           lda BIGPLANE_FIRE_TYPE+1
                 cmp #$E0
                 bcc L_5AB5
                 ldx ENEMY_Y+1
                 ldy #$00
                 sty $0627
                 tya
L_5AA3           sta L_33FE+2,x
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5AA3
                 inc BIGPLANE_FIRE_TYPE+4
                 jmp L_5AEE
L_5AB5           lda $0627
                 bne L_5ABD
                 jmp L_5AEE
L_5ABD           ldx ENEMY_Y+1
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_5ADC
L_5AC7           lda L_3D72,y
                 sta L_33FE+2,x
                 lda L_3D9A,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5AC7
                 jmp L_5AEE
L_5ADC           lda L_3D72,y
                 sta L_33FE+2,x
                 lda L_3DA2+6,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5ADC
L_5AEE           rts
                 lda BIGPLANE_FIRE_TYPE+4
                 cmp #$02
                 bpl L_5AF7
                 rts
L_5AF7           jmp L_4EC0
                 brk
                 bne L_5B0A
                 lda L_6800,y
L_5B00           ldx PLANE_X
                 lda ENEMY_MOV_TYPE+3
                 cmp #$9C
                 bne L_5B1E
L_5B0A           cpx #$70
                 bne L_5B1E
                 lda #$0A
                 ldx $060E
                 bne L_5B16
                 rts
L_5B16           dec $060E
                 dex
                 sta L_9F65+7,x
                 rts
L_5B1E           jsr L_5B2B
                 ldx $060E
                 sta L_9F65+7,x
                 inc $060E
                 rts
L_5B2B           lda ENEMY_MOV_TYPE+3
                 cmp #$1C
                 bne L_5B35
                 jmp L_5B5B
L_5B35           cmp #$3C
                 bne L_5B3C
                 jmp L_5B81
L_5B3C           cmp #$5C
                 bne L_5B43
                 jmp L_5BA7
L_5B43           cmp #$7C
                 bne L_5B4A
                 jmp L_5BCD
L_5B4A           cpx #$50
                 bne L_5B51
                 lda #$39
                 rts
L_5B51           cpx #$60
                 bne L_5B58
                 lda #$3A
                 rts
L_5B58           lda #$0E
                 rts
L_5B5B           cpx #$50
                 bne L_5B62
                 lda #$21
                 rts
L_5B62           cpx #$60
                 bne L_5B69
                 lda #$22
                 rts
L_5B69           cpx #$70
                 bne L_5B70
                 lda #$23
                 rts
L_5B70           cpx #$80
                 bne L_5B77
                 lda #$24
                 rts
L_5B77           cpx #$90
                 bne L_5B7E
                 lda #$25
                 rts
L_5B7E           lda #$26
                 rts
L_5B81           cpx #$50
                 bne L_5B88
                 lda #$27
                 rts
L_5B88           cpx #$60
                 bne L_5B8F
                 lda #$28
                 rts
L_5B8F           cpx #$70
                 bne L_5B96
                 lda #$29
                 rts
L_5B96           cpx #$80
                 bne L_5B9D
                 lda #$2A
                 rts
L_5B9D           cpx #$90
                 bne L_5BA4
                 lda #$2B
                 rts
L_5BA4           lda #$2C
                 rts
L_5BA7           cpx #$50
                 bne L_5BAE
                 lda #$2D
                 rts
L_5BAE           cpx #$60
                 bne L_5BB5
                 lda #$2E
                 rts
L_5BB5           cpx #$70
                 bne L_5BBC
                 lda #$2F
                 rts
L_5BBC           cpx #$80
                 bne L_5BC3
                 lda #$30
                 rts
L_5BC3           cpx #$90
                 bne L_5BCA
                 lda #$31
                 rts
L_5BCA           lda #$32
                 rts
L_5BCD           cpx #$50
                 bne L_5BD4
                 lda #$33
                 rts
L_5BD4           cpx #$60
                 bne L_5BDB
                 lda #$34
                 rts
L_5BDB           cpx #$70
                 bne L_5BE2
                 lda #$35
                 rts
L_5BE2           cpx #$80
                 bne L_5BE9
                 lda #$36
                 rts
L_5BE9           cpx #$90
                 bne L_5BF0
                 lda #$37
                 rts
L_5BF0           lda #$38
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00
L_5C00           ldx #$00
                 stx $065D
L_5C05           lda $0606,x
                 cmp $0600,x
                 bmi L_5C13
                 inx
                 cpx #$05
                 bne L_5C05
L_5C12           rts
L_5C13           lda $0600,x
                 cmp $0606,x
                 bmi L_5C12
                 dex
                 cpx #$FF
                 bne L_5C13
                 ldx #$00
L_5C22           lda $0600,x
                 sta $0606,x
                 inx
                 cpx #$06
                 bne L_5C22
                 inc $065D
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00
L_5C40           lda ENEMY_MOV_TYPE
                 bne L_5C78
                 lda #$0F
                 sta L_542E+1
                 lda PLANE_X
                 sta HPOSP2
                 sta HPOSP3
                 sta ENEMY_X
                 lda #$28
                 sta ENEMY_Y
                 sta $0625
                 lda PCOLR2
                 cmp #$82
                 beq L_5C6A
                 lda #$74
                 jmp L_5C6C
L_5C6A           lda #$44
L_5C6C           sta PCOLR2
                 lda #$0F
                 sta PCOLR3
                 inc ENEMY_MOV_TYPE
                 rts
L_5C78           lda $0634
                 beq L_5C7E
                 rts
L_5C7E           inc ENEMY_Y
                 lda ENEMY_Y
                 cmp #$B0
                 bcc L_5C8B
                 jmp L_5D0C
L_5C8B           lda $0625
                 bne L_5C91
                 rts
L_5C91           inc BIGPLANE_FIRE_TYPE+3
                 lda BIGPLANE_FIRE_TYPE+3
                 cmp #$02
                 bcc L_5CBE
                 lda PLANE_X
                 cmp ENEMY_X
                 bne L_5CA5
                 beq L_5CB0
L_5CA5           bmi L_5CAD
                 inc ENEMY_X
                 jmp L_5CB0
L_5CAD           dec ENEMY_X
L_5CB0           lda ENEMY_X
                 sta HPOSP2
                 sta HPOSP3
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE+3
L_5CBE           inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
                 cmp #$02
                 bcc L_5CDC
                 lda #$00
                 sta ENEMY_MOV_TYPE+1
                 lda BIGPLANE_FIRE_TYPE
                 beq L_5CD9
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE
                 beq L_5CDC
L_5CD9           inc BIGPLANE_FIRE_TYPE
L_5CDC           ldx ENEMY_Y
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_5CF9
L_5CE6           lda L_3CF2+5,y
                 sta PMGFX0+3,x
                 lda L_3D0A+7,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5CE6
                 rts
L_5CF9           lda L_3D02+2,y
                 sta PMGFX0+3,x
                 lda L_3D1A+4,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5CF9
                 rts
L_5D0C           ldx ENEMY_Y
                 ldy #$00
                 tya
L_5D12           sta PMGFX0+2,x
                 sta L_36FD+2,x
                 inx
                 iny
                 cpy #$0E
                 bne L_5D12
                 sta ENEMY_TYPE
L_5D21           sta $0625
                 sta ENEMY_MOV_TYPE
                 lda #$11
                 sta L_542E+1
                 rts
                 asl LTEMP+1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5D21+2
                 rts
                 lda #$01
                 sta ENEMY_MOV_TYPE
                 ldx ENEMY_Y
                 ldy #$00
                 tya
L_5D41           sta PMGFX0+2,x
                 sta L_36FD+2,x
                 inx
                 iny
                 cpy #$0E
L_5D4B           bne L_5D41
                 rts
                 brk
                 cpy #$30
                 bcc L_5D4B+1
                 sty AUDF2
                 iny
                 iny
                 sty AUDF3
                 ldy #$00
                 ldx #$00
                 inx
L_5D60           lda #$FF
                 sta $0634
                 lda #$CA
                 sta AUDC3
                 lda ENEMY_Y
                 sta AUDF3
                 lda ENEMY_X
                 cmp PLANE_X
                 bcc L_5D7E
                 dec ENEMY_X
                 jmp L_5D81
L_5D7E           inc ENEMY_X
L_5D81           lda ENEMY_X
                 sta HPOSP2
                 sta HPOSP3
                 lda PLANE_X+2
                 clc
                 adc #$70
                 sta $0664
                 lda ENEMY_Y
                 cmp $0664
                 bcc L_5DC1
                 cmp #$30
                 bcs L_5DBB
                 ldx #$00
                 tay
                 txa
L_5DA3           sta PMGFX0+3,y
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0F
                 bne L_5DA3
                 lda #$00
                 sta $0634
                 sta $0663
                 sta AUDC3
                 rts
L_5DBB           dec ENEMY_Y
                 jmp L_5DC4
L_5DC1           inc ENEMY_Y
L_5DC4           ldx #$00
                 ldy ENEMY_Y
                 inc ENEMY_X+2
                 lda ENEMY_X+2
                 cmp #$01
                 beq L_5DEB
L_5DD3           lda L_5E16+6,x
                 sta PMGFX1,y
                 lda L_5DFE,x
                 sta PMGFX0+3,y
                 iny
                 inx
                 cpx #$0F
                 bne L_5DD3
                 lda #$00
                 sta ENEMY_X+2
                 rts
L_5DEB           lda L_5E06+7,x
                 sta PMGFX0+3,y
                 lda L_5E16+6,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0F
                 bne L_5DEB
                 rts
L_5DFE           .byte $00, $18, $3C, $34, $7A, $5A, $E3, $FF
L_5E06           .byte $E7, $70, $78, $3C, $3C, $18, $00, $00
                 .byte $18, $3C, $2C, $5E, $5A, $C7, $FF, $E7
L_5E16           .byte $0E, $1E, $3C, $3C, $18, $00, $00, $18
                 .byte $3C, $3C, $7E, $7E, $FF, $FF, $FF, $7E
                 .byte $7E, $3C, $3C, $18, $00, $00, $70
                 bne L_5E38
                 lda #$40
                 sta HPOSP2
                 sta $0640
                 rts
L_5E38           lda #$00
                 sta $0624
                 sta $0625
                 sta $0627
                 sta ENEMY_MOV_TYPE
                 sta SIZEP2
                 sta SIZEP3
                 sta $0634
                 ldx $06AB
                 beq L_5E55
                 rts
L_5E55           tax
L_5E56           sta L_33FE+2,x
                 sta L_3500,x
                 sta PMGFX0+3,x
L_5E5F           sta PMGFX1,x
                 sta L_3680,x
                 sta L_3780,x
                 inx
                 cpx #$80
                 bcc L_5E56
                 ldx $06C2
                 bne L_5E74
                 lda #$01
L_5E74           sta $06C2
                 inc $06AF
                 ldx $06AF
                 cpx #$10
                 bcc L_5E86
                 ldx #$00
                 stx $06AF
L_5E86           lda STAGE_NO
                 cmp #$03
                 bcc ENEMY_SETS1
                 lda #$00
                 sta STAGE_NO
ENEMY_SETS1      cmp #$00
                 bne ENEMY_SETS2
                 lda ENEMY_TBLS1,x
                 sta ENEMY_TYPE
                 rts
ENEMY_SETS2      cmp #$01
                 bne ENEMY_SETS3
                 lda ENEMY_TBLS2+1,x
                 sta ENEMY_TYPE
                 rts
ENEMY_SETS3      cmp #$02
                 bne ENEMY_SETS4
                 lda ENEMY_TBLS3+2,x
                 sta ENEMY_TYPE
                 rts
ENEMY_SETS4      lda ENEMY_TBLS4+3,x
                 sta ENEMY_TYPE
                 rts
ENEMY_TBLS1      .byte $01, $02, $03, $01, $03, $02, $04, $05
                 .byte $05, $01, $01, $02, $04, $03, $04, $01
ENEMY_TBLS2      .byte $03, $01, $05, $05, $06, $04, $07, $05
                 .byte $05, $01, $08, $09, $01, $02, $06, $0B
ENEMY_TBLS3      .byte $02, $04, $01, $0A, $0B, $02, $01, $0B
                 .byte $08, $09, $05, $05, $03, $0A, $02, $07
ENEMY_TBLS4      .byte $08, $07, $03, $06, $07, $08, $09, $0A
                 .byte $0B, $05, $05, $08, $09, $02, $03, $0A
                 .byte $0A, $0A, $0A, $0A, $01, $02
L_5F00           ldx ENEMY_Y
                 ldy #$00
                 lda #$0F
                 sta AUDC4
                 inc ENEMY_X+2
                 lda ENEMY_X+2
                 sta AUDF4
                 cmp #$08
                 bcs L_5F2A
L_5F17           lda L_6F89+7,y
                 sta PMGFX0+3,x
                 lda L_6F99+4,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5F17
                 rts
L_5F2A           cmp #$10
                 bcs L_5F41
L_5F2E           lda L_6FA9+1,y
                 sta PMGFX0+3,x
                 lda L_6FB1+6,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5F2E
                 rts
L_5F41           cmp #$18
                 bcs L_5F48
                 jmp L_5F17
L_5F48           cmp #$20
                 bcs L_5F4F
                 jmp L_5F2E
L_5F4F           cmp #$28
                 bcs L_5F65
L_5F53           lda L_6FC1+3,y
                 sta PMGFX0+3,x
                 lda #$00
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5F53
                 rts
L_5F65           cmp #$30
                 bcs L_5F76
L_5F69           lda L_6FD1,y
                 sta PMGFX0+3,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5F69
                 rts
L_5F76           cmp #$38
                 bcs L_5F87
L_5F7A           lda L_6FD9+5,y
                 sta PMGFX0+3,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5F7A
                 rts
L_5F87           cmp #$40
                 bcs L_5F9D
L_5F8B           lda #$00
                 sta PMGFX0+3,x
                 lda L_5FE3,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5F8B
                 rts
L_5F9D           cmp #$48
                 bcs L_5FAE
L_5FA1           lda L_5FEB+5,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_5FA1
                 rts
L_5FAE           cmp #$50
                 bcs L_5FB5
                 jmp L_5F8B
L_5FB5           lda #$00
                 sta $0637
                 sta $06AE
                 sta AUDC4
                 lda $0683
                 bpl L_5FCB
                 lda #$01
                 sta $0634
                 rts
L_5FCB           lda #$00
                 sta ENEMY_X+7
                 sta AUDC4
                 sta $062F
                 sta $0637
                 jsr L_6650
                 jsr L_67CF
                 jsr L_67CF
                 rts
L_5FE3           .byte $00, $00, $00, $00, $20, $00, $08, $40
L_5FEB           .byte $00, $10, $00, $00, $00, $00, $00, $00
                 .byte $20, $14, $40, $82, $00, $82, $80, $28
                 .byte $00, $00, $00, $BD, $33
L_6000           ldx #$00
                 lda $0624
                 beq L_6010
                 stx $0624
                 stx ENEMY_X+1
                 inc ENEMY_X+6
L_6010           lda $0625
                 beq L_601E
                 stx $0625
                 stx ENEMY_X+2
                 inc ENEMY_X+7
L_601E           lda $0627
                 beq L_602C
                 stx $0627
                 stx ENEMY_X+3
                 inc $06A8
L_602C           ldy ENEMY_Y+2
                 ldx #$00
                 txa
                 sta $06B0
                 sta $06B1
L_6038           sta L_33FE+2,y
                 sta L_3500,y
                 sta PMGFX0+3,y
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0D
                 bne L_6038
                 ldy ENEMY_Y+3
                 ldx #$00
L_604F           sta L_33FE+2,y
                 sta L_3500,y
                 sta PMGFX0+3,y
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0D
                 bne L_604F
                 sta $0653
                 sta L_9F85+1
                 rts
                 .byte $00
                 ldx #$06
L_606B           inc ENEMY_X+7
                 lda $0627
                 beq L_607C
                 stx $0627
                 stx ENEMY_X+3
                 inc $06A8
L_607C           stx $0653
                 stx L_9F85+1
                 rts
                 .word LNFLG
                 ldx #$00
L_6087           inx
                 bne L_6087
                 iny
                 cpy #$50
                 bne L_6087
                 pla
L_6090           lda ENEMY_X+7
                 bne L_6096
                 rts
L_6096           lda $0637
                 beq L_609E
                 jmp L_5F00
L_609E           ldx ENEMY_Y
                 ldy #$00
                 lda $0634
                 beq L_60AB
                 jmp L_6111
L_60AB           lda #$0F
                 sta AUDC4
                 inc ENEMY_X+2
                 lda ENEMY_X+2
                 sta AUDF4
                 cmp #$08
                 bcs L_60D0
L_60BD           lda L_3F4A+4,y
                 sta PMGFX0+3,x
                 lda L_3F5A+1,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_60BD
                 rts
L_60D0           cmp #$18
                 bcs L_60E7
L_60D4           lda L_3F32+2,y
                 sta PMGFX0+3,x
                 lda L_3F3A+7,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_60D4
                 rts
L_60E7           cmp #$20
                 bcs L_60EE
                 jmp L_60BD
L_60EE           jsr L_6186
                 lda #$00
                 sta AUDC4
                 sta $062F
                 jsr L_67B8
                 jsr L_67CF
                 lda ENEMY_TYPE
                 cmp #$01
                 beq L_616E
                 lda $0683
                 bpl L_616E
                 lda #$01
                 sta $0634
                 rts
L_6111           cmp #$02
                 beq L_6140
                 cpx #$B0
                 bcs L_616B
                 lda PCOLR2
                 cmp #$38
                 beq L_612A
                 cmp #$26
                 beq L_6127
                 jmp L_6195
L_6127           jmp L_61A9
L_612A           lda L_3E7A+3,y
                 sta PMGFX0+3,x
                 lda L_3E8A,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_612A
                 inc ENEMY_Y
                 rts
L_6140           lda $0651
                 beq L_614E
                 jsr L_67E6
                 jsr L_6650
                 jmp L_616E
L_614E           lda $0650
                 beq L_615F
                 lda #$01
                 sta $0653
                 lda #$24
                 sta L_9F85+1
                 bne L_616E
L_615F           lda #$2A
                 sta L_9F6D+7
                 lda #$05
                 sta $0656
                 bne L_616E
L_616B           inc $0663
L_616E           lda #$00
                 sta ENEMY_X+7
                 sta $0634
                 sta $0651
                 sta $0650
                 lda PCOLR2
                 cmp #$38
                 bne L_6186
                 jmp L_6650
L_6186           lda #$00
L_6188           sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0E
                 bne L_6188
                 rts
L_6195           lda L_3E62+2,y
                 sta PMGFX0+3,x
L_619B           lda L_3E6A+6,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_6195
                 beq L_61BB
L_61A9           lda L_3E92+5,y
                 sta PMGFX0+3,x
                 lda L_3EA2+2,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$0D
                 bne L_61A9
L_61BB           inc ENEMY_Y
                 rts
L_61BF           asl LELNUM
                 .byte $87
                 asl $D0
                 and #$AD
                 sta TRAMSZ
                 cmp #$38
                 bcs L_61CD
                 rts
L_61CD           lda #$70
                 sta ENEMY_Y
                 sta $0625
                 lda #$28
                 sta HPOSP2
                 sta HPOSP3
                 sta ENEMY_X
                 lda #$0F
                 sta PCOLR3
                 lda #$44
                 sta PCOLR2
                 inc BIGPLANE_FIRE_TYPE+3
                 rts
                 lda $0634
                 beq L_61F4
                 rts
L_61F4           ldy ENEMY_Y
                 ldx #$00
                 lda BIGPLANE_FIRE_TYPE+3
                 cmp #$03
                 bcc L_6203
                 jmp L_624F
L_6203           inc ENEMY_X
                 lda ENEMY_X
                 sta HPOSP2
                 sta HPOSP3
                 cmp #$30
                 bne L_6216
                 inc BIGPLANE_FIRE_TYPE+3
L_6216           cmp #$8A
                 bcc L_621E
                 inc BIGPLANE_FIRE_TYPE+3
                 rts
L_621E           lda $0625
                 bne L_6224
                 rts
L_6224           lda BIGPLANE_FIRE_TYPE
                 bne L_623C
L_6229           lda L_3DB2+3,x
                 sta PMGFX0+3,y
                 lda L_3DC2,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0D
                 bne L_6229
                 rts
L_623C           lda L_3DB2+3,x
                 sta PMGFX0+3,y
                 lda L_3DCA+5,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0D
                 bne L_623C
                 rts
L_624F           cmp #$05
                 bcs L_626D
                 inc BIGPLANE_FIRE_TYPE+3
                 lda $0625
                 bne L_625C
                 rts
L_625C           lda L_3DDA+2,x
                 sta PMGFX0+3,y
                 lda L_3DE2+7,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0D
                 rts
L_626D           cmp #$06
                 bcs L_62B3
                 inc ENEMY_Y
                 lda ENEMY_Y
                 cmp #$80
                 bcc L_6282
                 inc BIGPLANE_FIRE_TYPE+3
                 jsr L_62EC
                 rts
L_6282           lda $0625
                 bne L_6288
                 rts
L_6288           lda BIGPLANE_FIRE_TYPE
                 bne L_62A0
L_628D           lda L_3CF2+5,x
                 sta PMGFX0+3,y
                 lda L_3D0A+7,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0D
                 bne L_628D
                 rts
L_62A0           lda L_3CF2+5,x
                 sta PMGFX0+3,y
                 lda L_3D1A+4,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0D
                 bne L_62A0
                 rts
L_62B3           cmp #$09
                 bcs L_62D3
                 inc BIGPLANE_FIRE_TYPE+3
                 lda $0625
                 bne L_62C0
                 rts
L_62C0           lda L_3DF2+4,x
                 sta PMGFX0+3,y
                 lda L_3E02+1,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0D
                 bne L_62C0
                 rts
L_62D3           lda ENEMY_X
                 cmp #$28
                 bcs L_62FA
                 lda #$00
                 sta $0625
                 sta ENEMY_MOV_TYPE
                 lda #$00
                 sta ENEMY_TYPE
                 lda #$11
                 sta L_542E+1
L_62EC           txa
L_62ED           sta PMGFX0+3,y
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0D
                 bne L_62ED
                 rts
L_62FA           dec ENEMY_Y
                 dec ENEMY_X
                 lda ENEMY_X
                 sta HPOSP2
                 sta HPOSP3
                 lda $0625
                 bne L_630F
                 rts
L_630F           lda BIGPLANE_FIRE_TYPE
                 bne L_6327
L_6314           lda L_3E32+5,x
                 sta PMGFX0+3,y
                 lda L_3E42+2,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0D
                 bne L_6314
                 rts
L_6327           lda L_3E32+5,x
                 sta PMGFX0+3,y
                 lda L_3EAA+7,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0D
                 bne L_6327
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00
L_6360           lda ENEMY_MOV_TYPE
                 bne L_639B
                 lda #$50
                 sta ENEMY_MOV_TYPE+7
                 sta $0624
                 lda #$00
                 sta HPOSP2
                 sta HPOSP3
                 lda #$28
                 sta BIGPLANE_FIRE_TYPE+1
                 sta BIGPLANE_FIRE_TYPE+2
                 lda #$0E
                 sta PCOLR1
                 lda #$64
                 sta PCOLR0
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE
                 sta ENEMY_MOV_TYPE+1
                 sta BIGPLANE_FIRE_TYPE+3
                 lda #$0E
                 sta L_542E+1
                 inc ENEMY_MOV_TYPE
                 rts
L_639B           inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
                 cmp #$03
                 bcc L_63BA
                 lda #$00
                 sta ENEMY_MOV_TYPE+1
                 lda BIGPLANE_FIRE_TYPE
                 bne L_63B5
                 inc BIGPLANE_FIRE_TYPE
                 jmp L_63BA
L_63B5           lda #$00
                 sta BIGPLANE_FIRE_TYPE
L_63BA           ldy ENEMY_MOV_TYPE+7
                 ldx #$00
                 lda ENEMY_MOV_TYPE
                 cmp #$03
                 bcc L_63C9
                 jmp L_6412
L_63C9           inc BIGPLANE_FIRE_TYPE+1
                 inc BIGPLANE_FIRE_TYPE+2
                 lda BIGPLANE_FIRE_TYPE+1
                 cmp #$30
                 bne L_63D9
                 inc ENEMY_MOV_TYPE
L_63D9           cmp #$8A
                 bcc L_63E1
                 inc ENEMY_MOV_TYPE
                 rts
L_63E1           lda $0624
                 bne L_63E7
                 rts
L_63E7           lda BIGPLANE_FIRE_TYPE
                 bne L_63FF
L_63EC           lda L_3DB2+3,x
                 sta L_33FE+2,y
                 lda L_3DC2,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0D
                 bne L_63EC
                 rts
L_63FF           lda L_3DB2+3,x
                 sta L_33FE+2,y
                 lda L_3DCA+5,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0D
                 bne L_63FF
                 rts
L_6412           cmp #$04
                 bcs L_6430
                 lda $0624
                 bne L_641C
                 rts
L_641C           lda L_3DDA+2,x
                 sta L_33FE+2,y
                 lda L_3DE2+7,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0D
                 inc ENEMY_MOV_TYPE
                 rts
L_6430           cmp #$05
                 bcs L_6476
                 inc ENEMY_MOV_TYPE+7
                 lda ENEMY_MOV_TYPE+7
                 cmp #$60
                 bcc L_6445
                 inc ENEMY_MOV_TYPE
                 jsr L_64A2
                 rts
L_6445           lda $0624
                 bne L_644B
                 rts
L_644B           lda BIGPLANE_FIRE_TYPE
                 bne L_6463
L_6450           lda L_3CF2+5,x
                 sta L_33FE+2,y
                 lda L_3D0A+7,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0D
                 bne L_6450
                 rts
L_6463           lda L_3CF2+5,x
                 sta L_33FE+2,y
                 lda L_3D1A+4,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0D
                 bne L_6463
                 rts
L_6476           cmp #$07
                 bcs L_6496
                 inc ENEMY_MOV_TYPE
                 lda $0624
                 bne L_6483
                 rts
L_6483           lda L_3DF2+4,x
                 sta L_33FE+2,y
                 lda L_3E02+1,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0D
                 bne L_6483
                 rts
L_6496           lda BIGPLANE_FIRE_TYPE+1
                 cmp #$28
                 bcs L_64B0
                 lda #$00
                 sta $0624
L_64A2           txa
L_64A3           sta L_33FE+2,y
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0D
                 bne L_64A3
                 rts
L_64B0           dec BIGPLANE_FIRE_TYPE+1
                 dec BIGPLANE_FIRE_TYPE+2
                 lda $0624
                 bne L_64BC
                 rts
L_64BC           lda BIGPLANE_FIRE_TYPE
                 bne L_64D4
L_64C1           lda L_3E0A+6,x
                 sta L_33FE+2,y
                 lda L_3E1A+3,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0D
                 bne L_64C1
                 rts
L_64D4           lda L_3E0A+6,x
                 sta L_33FE+2,y
                 lda L_3E2A,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0D
                 bne L_64D4
                 rts
                 .byte $00, $3C, $3C, $3C, $3C, $3C, $3C, $3C
                 .byte $3C, $3C, $3C, $3C, $3C, $3C, $3C, $3C
                 .byte $3C, $3D, $00, $3B, $3C, $3C, $3C, $3C
                 .byte $3C
L_6500           lda BIGPLANE_FIRE_TYPE+3
                 bne L_653F
                 lda #$98
                 sta ENEMY_Y
                 sta $0625
                 lda $0683
                 bmi L_6516
                 lda #$D0
                 bne L_6518
L_6516           lda #$28
L_6518           sta ENEMY_X
                 sta HPOSP2
                 sta HPOSP3
                 lda #$00
                 sta $06AE
                 lda #$2F
                 sta PCOLR3
                 lda #$38
                 sta PCOLR2
                 lda #$01
                 sta SIZEP2
                 sta SIZEP3
                 jsr L_6592
                 inc BIGPLANE_FIRE_TYPE+3
                 rts
L_653F           lda $0625
                 bne L_6547
                 jmp L_6592
L_6547           lda ENEMY_MOV_TYPE+1
                 cmp #$02
                 beq L_654F
                 rts
L_654F           lda ENEMY_X
                 cmp PLANE_X
                 beq L_6562
                 bcc L_655F
                 dec ENEMY_X
                 jmp L_6562
L_655F           inc ENEMY_X
L_6562           lda ENEMY_X
                 sta HPOSP2
                 sta HPOSP3
                 lda BIGPLANE_FIRE_TYPE+3
                 cmp #$02
                 bne L_6583
                 dec ENEMY_Y
                 lda ENEMY_Y
                 cmp #$40
                 bcs L_6592
                 lda #$03
                 sta BIGPLANE_FIRE_TYPE+3
                 bne L_6592
L_6583           inc ENEMY_Y
                 lda ENEMY_Y
                 cmp #$80
                 bcc L_6592
                 lda #$02
                 sta BIGPLANE_FIRE_TYPE+3
L_6592           lda $0625
                 bne L_65AA
                 ldx #$00
                 ldy ENEMY_Y
                 txa
L_659D           sta L_3605+7,y
                 sta L_370C,y
                 iny
                 inx
                 cpx #$07
                 bne L_659D
                 rts
L_65AA           ldx ENEMY_Y
                 ldy #$00
                 lda BIGPLANE_FIRE_TYPE
                 bne L_65C7
L_65B4           lda L_3F6A+6,y
                 sta PMGFX0+3,x
                 lda L_3F82+1,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$13
                 bne L_65B4
                 rts
L_65C7           lda L_3F6A+6,y
                 sta PMGFX0+3,x
                 lda L_3F92+4,y
                 sta PMGFX1,x
                 inx
                 iny
                 cpy #$13
                 bne L_65C7
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
                 .byte $00, $00, $00, $00, $00, $00
                 lda #$00
                 sta ENEMY_MOV_TYPE
                 sta $0625
                 sta SIZEP2
                 sta SIZEP3
                 lda #$00
L_6650           lda #$00
                 sta ENEMY_MOV_TYPE
                 sta $0625
                 sta SIZEP2
                 sta SIZEP3
                 sta $06AE
                 sta ENEMY_TYPE
                 lda #$11
                 sta L_542E+1
                 ldy ENEMY_Y
                 ldx #$00
                 txa
L_666F           sta PMGFX0+3,y
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$13
                 bne L_666F
                 rts
                 brk
                 eor L_4D4D
L_6680           lda #$0F
                 sta AUDC4
                 ldy #$A8
                 lda #$05
                 sta $066B
                 inc $066A
                 lda $066A
                 sta AUDF4
                 cmp #$10
                 bcs L_66B8
L_6699           ldx #$0C
L_669B           lda L_3F32+2,x
                 sta PMGFX0+3,y
                 lda L_3F3A+7,x
                 sta PMGFX1,y
                 dey
                 dex
                 cpx #$FF
                 bne L_669B
                 dey
                 dey
                 dec $066B
                 lda $066B
                 bne L_6699
                 rts
L_66B8           cmp #$30
                 bcs L_66DB
L_66BC           ldx #$0C
L_66BE           lda L_3F4A+4,x
                 sta PMGFX0+3,y
                 lda L_3F5A+1,x
                 sta PMGFX1,y
                 dey
                 dex
                 cpx #$FF
                 bne L_66BE
                 dey
                 dey
                 dec $066B
                 lda $066B
                 bne L_66BC
                 rts
L_66DB           cmp #$40
                 bcs L_66E2
                 jmp L_6699
L_66E2           ldx #$00
                 txa
L_66E5           sta PMGFX0+3,x
                 sta PMGFX1,x
                 inx
                 bne L_66E5
                 lda #$00
                 sta ENEMY_X+6
                 sta ENEMY_TYPE
                 sta AUDC4
                 sta $062F
                 jsr L_67E6
                 rts
L_6700           jsr L_568F+1
                 ldx #$00
                 lda #$06
L_6707           sta L_3004+3,x
                 inx
                 cpx #$12
                 bne L_6707
                 lda #$07
                 sta L_300C+4
                 sta L_300C+5
                 ldx #$00
L_6719           lda L_6791,x
                 sta L_342B+1,x
                 jsr L_4300
                 inx
                 cpx #$0A
                 bne L_6719
                 lda $069A
                 sta L_3435+1
                 lda $069B
                 sta L_3437
                 inc $069B
                 lda $069B
                 cmp #$1A
                 bmi L_6745
                 lda #$10
                 sta $069B
                 inc $069A
L_6745           ldx #$00
L_6747           lda L_6799+2,x
                 sta L_348F,x
                 jsr L_4300
                 inx
                 cpx #$0D
                 bne L_6747
                 lda $062A
                 clc
                 adc #$11
                 sta L_349A+2
                 cmp #$11
                 bmi L_676F
L_6762           jsr L_67E6
                 dec $062A
                 lda $062A
                 cmp #$FF
                 bpl L_6762
L_676F           ldx #$00
L_6771           lda L_67A1+7,x
                 sta BP_CHECK_Y_UP+1,x
                 jsr L_4300
                 inx
                 cpx #$05
                 bne L_6771
                 lda $069A
                 sta L_34E7+1
                 lda $069B
                 sta L_34E9
                 jsr L_2000
                 jmp L_560B
L_6791           .byte $2C, $21, $33, $34, $00, $33, $34, $21
L_6799           .byte $27, $25, $22, $2F, $2E, $35, $33, $00
L_67A1           .byte $2C, $0A, $11, $10, $10, $10, $1D, $33
                 .byte $34, $21, $27, $25, $00, $58, $5B, $59
                 .byte $5A, $58, $5B, $59, $5A, $58, $5B
L_67B8           ldy $0605
                 iny
                 cpy #$1A
                 beq L_67C7
                 sty L_9F9D+4
                 sty $0605
                 rts
L_67C7           ldy #$10
                 sty L_9F9D+4
                 sty $0605
L_67CF           ldy $0604
                 iny
                 cpy #$1A
                 beq L_67DE
                 sty L_9F9D+3
                 sty $0604
                 rts
L_67DE           ldy #$10
                 sty L_9F9D+3
                 sty $0604
L_67E6           ldy $0603
                 iny
                 cpy #$1A
                 beq L_67F5
                 sty L_9F9D+2
                 sty $0603
                 rts
L_67F5           ldy #$10
                 sty L_9F9D+2
                 sty $0603
                 jsr L_4FE0
L_6800           ldy $0602
                 iny
                 cpy #$1A
                 beq L_680F
                 sty L_9F9D+1
                 sty $0602
                 rts
L_680F           ldy #$10
                 sty L_9F9D+1
                 sty $0602
                 ldy $0601
                 iny
                 cpy #$1A
                 beq L_6826
                 sty $0601
                 sty L_9F9D
                 rts
L_6826           ldy #$10
                 sty $0601
                 sty L_9F9D
                 ldy $0600
                 iny
                 cpy #$1A
                 beq L_683C
                 sty L_9F95+7
                 sty $0600
L_683C           rts
                 brk
                 dec LOGCOL
L_6840           ldx PLANE_X+2
                 ldy #$00
                 lda #$0F
                 sta AUDC4
                 inc ENEMY_Y+6
                 lda ENEMY_Y+6
                 sta AUDF4
                 cmp #$10
                 bcs L_686F
                 lda #$26
                 sta L_407D+1
L_685C           lda L_3F32+2,y
                 sta L_3470,x
                 lda L_3F3A+7,y
                 sta L_356D+3,x
                 inx
                 iny
                 cpy #$0D
                 bne L_685C
                 rts
L_686F           cmp #$20
                 bcs L_6886
L_6873           lda L_3F1A,y
                 sta L_3470,x
                 lda L_3F22+5,y
                 sta L_356D+3,x
                 inx
                 iny
                 cpy #$0D
                 bne L_6873
                 rts
L_6886           cmp #$30
                 bcs L_689D
L_688A           lda L_3EFA+6,y
                 sta L_3470,x
                 lda L_3F0A+3,y
                 sta L_356D+3,x
                 inx
                 iny
                 cpy #$0D
                 bne L_688A
                 rts
L_689D           cmp #$40
                 bcs L_68B4
L_68A1           lda L_3F1A,y
                 sta L_3470,x
                 lda L_3F22+5,y
                 sta L_356D+3,x
                 inx
                 iny
                 cpy #$0D
                 bne L_68A1
                 rts
L_68B4           cmp #$50
                 bcs L_68BB
                 jmp L_685C
L_68BB           cmp #$80
                 bcs L_68CE
                 lda #$00
L_68C1           sta L_3470,x
                 sta L_356D+3,x
                 inx
                 iny
                 cpy #$0D
                 bne L_68C1
                 rts
L_68CE           lda #$00
                 sta ENEMY_Y+5
                 sta AUDC4
                 dec $062E
                 dec L_9FA5
                 inc $0698
                 lda $062E
                 cmp #$10
                 bpl L_68EC
                 jsr L_555F+1
                 jmp L_68EF
L_68EC           jsr L_6CFF+1
L_68EF           lda #$75
                 sta L_407D+1
                 rts
                 brk
                 adc L_75A9
                 sta L_407D+1
                 rts
                 .byte $00, $00, $00
L_6900           lda ENEMY_MOV_TYPE+3
                 sta $0628
                 lda M2PL
                 and #$05
                 bne L_6915
                 lda M3PL
                 and #$05
                 bne L_691F
                 rts
L_6915           cmp #$02
                 bpl L_6929
                 lda ENEMY_MOV_TYPE+3
                 bpl L_692C
                 rts
L_691F           cmp #$02
                 bpl L_6929
                 lda ENEMY_MOV_TYPE+4
                 bpl L_692C
                 rts
L_6929           jmp L_6A21
L_692C           lda ENEMY_MOV_TYPE+7
                 clc
                 adc #$03
                 sta $0629
                 ldy #$07
L_6937           lda $0628
                 cmp $0629
                 beq L_6948
                 inc $0629
                 dey
                 bne L_6937
                 jmp L_695F
L_6948           lda $0624
                 bne L_694E
                 rts
L_694E           lda #$00
                 sta $0624
                 sta ENEMY_X+1
                 inc ENEMY_X+6
                 ldy ENEMY_MOV_TYPE+7
                 jmp L_698D
L_695F           lda ENEMY_Y+1
                 clc
                 adc #$03
                 sta $0629
                 ldy #$07
L_696A           lda $0628
                 cmp $0629
                 beq L_6979
                 inc $0629
                 dey
                 bne L_696A
                 rts
L_6979           lda $0627
                 bne L_697F
                 rts
L_697F           lda #$00
                 sta $0627
                 sta ENEMY_X+3
                 inc $06A8
                 ldy ENEMY_Y+1
L_698D           dey
                 ldx #$00
L_6990           sta L_33FE+2,y
                 sta L_3500,y
                 sta PMGFX0+3,y
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$0F
                 bne L_6990
                 inc $069F
                 lda $069F
                 cmp #$1A
                 bpl L_69AF
                 jmp L_69DB
L_69AF           lda #$10
                 sta $069F
                 inc $069E
                 lda $069E
                 cmp #$1A
                 bpl L_69C1
                 jmp L_69DB
L_69C1           lda #$10
                 sta $069E
                 inc $069D
                 lda $069D
                 cmp #$1A
                 bpl L_69D3
                 jmp L_69DB
L_69D3           lda #$1A
                 sta $069D
                 inc $069C
L_69DB           ldy ENEMY_MOV_TYPE+3
                 ldx #$00
L_69E0           lda MISSILE_GFX,y
                 and #$AF
                 sta MISSILE_GFX,y
                 dey
                 inx
                 cpx #$0C
                 bne L_69E0
                 lda #$00
                 sta ENEMY_MOV_TYPE+5
                 sta ENEMY_MOV_TYPE+6
                 rts
L_69F7           lda ENEMY_Y
                 clc
                 adc #$0A
                 tay
                 inc $066D
                 lda $066D
                 cmp #$01
                 bne L_6A13
                 lda #$1A
                 sta PMGFX0+3,y
                 lda #$6B
                 sta PMGFX0+2,y
                 rts
L_6A13           lda #$34
                 sta PMGFX0+1,y
                 sta PMGFX0,y
                 lda #$00
                 sta $066D
                 rts
L_6A21           lda ENEMY_Y
                 clc
                 adc #$03
                 sta $0629
                 ldy #$07
L_6A2C           lda $0628
                 cmp $0629
                 beq L_6A3B
                 inc $0629
                 dey
                 bne L_6A2C
                 rts
L_6A3B           lda $0625
                 bne L_6A41
                 rts
L_6A41           lda ENEMY_TYPE
                 cmp #$03
                 beq L_6A50
                 cmp #$08
                 beq L_6A50
                 cmp #$09
                 bne L_6A65
L_6A50           inc $06AE
                 lda $06AE
                 cmp #$20
                 bcs L_6A60
                 jsr L_69F7
                 jmp L_69DB
L_6A60           lda #$01
                 sta $0637
L_6A65           lda #$00
                 sta $0625
                 sta ENEMY_X+2
                 sta $06AE
                 inc ENEMY_X+7
                 lda #$00
                 ldy ENEMY_Y
                 jmp L_698D
                 .byte $00, $00, $00, $00, $00
L_6A80           lda ENEMY_X+6
                 bne L_6A86
                 rts
L_6A86           lda #$0F
                 sta AUDC4
                 ldx ENEMY_MOV_TYPE+7
                 ldy #$00
                 inc ENEMY_X+1
                 lda ENEMY_X+1
                 sta AUDF4
                 cmp #$06
                 bcs L_6AB0
L_6A9D           lda L_3F32+2,y
                 sta L_33FE+2,x
                 lda L_3F3A+7,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_6A9D
                 rts
L_6AB0           cmp #$18
                 bcs L_6AC7
L_6AB4           lda L_3F4A+4,y
                 sta L_33FE+2,x
                 lda L_3F5A+1,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_6AB4
                 rts
L_6AC7           cmp #$20
                 bcs L_6ACE
                 jmp L_6A9D
L_6ACE           lda #$00
L_6AD0           sta L_33FE+2,x
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_6AD0
                 lda #$00
                 sta ENEMY_X+6
                 sta AUDC4
                 sta $062F
                 jsr L_67B8
                 jsr L_67CF
                 rts
                 .byte $8D, $00, $00, $00, $00, $00, $00
                 ldx $06BF
                 cpx #$00
                 bne L_6B0D
                 lda #$EF
L_6AFE           sta L_ADB8+4
                 asl TRAMSZ,x
                 bne L_6B34
                 lda #$28
                 sta ENEMY_Y
                 sta $0625
L_6B0D           lda $0683
                 sta HPOSP2
                 sta HPOSP3
                 sta ENEMY_X
                 lda #$34
                 sta PCOLR3
                 lda #$0F
                 sta PCOLR2
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE
                 sta ENEMY_MOV_TYPE+1
                 lda #$0E
                 sta L_542E+1
                 inc ENEMY_MOV_TYPE
                 rts
L_6B34           inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
                 cmp #$04
                 bcc L_6B53
                 lda #$00
                 sta ENEMY_MOV_TYPE+1
                 lda BIGPLANE_FIRE_TYPE
                 bne L_6B4E
                 inc BIGPLANE_FIRE_TYPE
                 jmp L_6B53
L_6B4E           lda #$00
                 sta BIGPLANE_FIRE_TYPE
L_6B53           lda $0634
                 beq L_6B59
                 rts
L_6B59           inc ENEMY_Y
                 lda $0625
                 beq L_6B64
                 inc ENEMY_Y
L_6B64           jmp L_1D30
                 .byte $00, $B8, $67
                 jsr L_67B8
                 jsr L_67CF
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00
L_6B80           lda $06A8
                 bne L_6B86
                 rts
L_6B86           ldx ENEMY_Y+1
                 ldy #$00
                 lda #$0F
                 sta AUDC4
                 inc ENEMY_X+3
                 lda ENEMY_X+3
                 sta AUDF4
                 cmp #$18
                 bcs L_6BB0
L_6B9D           lda L_3F4A+4,y
                 sta L_33FE+2,x
                 lda L_3F5A+1,y
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_6B9D
                 rts
L_6BB0           lda #$00
L_6BB2           sta L_33FE+2,x
                 sta L_3500,x
                 inx
                 iny
                 cpy #$0D
                 bne L_6BB2
                 lda #$00
                 sta $06A8
                 sta AUDC4
                 sta $062F
                 jsr L_67B8
                 jsr L_67CF
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_6C00           lda #$00
                 sta $0678
                 sta AUDC3
                 sta AUDC4
L_6C0B           lda #$00
                 sta CH
                 inc $06AD
L_6C13           ldx #$00
L_6C15           lda L_6C61,x
                 sta L_9F7D+4,x
                 inx
                 cpx #$05
                 bne L_6C15
                 jsr L_6C52
                 ldx #$00
L_6C25           lda L_6C61+5,x
                 sta L_9F7D+4,x
                 inx
                 cpx #$05
                 bne L_6C25
                 jsr L_6C52
                 lda $0678
                 bne L_6C42
                 lda CH
                 cmp #$0A
                 beq L_6C0B
                 inc $0678
L_6C42           lda CH
                 cmp #$0A
                 bne L_6C13
                 lda #$00
                 sta $06AD
                 sta CH
                 rts
L_6C52           txa
                 pha
                 ldx #$00
                 ldy #$00
L_6C58           inx
                 bne L_6C58
                 iny
                 bne L_6C58
                 pla
                 tax
                 rts
L_6C61           .byte $30, $21, $35, $33, $25, $28, $29, $27
                 .byte $28, $00, $00, $13, $AD, $3C, $06, $C9
                 .byte $07, $90, $06, $EE, $3F, $06, $4C, $92
L_6C79           .byte $6C, $EE, $3C, $06, $4C, $92, $6C, $EE
                 .byte $13, $06, $A9, $00, $8D, $14, $06, $60
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00
L_6CA0           lda #$00
                 sta VSCROL
                 sta $0680
                 sta $062F
                 sta $06AB
                 sta $06AD
                 sta $0634
                 sta $0650
                 sta $0651
                 sta $0652
                 sta $0637
                 sta $0657
                 sta $0663
                 sta STAGE_NO+1
                 sta $06BB
                 sta $06BF
                 sta $06CC
                 lda #$11
                 sta STAGE_NO+2
                 jsr L_6C79+7
                 lda #$FF
                 sta CH
                 ldx #$00
                 lda #$01
L_6CE3           sta L_9F75+7,x
                 inx
                 cpx #$03
                 bne L_6CE3
                 dex
                 stx $062A
L_6CEF           rts
                 brk
                 adc L_619B+2
                 stx FR2+2,y
                 cpx #$07
                 bcc L_6CEF
                 lda $0641
                 bne L_6D11+1
L_6CFF           lda L_901D+3
                 lsr MVLNG,x
                 brk
                 lda #$07
L_6D07           sta L_3004+3,x
                 inx
                 cpx #$12
                 bne L_6D07
                 ldx #$00
L_6D11           lda L_6D2E,x
                 sta L_347D+1,x
                 jsr L_4300
                 inx
                 cpx #$05
                 bne L_6D11
                 lda $069A
                 sta L_3483+1
                 lda $069B
                 sta L_3483+2
                 jmp L_560E
L_6D2E           .byte $33, $34, $21, $27, $25, $00, $3E, $06
                 .byte $D0, $F5, $BD, $44, $6D
                 sta L_975D+4,x
                 inx
L_6D3F           cpx #$AD
                 jsr P2PF
                 and (LELNUM),y
                 bit TRAMSZ
                 bne L_6D52
                 lda $0625
                 bne L_6D5A
                 jmp L_6DC5
L_6D52           lda ENEMY_MOV_TYPE+7
                 ldx BIGPLANE_FIRE_TYPE+1
                 bne L_6D60
L_6D5A           lda ENEMY_Y
                 ldx ENEMY_X
L_6D60           clc
                 adc #$0D
                 sta $061E
                 txa
                 clc
                 adc #$03
                 sta HPOSM0
                 sta $0622
                 sta $0620
                 jmp L_6DC5
                 ldy $061E
                 ldx #$00
L_6D7B           lda MISSILE_GFX,y
                 and #$FE
                 sta MISSILE_GFX,y
                 iny
                 inx
                 cpx #$03
                 bne L_6D7B
                 inc $061E
                 inc $061E
                 lda $061E
                 cmp #$B0
                 bcc L_6D9D
                 lda #$00
                 sta $0620
                 beq L_6DC5
L_6D9D           jsr L_6E1E
                 inc $0626
                 lda $0626
                 cmp #$06
                 bcc L_6DC5
                 lda #$00
                 sta $0626
                 lda PLANE_X
                 cmp $0622
                 bcs L_6DBC
                 dec $0622
                 bne L_6DBF
L_6DBC           inc $0622
L_6DBF           lda $0622
                 sta HPOSM0
L_6DC5           lda $0621
                 bne L_6DF4
                 lda $0625
                 bne L_6DD5
                 lda $0627
                 bne L_6DDD
                 rts
L_6DD5           lda ENEMY_Y
                 ldx ENEMY_X
                 bne L_6DE3
L_6DDD           lda ENEMY_Y+1
                 ldx ENEMY_X+1
L_6DE3           clc
                 adc #$0D
                 sta $061F
                 inx
                 stx HPOSM1
                 stx $0623
                 stx $0621
                 rts
L_6DF4           ldy $061F
                 ldx #$00
L_6DF9           lda MISSILE_GFX,y
                 and #$FB
                 sta MISSILE_GFX,y
                 iny
                 inx
                 cpx #$03
                 bne L_6DF9
                 inc $061F
                 inc $061F
                 lda $061F
                 cmp #$B0
                 bcc L_6E1A
                 lda #$00
                 sta $0621
                 rts
L_6E1A           jsr L_6E30
                 rts
L_6E1E           tax
                 ldy #$00
L_6E21           lda MISSILE_GFX,x
                 ora #$01
                 sta MISSILE_GFX,x
                 inx
                 iny
                 cpy #$03
                 bne L_6E21
                 rts
L_6E30           tax
                 ldy #$00
L_6E33           lda MISSILE_GFX,x
                 ora #$04
                 sta MISSILE_GFX,x
                 inx
                 iny
                 cpy #$03
                 bne L_6E33
                 rts
                 brk
                 lda $0620
                 cmp #$02
                 bcs L_6E4B
                 rts
L_6E4B           lda $0643
                 bne L_6E68+1
L_6E50           lda STAGE_NO+1
                 cmp #$01
                 bne L_6E66
                 sta STAGE_NO+6
                 sta STAGE_NO+7
                 lda #$B0
                 sta $06BA
                 inc STAGE_NO+1
                 rts
L_6E66           cmp #$02
L_6E68           bne L_6E78
                 dec $06BA
                 lda $06BA
                 cmp #$81
                 bcs L_6EC2
                 inc STAGE_NO+1
                 rts
L_6E78           cmp #$03
                 bne L_6E9A
                 inc STAGE_NO+6
                 lda STAGE_NO+6
                 beq L_6E87
                 jmp L_6EC2
L_6E87           inc STAGE_NO+7
                 lda STAGE_NO+7
                 cmp #$05
                 bcc L_6EC2
                 lda #$00
                 sta STAGE_NO+7
                 inc STAGE_NO+1
                 rts
L_6E9A           inc $06BA
                 lda $06BA
                 cmp #$B0
                 bcc L_6EC2
                 lda #$11
                 sta STAGE_NO+2
                 lda #$00
                 sta STAGE_NO+1
                 sta STAGE_NO+4
                 ldy $06BA
                 tax
L_6EB5           sta L_33FE+2,y
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0E
                 bne L_6EB5
                 rts
L_6EC2           ldy $06BA
                 ldx #$00
                 lda $060E
                 bne L_6EF7
                 lda $060D
                 bne L_6EE4
L_6ED1           lda L_419B+5,x
                 sta L_33FE+2,y
                 lda L_41AB+3,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0E
                 bne L_6ED1
                 rts
L_6EE4           lda L_419B+5,x
                 sta L_33FE+2,y
                 lda L_41BB+2,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0E
                 bne L_6EE4
                 rts
L_6EF7           cmp #$01
                 bne L_6F26
                 lda $060D
                 bne L_6F13
L_6F00           lda L_6F51,x
                 sta L_33FE+2,y
                 lda L_6F59+6,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0E
                 bne L_6F00
                 rts
L_6F13           lda L_6F51,x
                 sta L_33FE+2,y
                 lda L_6F69+4,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0E
                 bne L_6F13
                 rts
L_6F26           lda $060D
                 bne L_6F3E
L_6F2B           lda L_41CB+1,x
                 sta L_33FE+2,y
                 lda L_41DB,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0E
                 bne L_6F2B
                 rts
L_6F3E           lda L_41CB+1,x
                 sta L_33FE+2,y
                 lda L_41E3+7,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$0E
                 bne L_6F3E
                 rts
L_6F51           .byte $00, $00, $00, $10, $7C, $D6, $BA, $7C
L_6F59           .byte $10, $10, $28, $54, $38, $00, $00, $38
                 .byte $00, $00, $00, $28, $44, $00, $00, $00
L_6F69           .byte $10, $28, $00, $00, $00, $10, $00, $00
                 .byte $00, $28, $44, $00, $00, $00, $10, $28
                 .byte $00, $00, $00, $00, $28, $44, $00, $00
                 .byte $00, $10, $28, $00, $00, $00, $E8, $E0
L_6F89           .byte $08, $D0, $F5, $60, $0A, $05, $05, $08
L_6F91           .byte $2A, $30, $51, $79, $3E, $08, $08, $08
L_6F99           .byte $14, $36, $1C, $00, $41, $00, $0E, $2E
                 .byte $06, $00, $00, $00, $00, $08, $08, $00
L_6FA9           .byte $00, $3E, $08, $2A, $16, $15, $4F, $3E
L_6FB1           .byte $08, $08, $08, $14, $36, $1C, $44, $00
                 .byte $68, $EA, $20, $00, $00, $00, $00, $08
L_6FC1           .byte $08, $00, $00, $08, $08, $36, $55, $3E
                 .byte $08, $08, $08, $1C, $00, $00, $00, $00
L_6FD1           .byte $00, $08, $14, $36, $1C, $08, $08, $1C
L_6FD9           .byte $00, $00, $00, $00, $00, $00, $00, $08
                 .byte $14, $08, $08, $08, $00, $00, $00, $00
                 .byte $00, $00, $00, $14, $48, $12, $48, $00
                 .byte $12, $24, $10, $00, $00, $00, $00, $D0
                 .byte $F5, $60, $C9, $78, $D0, $0E, $A2, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $FF
                 .byte $7F, $39, $38, $38, $38, $39, $3F, $C0
                 .byte $E0, $F0, $F0, $F0, $F0, $F0, $E0, $00
                 .byte $00, $00, $00, $00, $00, $1E, $3F, $3F
                 .byte $3B, $39, $38, $38, $38, $7C, $FE, $C0
                 .byte $C0, $E0, $F0, $78, $7E, $7E, $3C, $67
                 .byte $E3, $FE, $FC, $E0, $73, $3F, $1E, $00
                 .byte $03, $01, $01, $01, $01, $1D, $3F, $E0
                 .byte $C0, $C0, $C0, $C0, $C0, $C0, $C0, $79
                 .byte $70, $70, $70, $70, $39, $3F, $1E, $C0
                 .byte $C0, $C0, $C0, $C0, $C0, $E0, $F0, $00
                 .byte $00, $00, $00, $00, $00, $1F, $7F, $00
                 .byte $00, $01, $03, $03, $07, $0F, $83, $00
                 .byte $00, $C0, $C0, $C0, $F0, $E0, $C0, $61
                 .byte $0F, $3F, $7D, $71, $71, $3F, $1E, $C3
                 .byte $C3, $C3, $C3, $C3, $C1, $F0, $E0, $C0
                 .byte $C0, $C0, $C0, $E0, $F0, $FE, $3C, $3E
                 .byte $7E, $E6, $C2, $C0, $C0, $7C, $3E, $00
                 .byte $00, $00, $00, $1E, $3F, $73, $E1, $07
                 .byte $0F, $1C, $1C, $7F, $1C, $9C, $DC, $0E
                 .byte $06, $86, $CE, $FC, $F8, $00, $00, $E1
                 .byte $E1, $E1, $73, $3F, $1E, $00, $00, $DC
                 .byte $DC, $DC, $9C, $1C, $3E, $00, $00, $C0
                 .byte $E0, $6E, $1F, $3F, $0E, $0E, $0E, $00
                 .byte $00, $00, $80, $00, $3D, $1C, $1C, $00
                 .byte $00, $00, $00, $00, $F7, $E6, $E6, $0E
                 .byte $0E, $0E, $0F, $07, $03, $00, $00, $0E
                 .byte $0E, $0E, $0E, $E7, $C7, $00, $00, $66
                 .byte $66, $66, $6C, $9C, $98, $00, $00, $00
                 .byte $00, $00, $00, $00, $7C, $FF, $C7, $00
                 .byte $00, $00, $00, $00, $1B, $3F, $0E, $00
                 .byte $00, $00, $00, $00, $E0, $F1, $3B, $0F
                 .byte $37, $67, $C7, $C7, $7B, $00, $00, $0E
                 .byte $0E, $0E, $0E, $CE, $9F, $00, $00, $03
                 .byte $03, $03, $03, $01, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $F8, $FC, $0C, $FC
                 .byte $78, $00, $0C, $FC, $F8, $00, $00, $01
                 .byte $00, $00, $00, $00, $00, $00, $00, $FC
                 .byte $F8, $70, $70, $70, $70, $70, $70, $00
                 .byte $06, $0F, $1F, $0E, $0E, $0E, $0E, $05
                 .byte $05, $05, $05, $05, $01, $00, $00, $70
                 .byte $70, $70, $71, $FF, $FF, $00, $00, $0E
                 .byte $0E, $EF, $E7, $E7, $E3, $00, $00, $00
                 .byte $00, $80, $00, $00, $01, $03, $07, $03
                 .byte $0F, $03, $03, $7B, $FF, $8F, $07, $C0
                 .byte $00, $00, $00, $00, $00, $00, $00, $07
                 .byte $07, $07, $87, $E3, $C1, $00, $00, $07
                 .byte $07, $07, $07, $CF, $FB, $00, $00, $00
                 .byte $00, $00, $00, $C0, $80, $00, $00, $FB
                 .byte $22, $22, $22, $22, $00, $00, $00, $60
                 .byte $A0, $A0, $20, $20, $00, $00, $00, $03
                 .byte $07, $03, $01, $0F, $1F, $F0, $7F, $E0
                 .byte $F0, $E0, $C1, $FF, $FF, $00, $FF, $00
                 .byte $00, $E0, $F0, $FF, $FF, $00, $FF, $3F
                 .byte $3F, $1F, $0F, $3F, $2C, $FC, $FF, $FF
                 .byte $87, $78, $8D, $F0, $FD, $78, $FF, $FF
                 .byte $0E, $F1, $FB, $00, $FB, $F1, $FF, $00
                 .byte $00, $18, $3D, $FF, $FF, $00, $FF, $00
                 .byte $7F, $7F, $F1, $F1, $F1, $71, $7F, $00
                 .byte $85, $17, $7F, $7F, $7F, $60, $7F, $FF
                 .byte $1F, $E7, $F3, $30, $F0, $E0, $FF, $7F
                 .byte $BF, $C1, $FF, $FC, $D8, $70, $FF, $7F
                 .byte $7F, $60, $3F, $1F, $1B, $0E, $FF, $00
                 .byte $99, $66, $FF, $FF, $FF, $00, $FF, $00
                 .byte $10, $A8, $FC, $FC, $FF, $01, $FC, $00
                 .byte $01, $03, $07, $06, $C6, $C6, $46, $FF
                 .byte $FF, $00, $FF, $7D, $6D, $38, $FF, $FF
                 .byte $FF, $00, $FF, $F7, $B6, $E3, $FF, $46
                 .byte $46, $57, $FF, $D1, $C1, $80, $FF, $00
                 .byte $FF, $55, $FF, $1F, $18, $18, $18, $00
                 .byte $FF, $55, $FF, $FF, $18, $18, $18, $00
                 .byte $FF, $55, $FF, $FF, $18, $18, $18, $1F
                 .byte $1F, $1F, $FF, $F7, $B6, $E3, $FF, $FF
                 .byte $FF, $F3, $FC, $C7, $C0, $80, $FF, $FF
                 .byte $FF, $FF, $00, $FF, $00, $00, $FF, $00
                 .byte $FF, $55, $FF, $FF, $18, $18, $18, $FF
                 .byte $FF, $FF, $00, $FF, $00, $00, $FF, $00
                 .byte $FF, $AA, $FF, $FF, $18, $18, $18, $00
                 .byte $FF, $AA, $FF, $FF, $1F, $1F, $1F, $00
                 .byte $C0, $A0, $F0, $16, $16, $16, $16, $FF
                 .byte $FF, $CF, $3F, $E3, $03, $01, $FF, $FF
                 .byte $FF, $FF, $FF, $EF, $6D, $C7, $FF, $16
                 .byte $10, $FA, $FF, $82, $80, $00, $FF, $00
                 .byte $3F, $55, $FF, $8F, $8C, $8C, $8C, $00
                 .byte $FF, $55, $FF, $FF, $18, $18, $18, $00
                 .byte $FF, $55, $FF, $FF, $18, $18, $18, $8F
                 .byte $8F, $8F, $FF, $7D, $6D, $38, $FF, $FF
                 .byte $FF, $F3, $FC, $F7, $B0, $E0, $FF, $FF
                 .byte $FF, $FF, $00, $FF, $00, $00, $FF, $00
                 .byte $00, $00, $00, $00, $00, $00, $FF, $00
                 .byte $00, $00, $00, $00, $00, $00, $01, $00
                 .byte $00, $00, $00, $15, $AA, $90, $40, $00
                 .byte $00, $00, $A4, $52, $20, $94, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $1F, $1F, $0F, $0F, $1F
                 .byte $3F, $3F, $3F, $FF, $E1, $ED, $E1, $EB
                 .byte $ED, $FF, $FF, $FC, $F8, $F0, $E0, $E0
                 .byte $E0, $C0, $80, $1F, $0F, $0F, $B7, $D7
                 .byte $0D, $11, $25, $BF, $5E, $5E, $6C, $4E
                 .byte $0D, $07, $02, $00, $00, $00, $00, $00
                 .byte $00, $40, $A0, $5A, $74, $01, $0A, $20
                 .byte $00, $00, $00, $21, $81, $00, $0A, $10
                 .byte $00, $00, $00, $50, $50, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $01, $00, $01
                 .byte $02, $05, $05, $00, $80, $A4, $75, $7A
                 .byte $80, $00, $00, $04, $02, $00, $00, $00
                 .byte $00, $00, $00, $A0, $D0, $00, $00, $00
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
L_73F9           .byte $00, $00, $00, $00, $00, $00, $00, $00
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
                 .byte $00, $00, $00, $00, $01, $02, $03, $07
                 .byte $08, $01, $02, $0B, $0C, $0D, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $04, $05, $06, $09, $0A, $04, $05, $0E
                 .byte $0F, $10, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $11, $12, $13, $17, $18, $19, $1D
                 .byte $1E, $1F, $23, $5F, $60, $61, $25, $26
                 .byte $27, $2B, $2C, $2D, $31, $32, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $14, $15, $16, $1A, $1B, $1C, $20
                 .byte $21, $22, $24, $62, $63, $64, $00, $29
                 .byte $2A, $2E, $2F, $30, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_74F9           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $30, $00, $32, $00, $25
                 .byte $00, $33, $00, $25, $00, $2E, $00, $34
                 .byte $00, $33, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $02, $33, $23, $32, $25, $21, $2D
                 .byte $29, $2E, $27, $00, $37, $29, $2E, $27
                 .byte $33, $02, $00, $00, $00, $00, $00, $00
L_75A9           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $08, $23, $09
                 .byte $32, $25, $24, $00, $32, $21, $34, $00
                 .byte $33, $2F, $26, $34, $37, $21, $32, $25
L_75F9           .byte $00, $2C, $34, $24, $08, $11, $19, $18
                 .byte $16, $09, $00, $00, $00, $00, $00, $00
                 .byte $00, $51, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $45, $00, $00
                 .byte $00, $34, $28, $25, $2D, $25, $00, $00
                 .byte $2D, $35, $33, $29, $23, $00, $00, $2F
L_7641           .byte $2E, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_7659           .byte $00, $00, $0E, $0E, $0E, $0E, $0E, $00
                 .byte $28, $21, $33, $00, $34, $2F, $24, $21
                 .byte $39, $33, $00, $34, $2F, $30, $00, $33
L_7671           .byte $23, $2F, $32, $25, $1A, $10, $10, $10
                 .byte $10, $10, $10, $10, $00, $00, $00, $00
                 .byte $00, $5A, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $43, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $30, $32, $2F, $27, $32, $21, $2D
                 .byte $00, $22, $39, $00, $30, $21, $35, $2C
                 .byte $00, $23, $32, $21, $36, $25, $2E, $00
                 .byte $00, $00, $12, $10, $12, $10, $00, $36
                 .byte $25, $32, $33, $29, $2F, $2E, $00, $00
L_76F9           .byte $00, $2D, $35, $33, $29, $23, $00, $22
                 .byte $39, $00, $24, $21, $36, $25, $00, $26
                 .byte $2F, $32, $37, $21, $32, $24, $00, $00
                 .byte $00, $26, $32, $21, $2E, $23, $2F, $00
                 .byte $23, $21, $34, $32, $29, $2E, $00, $00
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
                 .byte $00, $00, $00, $00, $00, $00, $00
                 lda LOADFLG
                 bne L_77C8
                 lda WARMST
                 bne L_780D
L_77C8           ldx #$FF
                 txs
                 cld
                 ldx L_02E2+5
                 ldy L_02E2+6
                 stx LOMEM
                 sty LOMEM+1
                 lda #$00
                 sta MEOLFLG
                 sta LOADFLG
                 iny
                 txa
                 ldx #$82
L_77E0           sta LNFLG,x
                 inx
                 sty LNFLG,x
                 inx
                 cpx #$92
                 bcc L_77E0
                 ldx #$86
                 ldy #$01
                 jsr L_A878+2
                 ldx #$8C
                 ldy #$03
                 jsr L_A878+2
                 lda #$00
                 tay
                 sta (VNTD),y
                 sta (STMCUR),y
                 iny
L_7800           lda #$00
                 sta SDMCTL
                 sta $060E
                 lda #$FF
                 sta PCOLR0
L_780D           jsr L_7954
                 ldx #$00
                 txa
L_7813           sta L_9E6D+3,x
                 sta L_9EAD+3,x
                 inx
                 bne L_7813
L_781C           sta HPOSP0,x
                 inx
                 cpx #$08
                 bne L_781C
                 lda #$70
                 sta SAVMSC
                 lda #$9E
                 sta SAVMSC+1
                 sta COLOR0
                 sta SDLSTH
                 lda #$58
                 sta SDLSTL
                 ldx #$00
L_7839           lda L_7985,x
                 sta L_9E55+3,x
                 inx
                 cpx #$18
                 bne L_7839
                 ldx #$04
                 ldy #$21
L_7848           lda #$00
                 sta ENEMY_MOV_TYPE+1
L_784D           tya
                 sta L_9E6D+3,x
                 inx
                 inx
                 iny
                 cpy #$3B
                 beq L_786A
                 inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
                 cmp #$06
                 bne L_784D
                 txa
                 clc
                 adc #$1C
                 tax
                 jmp L_7848
L_786A           lda #$0A
                 sta L_9E6D+3,x
                 ldy #$00
                 lda #$0E
L_7873           inx
                 inx
                 sta L_9E6D+3,x
                 iny
                 cpy #$03
                 bne L_7873
                 ldx #$00
L_787F           lda $0600,x
                 sta L_9F5D+6,x
                 inx
                 cpx #$06
                 bne L_787F
                 ldx #$00
L_788C           lda L_797D,x
                 sta L_9F65+4,x
                 inx
                 cpx #$08
                 bne L_788C
                 lda #$3A
                 sta SDMCTL
                 lda #$50
                 sta HPOSP0
                 sta PLANE_X
                 ldy #$1C
                 sty ENEMY_MOV_TYPE+3
                 jsr L_795E
L_78AC           lda $060E
                 cmp #$05
                 bmi L_78C6
                 ldx #$00
L_78B5           lda L_9F65+7,x
                 sta $065E,x
                 inx
                 cpx #$05
                 bne L_78B5
L_78C0           lda STRIG0
                 beq L_78C0
                 rts
L_78C6           lda STICK0
                 cmp #$07
                 beq L_7903
                 cmp #$0B
                 beq L_78E7
                 cmp #$0E
                 beq L_791C
                 cmp #$0D
                 beq L_7938
                 lda STRIG0
                 bne L_78AC
                 jsr L_5B00
                 jsr L_796F
                 jmp L_78AC
L_78E7           lda PLANE_X
                 cmp #$60
                 bcs L_78F1
                 jmp L_78AC
L_78F1           lda PLANE_X
                 sec
                 sbc #$10
                 sta PLANE_X
                 sta HPOSP0
                 jsr L_796F
                 jmp L_78AC
L_7903           lda PLANE_X
                 cmp #$9F
                 bcc L_790D
                 jmp L_78AC
L_790D           clc
                 adc #$10
                 sta PLANE_X
                 sta HPOSP0
                 jsr L_796F
                 jmp L_78AC
L_791C           lda ENEMY_MOV_TYPE+3
                 cmp #$20
                 bcs L_7926
                 jmp L_78AC
L_7926           jsr L_7954
                 lda ENEMY_MOV_TYPE+3
                 sec
                 sbc #$20
                 sta ENEMY_MOV_TYPE+3
                 jsr L_795E
                 jmp L_78AC
L_7938           lda ENEMY_MOV_TYPE+3
                 cmp #$9C
                 bcc L_7942
                 jmp L_78AC
L_7942           jsr L_7954
                 lda ENEMY_MOV_TYPE+3
                 clc
                 adc #$20
                 sta ENEMY_MOV_TYPE+3
                 jsr L_795E
                 jmp L_78AC
L_7954           ldx #$00
                 txa
L_7957           sta L_33FE+2,x
                 inx
                 bne L_7957
                 rts
L_795E           ldx #$00
                 ldy ENEMY_MOV_TYPE+3
L_7963           lda L_7995+7,x
                 sta L_33FE+2,y
                 iny
                 inx
                 cpx #$19
                 bne L_7963
L_796F           jsr L_561C
                 ldy #$00
                 ldx #$00
L_7976           inx
                 bne L_7976
                 iny
                 bne L_7976
                 rts
L_797D           .byte $10, $0E, $0E, $0A, $0A, $0A, $0A, $0A
L_7985           .byte $70, $70, $70, $47, $70, $9E, $07, $07
                 .byte $07, $07, $07, $07, $07, $07, $07, $06
L_7995           .byte $06, $06, $06, $06, $41, $58, $9E, $18
                 .byte $18, $7E, $3C, $18, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $18, $3C, $7E, $18, $18
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $22, $0C
                 .byte $0C, $0C, $01, $0F, $10, $01, $0C, $3B
                 .byte $3C, $24, $2B, $3A, $39, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $39, $3A, $3A, $3A, $39, $3A, $39, $39
                 .byte $3A, $3A, $39, $3A, $3A, $33, $22, $3F
                 .byte $40, $0C, $01, $11, $12, $01, $0C, $04
                 .byte $05, $24, $0C, $2B, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $22, $3D
                 .byte $3E, $0C, $01, $23, $0C, $01, $3B, $3C
                 .byte $0C, $24, $25, $26, $39, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $39, $3A, $3A, $3A, $39, $3A, $39, $39
                 .byte $3A, $3A, $39, $3A, $3A, $39, $22, $0C
                 .byte $0C, $0C, $01, $23, $0C, $01, $04, $05
                 .byte $0C, $24, $27, $28, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $22, $03
                 .byte $03, $03, $02, $03, $03, $02, $03, $03
                 .byte $03, $24, $27, $28, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $39, $3A, $39, $39
                 .byte $3A, $3A, $39, $3A, $3A, $13, $22, $3F
                 .byte $40, $0C, $01, $23, $0C, $01, $0C, $0C
                 .byte $0C, $24, $27, $28, $39, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $22, $3D
                 .byte $3E, $0C, $01, $23, $0C, $01, $0C, $3B
                 .byte $3C, $24, $27, $28, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $39, $3A, $39, $39
                 .byte $3A, $3A, $39, $3A, $3A, $13, $22, $3F
                 .byte $40, $0C, $01, $23, $0C, $01, $0C, $04
                 .byte $05, $24, $29, $2A, $39, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $22, $3D
                 .byte $3E, $0C, $01, $23, $0C, $01, $0C, $3B
                 .byte $3C, $24, $0C, $2C, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $39, $3A, $39, $39
                 .byte $3A, $3A, $39, $3A, $3A, $39, $22, $3F
                 .byte $40, $0C, $01, $23, $0C, $01, $0C, $04
                 .byte $05, $24, $2C, $3A, $39, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $22, $3D
                 .byte $3E, $0C, $01, $0F, $10, $01, $0C, $3B
                 .byte $3C, $24, $3A, $39, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $39, $3A, $39, $39
                 .byte $3A, $3A, $39, $3A, $3A, $39, $22, $0C
                 .byte $0C, $0C, $01, $11, $12, $01, $0C, $04
                 .byte $05, $24, $39, $3A, $39, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $22, $03
                 .byte $03, $03, $02, $03, $03, $02, $03, $03
                 .byte $03, $24, $37, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $39, $3A, $39, $39
                 .byte $3A, $3A, $39, $3A, $3A, $39, $22, $3F
                 .byte $40, $0C, $01, $23, $0C, $01, $0C, $0C
                 .byte $0C, $24, $3A, $39, $39, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $22, $3D
                 .byte $3E, $0C, $01, $30, $31, $01, $0C, $3B
                 .byte $3C, $24, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $39, $3A, $39, $39
                 .byte $3A, $3A, $39, $3A, $3A, $39, $22, $3F
                 .byte $40, $0C, $01, $32, $36, $01, $0C, $04
                 .byte $05, $24, $3A, $39, $39, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $22, $3D
                 .byte $3E, $0C, $01, $23, $0C, $01, $0C, $0C
                 .byte $0C, $24, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $39, $3A, $39, $39
                 .byte $3A, $3A, $39, $3A, $3A, $39, $34, $35
                 .byte $35, $35, $35, $35, $35, $35, $35, $35
                 .byte $35, $36, $38, $39, $39, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $39, $3A, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $00, $00, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $49, $4A
                 .byte $4B, $3A, $39, $3A, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $4E, $4F
                 .byte $50, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $49, $4A, $14, $4A, $4B, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $49
                 .byte $4A, $14, $15, $14, $15, $19, $4A, $4B
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $49, $14
                 .byte $14, $15, $16, $14, $15, $14, $18, $0C
                 .byte $50, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $4D, $0C
                 .byte $14, $15, $14, $16, $16, $15, $15, $19
                 .byte $4A, $4B, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $49, $14, $15
                 .byte $16, $16, $15, $14, $14, $16, $15, $15
                 .byte $19, $4A, $4B, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $4D, $14, $15, $16
                 .byte $15, $15, $14, $16, $16, $15, $14, $14
                 .byte $18, $0C, $50, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $15, $15, $14, $16
                 .byte $16, $15, $14, $14, $15, $16, $16, $15
                 .byte $19, $0C, $4A, $4B, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $16, $14, $15, $15
                 .byte $14, $15, $14, $15, $14, $15, $16, $14
                 .byte $15, $19, $0C, $0C, $4A, $4B, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $16, $15, $14, $14
                 .byte $14, $15, $16, $15, $16, $15, $15, $16
                 .byte $15, $14, $19, $0C, $0C, $50, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $15, $16, $18, $15
                 .byte $16, $14, $15, $16, $14, $16, $14, $15
                 .byte $16, $15, $14, $18, $0C, $4B, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $19, $14, $15, $16
                 .byte $16, $15, $14, $14, $15, $16, $15, $16
                 .byte $14, $15, $16, $19, $4F, $50, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $18, $19, $15, $14
                 .byte $16, $16, $15, $14, $15, $16, $15, $14
                 .byte $15, $16, $15, $18, $4B, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $14, $15, $16, $15
                 .byte $16, $15, $16, $16, $15, $15, $16, $14
                 .byte $15, $15, $16, $16, $19, $4B, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $39
                 .byte $3A, $39, $3A, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $15, $14, $15, $16
                 .byte $15, $16, $15, $15, $16, $16, $15, $16
                 .byte $14, $14, $15, $17, $18, $50, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $14, $14, $16, $15
                 .byte $16, $14, $14, $14, $14, $16, $15, $16
                 .byte $15, $16, $18, $4F, $50, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $18, $18, $15, $15
                 .byte $15, $14, $15, $14, $15, $16, $14, $18
                 .byte $18, $15, $50, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $15, $16, $14, $18
                 .byte $15, $16, $18, $15, $16, $18, $14, $15
                 .byte $16, $4C, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $15, $16, $14, $14
                 .byte $15, $16, $14, $14, $16, $14, $18, $14
                 .byte $16, $15, $4A, $4B, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $18, $14, $16, $15
                 .byte $14, $16, $14, $15, $16, $16, $14, $15
                 .byte $14, $16, $15, $19, $4A, $4B, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $16, $15, $14, $18
                 .byte $16, $15, $14, $18, $16, $15, $14, $18
                 .byte $16, $15, $14, $16, $18, $4C, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $14, $15, $16, $14
                 .byte $15, $16, $14, $15, $16, $14, $15, $16
                 .byte $14, $15, $16, $18, $4F, $50, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $15, $14, $16, $15
                 .byte $14, $16, $15, $14, $16, $15, $14, $16
                 .byte $15, $14, $18, $4C, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $16, $15, $14, $16
                 .byte $15, $14, $16, $15, $14, $16, $15, $14
                 .byte $16, $18, $4F, $50, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $18, $14, $15, $16
                 .byte $16, $15, $14, $14, $15, $16, $16, $14
                 .byte $18, $4B, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $14, $18, $16, $15
                 .byte $14, $18, $16, $15, $14, $18, $15, $18
                 .byte $4F, $50, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $16, $15, $14, $16
                 .byte $15, $14, $16, $15, $14, $17, $18, $4C
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $39, $3A, $15, $14, $16, $15
                 .byte $14, $16, $15, $17, $18, $0C, $0C, $50
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $14, $15, $16, $15
                 .byte $14, $15, $18, $0C, $0C, $4F, $50, $39
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $15, $14, $16, $16
                 .byte $17, $18, $0C, $0C, $4F, $4B, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $16, $16, $15, $18
                 .byte $0C, $0C, $4F, $50, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $17, $17, $18, $0C
                 .byte $4F, $50, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $4F, $4F, $4F, $50
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $49, $4A
                 .byte $4B, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $49, $0C, $15
                 .byte $19, $49, $4A, $4B, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $49, $16, $17, $15
                 .byte $15, $19, $14, $19, $4B, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $49, $14, $16, $15, $15
                 .byte $14, $15, $14, $18, $19, $4B, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $4E, $16, $15, $14, $16
                 .byte $16, $19, $18, $14, $15, $19, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $4E, $17, $15, $14
                 .byte $16, $18, $16, $15, $16, $50, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $4E, $17, $19
                 .byte $15, $19, $14, $19, $50, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $4E, $17
                 .byte $16, $49, $4F, $50, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $39, $3A, $39, $3A, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $39
                 .byte $3A, $39, $3A, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $3A, $3A
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $3A, $3A, $39, $3A
                 .byte $39, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
L_8FDD           .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
L_901D           .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
L_90A5           .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $49, $4A, $4B, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $49, $0C, $15, $19, $49, $4A, $4B
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $49, $16, $17, $15, $15, $19, $14, $19
                 .byte $4B, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $49
                 .byte $14, $16, $15, $15, $14, $15, $14, $18
                 .byte $19, $4B, $39, $3A, $39, $3A, $39, $3A
L_916D           .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $4E
                 .byte $16, $15, $14, $16, $16, $19, $18, $14
                 .byte $15, $19, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $4E, $17, $15, $14, $16, $18, $16, $15
                 .byte $16, $50, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $4E, $17, $19, $15, $19, $14, $19
                 .byte $50, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $4E, $17, $16, $49, $4F, $50
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $39, $3A, $39, $3A
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
L_954D           .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $39, $3A, $46, $47
                 .byte $47, $47, $47, $47, $47, $48, $3A, $39
                 .byte $3A, $39, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $43, $44, $44
                 .byte $44, $44, $44, $44, $44, $44, $45, $39
                 .byte $3A, $39, $3A, $39, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $1E, $0C, $0C, $0C
                 .byte $0C, $0C, $0C, $0C, $0C, $0C, $0C, $21
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $3F, $40, $0C
                 .byte $01, $1F, $20, $01, $0C, $0C, $0C, $24
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $3D, $3E, $0C
                 .byte $01, $2D, $2E, $01, $0C, $3B, $3C, $24
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $0C, $3F, $40
                 .byte $01, $23, $0C, $01, $0C, $04, $05, $24
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
L_975D           .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $0C, $3D, $3E
                 .byte $01, $23, $0C, $01, $0C, $3B, $3C, $24
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $3F, $40, $0C
                 .byte $01, $23, $0C, $01, $0C, $04, $05, $24
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $3D, $3E, $0C
                 .byte $01, $23, $0C, $01, $0C, $3B, $3C, $24
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $0C, $3F, $40
                 .byte $01, $23, $0C, $01, $0C, $04, $05, $24
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $0C, $3D, $3E
                 .byte $01, $23, $0C, $01, $0C, $3B, $3C, $24
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $22, $0C, $0C, $0C
                 .byte $01, $23, $0C, $01, $0C, $04, $05, $24
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $3A, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $03, $03, $03
                 .byte $02, $03, $03, $02, $03, $03, $03, $24
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
L_9875           .byte $39, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $22, $0C, $0C, $0C
                 .byte $01, $0F, $10, $01, $0C, $3B, $3C, $24
                 .byte $2B, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $33, $22, $3F, $40, $0C
                 .byte $01, $11, $12, $01, $0C, $04, $05, $24
                 .byte $0C, $2B, $3A, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $3A, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $3D, $3E, $0C
                 .byte $01, $23, $0C, $01, $3B, $3C, $0C, $24
                 .byte $25, $26, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $22, $0C, $0C, $0C
                 .byte $01, $23, $0C, $01, $04, $05, $0C, $24
                 .byte $27, $28, $3A, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $39, $3A, $39, $3A, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $03, $03, $03
                 .byte $02, $03, $03, $02, $03, $03, $03, $24
                 .byte $27, $28, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $13, $22, $3F, $40, $0C
                 .byte $01, $23, $0C, $01, $0C, $0C, $0C, $24
                 .byte $27, $28, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $3D, $3E, $0C
                 .byte $01, $23, $0C, $01, $0C, $3B, $3C, $24
                 .byte $27, $28, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $13, $22, $3F, $40, $0C
                 .byte $01, $23, $0C, $01, $0C, $04, $05, $24
                 .byte $29, $2A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $3D, $3E, $0C
                 .byte $01, $23, $0C, $01, $0C, $3B, $3C, $24
                 .byte $0C, $2C, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $22, $3F, $40, $0C
                 .byte $01, $23, $0C, $01, $0C, $04, $05, $24
                 .byte $2C, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $3D, $3E, $0C
                 .byte $01, $0F, $10, $01, $0C, $3B, $3C, $24
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $22, $0C, $0C, $0C
                 .byte $01, $11, $12, $01, $0C, $04, $05, $24
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $3A, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $03, $03, $03
                 .byte $02, $03, $03, $02, $03, $03, $03, $24
                 .byte $37, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $22, $3F, $40, $0C
                 .byte $01, $23, $0C, $01, $0C, $0C, $0C, $24
                 .byte $3A, $39, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $3D, $3E, $0C
                 .byte $01, $30, $31, $01, $0C, $3B, $3C, $24
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $22, $3F, $40, $0C
                 .byte $01, $32, $36, $01, $0C, $04, $05, $24
                 .byte $3A, $39, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $22, $3D, $3E, $0C
                 .byte $01, $23, $0C, $01, $0C, $0C, $0C, $24
                 .byte $39, $3A, $3A, $3A, $3A, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $3A, $39, $3A, $39, $39, $3A, $3A
                 .byte $39, $3A, $3A, $39, $34, $35, $35, $35
                 .byte $35, $35, $35, $35, $35, $35, $35, $36
                 .byte $38, $39, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $70, $70, $70, $44, $A0, $9B, $04
                 .byte $04, $04, $04, $04, $04, $04, $04, $04
                 .byte $04, $04, $04, $04, $04, $04, $04, $04
                 .byte $04, $04, $42, $60, $9F, $02, $02, $02
L_9B9D           .byte $41, $7E, $9B, $00, $00, $00, $00, $00
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
L_9C1D           .byte $00, $00, $00, $70, $70, $70, $42, $40
L_9C25           .byte $9C, $02, $06, $06, $02, $02, $82, $02
L_9C2D           .byte $02, $02, $02, $07, $07, $02, $02, $02
L_9C35           .byte $06, $06, $02, $02, $02, $02, $02, $02
L_9C3D           .byte $41, $20, $9C, $00, $00, $00, $00, $00
L_9C45           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_9C65           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_9C8D           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $01, $02, $03, $07, $08, $01, $02, $0B
L_9C9D           .byte $0C, $0D, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $04, $05, $06, $09
                 .byte $0A, $04, $05, $0E, $0F, $10, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_9CE5           .byte $00, $00, $00, $00, $00, $11, $12, $13
                 .byte $17, $18, $19, $1D, $1E, $1F, $23, $5F
                 .byte $60, $61, $25, $26, $27, $2B, $2C, $2D
                 .byte $31, $32, $00, $00, $00, $00, $00, $00
L_9D05           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $14, $15, $16
                 .byte $1A, $1B, $1C, $20, $21, $22, $24, $62
                 .byte $63, $64, $00, $29, $2A, $2E, $2F, $30
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_9D2D           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_9D3D           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $30
                 .byte $00, $32, $00, $25, $00, $33, $00, $25
                 .byte $00, $2E, $00, $34, $00, $33, $00, $00
L_9D9D           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $02, $33, $23
                 .byte $32, $25, $21, $2D, $29, $2E, $27, $00
                 .byte $37, $29, $2E, $27, $33, $02, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $08, $23, $09, $32, $25, $24, $00
                 .byte $32, $21, $34, $00, $33, $2F, $26, $34
                 .byte $37, $21, $32, $25, $00, $2C, $34, $24
L_9E3D           .byte $08, $11, $19, $18, $16, $09, $00, $00
                 .byte $00, $00, $00, $00, $00, $51, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
L_9E55           .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
L_9E6D           .byte $52, $45, $00, $00, $00, $34, $28, $25
                 .byte $2D, $25, $00, $00, $2D, $35, $33, $29
L_9E7D           .byte $23, $00, $00, $2F, $2E, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $0E, $0E
                 .byte $0E, $0E, $0E, $00, $28, $21, $33, $00
                 .byte $34, $2F, $24, $21, $39, $33, $00, $34
L_9EAD           .byte $2F, $30, $00, $33, $23, $2F, $32, $25
                 .byte $1A, $10, $10, $10, $10, $10, $10, $10
                 .byte $00, $00, $00, $00, $00, $5A, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $43, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $30, $32, $2F
                 .byte $27, $32, $21, $2D, $00, $22, $39, $00
                 .byte $30, $21, $35, $2C, $00, $23, $32, $21
                 .byte $36, $25, $2E, $00, $00, $00, $12, $10
                 .byte $12, $10, $00, $36, $25, $32, $33, $29
                 .byte $2F, $2E, $00, $00, $00, $2D, $35, $33
L_9F3D           .byte $29, $23, $00, $22, $39, $00, $24, $21
                 .byte $36, $25, $00, $26, $2F, $32, $37, $21
                 .byte $32, $24, $00, $00, $00, $26, $32, $21
                 .byte $2E, $23, $2F, $00, $23, $21, $34, $32
L_9F5D           .byte $29, $2E, $00, $00, $00, $00, $00, $00
L_9F65           .byte $00, $00, $00, $00, $00, $00, $00, $00
L_9F6D           .byte $00, $00, $00, $00, $00, $00, $00, $00
L_9F75           .byte $00, $00, $00, $00, $00, $00, $00, $00
L_9F7D           .byte $00, $00, $00, $00, $00, $00, $00, $00
L_9F85           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_9F95           .byte $00, $00, $00, $00, $00, $00, $00, $00
L_9F9D           .byte $00, $00, $00, $00, $00, $00, $00, $00
L_9FA5           .byte $00, $00, $00, $00, $00, $00, $00, $00
L_9FAD           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00
                 lda LOADFLG
                 bne L_A008
                 lda WARMST
                 bne L_A048+5
L_A008           ldx #$FF
                 txs
                 cld
                 ldx L_02E2+5
                 ldy L_02E2+6
                 stx LOMEM
                 sty LOMEM+1
                 lda #$00
                 sta MEOLFLG
                 sta LOADFLG
                 iny
                 txa
                 ldx #$82
L_A020           sta LNFLG,x
                 inx
                 sty LNFLG,x
                 inx
                 cpx #$92
                 bcc L_A020
                 ldx #$86
                 ldy #$01
                 jsr L_A878+2
                 ldx #$8C
                 ldy #$03
                 jsr L_A878+2
                 lda #$00
                 tay
                 sta (VNTD),y
                 sta (STMCUR),y
                 iny
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_A048           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $49, $4A, $4B, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $4E, $4F, $50, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $49, $4A
                 .byte $14, $4A, $4B, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $3A, $3A, $39, $49, $4A, $14, $15
                 .byte $14, $15, $19, $4A, $4B, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $49, $14, $14, $15, $16
                 .byte $14, $15, $14, $18, $0C, $50, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $3A, $3A, $4D, $0C, $14, $15, $14
                 .byte $16, $16, $15, $15, $19, $4A, $4B, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $49, $14, $15, $16, $16, $15
                 .byte $14, $14, $16, $15, $15, $19, $4A, $4B
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $4D, $14, $15, $16, $15, $15, $14
                 .byte $16, $16, $15, $14, $14, $18, $0C, $50
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $15, $15, $14, $16, $16, $15, $14
                 .byte $14, $15, $16, $16, $15, $19, $0C, $4A
                 .byte $4B, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $16, $14, $15, $15, $14, $15, $14
                 .byte $15, $14, $15, $16, $14, $15, $19, $0C
                 .byte $0C, $4A, $4B, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $16, $15, $14, $14, $14, $15, $16
                 .byte $15, $16, $15, $15, $16, $15, $14, $19
                 .byte $0C, $0C, $50, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $15, $16, $18, $15, $16, $14, $15
                 .byte $16, $14, $16, $14, $15, $16, $15, $14
                 .byte $18, $0C, $4B, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $19, $14, $15, $16, $16, $15, $14
                 .byte $14, $15, $16, $15, $16, $14, $15, $16
                 .byte $19, $4F, $50, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $18, $19, $15, $14, $16, $16, $15
                 .byte $14, $15, $16, $15, $14, $15, $16, $15
                 .byte $18, $4B, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $14, $15, $16, $15, $16, $15, $16
                 .byte $16, $15, $15, $16, $14, $15, $15, $16
                 .byte $16, $19, $4B, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $39, $3A, $39, $3A
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $15, $14, $15, $16, $15, $16, $15
                 .byte $15, $16, $16, $15, $16, $14, $14, $15
                 .byte $17, $18, $50, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $14, $14, $16, $15, $16, $14, $14
                 .byte $14, $14, $16, $15, $16, $15, $16, $18
                 .byte $4F, $50, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $18, $18, $15, $15, $15, $14, $15
                 .byte $14, $15, $16, $14, $18, $18, $15, $50
                 .byte $3A, $39, $39, $3A, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $15, $16, $14, $18, $15, $16, $18
                 .byte $15, $16, $18, $14, $15, $16, $4C, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $15, $16, $14, $14, $15, $16, $14
                 .byte $14, $16, $14, $18, $14, $16, $15, $4A
                 .byte $4B, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $18, $14, $16, $15, $14, $16, $14
                 .byte $15, $16, $16, $14, $15, $14, $16, $15
                 .byte $19, $4A, $4B, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $16, $15, $14, $18, $16, $15, $14
                 .byte $18, $16, $15, $14, $18, $16, $15, $14
                 .byte $16, $18, $4C, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $14, $15, $16, $14, $15, $16, $14
                 .byte $15, $16, $14, $15, $16, $14, $15, $16
                 .byte $18, $4F, $50, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $15, $14, $16, $15, $14, $16, $15
                 .byte $14, $16, $15, $14, $16, $15, $14, $18
                 .byte $4C, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $16, $15, $14, $16, $15, $14, $16
                 .byte $15, $14, $16, $15, $14, $16, $18, $4F
                 .byte $50, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $18, $14, $15, $16, $16, $15, $14
                 .byte $14, $15, $16, $16, $14, $18, $4B, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $14, $18, $16, $15, $14, $18, $16
                 .byte $15, $14, $18, $15, $18, $4F, $50, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $16, $15, $14, $16, $15, $14, $16
                 .byte $15, $14, $17, $18, $4C, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $39, $3A, $39, $39
                 .byte $3A, $15, $14, $16, $15, $14, $16, $15
                 .byte $17, $18, $0C, $0C, $50, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $14, $15, $16, $15, $14, $15, $18
                 .byte $0C, $0C, $4F, $50, $39, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $15, $14, $16, $16, $17, $18, $0C
                 .byte $0C, $4F, $4B, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $16, $16, $15, $18, $0C, $0C, $4F
                 .byte $50, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $17, $17, $18, $0C, $4F, $50, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $4F, $4F, $4F, $50, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
L_A878           .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
L_A998           .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
L_AA60           .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $49, $4A, $4B, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $49, $0C, $15, $19, $49, $4A
                 .byte $4B, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $49, $16, $17, $15, $15, $19, $14
                 .byte $19, $4B, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $49, $14, $16, $15, $15, $14, $15, $14
                 .byte $18, $19, $4B, $39, $3A, $39, $3A, $39
L_AB28           .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $4E, $16, $15, $14, $16, $16, $19, $18
                 .byte $14, $15, $19, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $4E, $17, $15, $14, $16, $18, $16
                 .byte $15, $16, $50, $39, $3A, $39, $3A, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $4E, $17, $19, $15, $19, $14
                 .byte $19, $50, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
L_ABA8           .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $4E, $17, $16, $49, $4F
                 .byte $50, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $39, $3A, $39
                 .byte $3A, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $39, $3A, $39, $3A
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $39, $3A, $39, $39, $3A, $39
                 .byte $39, $3A, $39, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $3A, $3A, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $3A, $3A, $39, $3A, $39, $39, $3A
                 .byte $3A, $39, $3A, $3A, $39, $3A, $3A, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $3A, $39, $3A, $39, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $39
                 .byte $3A, $39, $3A, $39, $3A, $39, $3A, $39
                 .byte $39, $3A, $39, $3A, $39, $3A, $39, $3A
                 .byte $39, $3A, $39, $39, $3A, $39, $39, $3A
                 .byte $39, $39, $3A, $39, $39, $3A, $39, $39
                 .byte $3A, $39, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_AD20           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_AD50           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_AD98           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_ADB8           .byte $00, $00, $00, $00, $00, $00, $00, $00
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
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
BIGPLANE_CHECK2  lda ENEMY_MOV_TYPE
                 bne L_B245
BIGPLANE_ON2     sta $06D3
                 sta $06D4
                 sta $06D8
                 sta $0625
                 lda #$28
                 sta ENEMY_Y
                 sta $06D0
                 lda #$D0
                 sta ENEMY_X
                 sta HPOSP2
                 clc
                 adc #$1E
                 sta HPOSP3
                 lda #$00
                 sta $06AC
                 lda #$90
                 sta PCOLR3
                 sta PCOLR2
                 lda #$03
                 sta SIZEP2
                 sta SIZEP3
                 lda #$0F
                 sta L_542E+1
                 inc ENEMY_MOV_TYPE
                 rts
L_B245           jsr L_B550
                 lda $06D0
                 beq L_B2B2
                 lda $06D8
                 bne L_B283
                 lda BIGPLANE_FIRE_TYPE
                 bne L_B269
                 lda ENEMY_X
                 clc
                 adc #$14
                 sta HPOSM0
                 adc #$14
                 sta HPOSM1
                 cmp #$00
                 bne L_B277
L_B269           lda ENEMY_X
                 clc
                 adc #$1A
                 sta HPOSM0
                 adc #$07
                 sta HPOSM1
L_B277           lda ENEMY_Y
                 clc
                 adc #$1E
                 sta ENEMY_BULLET_Y
                 inc $06D8
L_B283           ldx #$00
                 ldy ENEMY_BULLET_Y
L_B288           lda MISSILE_GFX,y
                 and #$FA
                 sta MISSILE_GFX,y
                 iny
                 inx
                 cpx #$03
                 bne L_B288
                 cpy #$B0
                 bcc L_B2A1
                 lda #$00
                 sta $06D8
                 beq L_B2B2
L_B2A1           sty ENEMY_BULLET_Y
L_B2A4           lda MISSILE_GFX,y
                 ora #$05
                 sta MISSILE_GFX,y
                 iny
                 inx
                 cpx #$06
                 bne L_B2A4
L_B2B2           lda $06D0
                 beq L_B2FC
                 inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
                 cmp #$03
                 bcc L_B2FC
                 lda #$00
                 sta ENEMY_MOV_TYPE+1
                 lda BIGPLANE_FIRE_TYPE
                 beq L_B2D4
                 lda #$00
                 sta BIGPLANE_FIRE_TYPE
                 cmp #$00
                 beq L_B2D7
L_B2D4           inc BIGPLANE_FIRE_TYPE
L_B2D7           lda ENEMY_X
                 clc
                 adc #$1C
                 cmp PLANE_X
                 beq L_B2F0
                 bcc L_B2ED
                 dec ENEMY_X
                 lda #$00
                 cmp #$00
                 beq L_B2F0
L_B2ED           inc ENEMY_X
L_B2F0           lda ENEMY_X
                 sta HPOSP2
                 clc
                 adc #$1E
                 sta HPOSP3
L_B2FC           ldx #$00
                 ldy ENEMY_Y
                 lda $06D0
                 bne L_B35A
                 inc ENEMY_MOV_TYPE+1
                 lda ENEMY_MOV_TYPE+1
                 cmp #$06
                 bcs L_B311
                 rts
L_B311           stx ENEMY_MOV_TYPE+1
                 inc $06D1
                 lda $06D1
                 cmp #$10
                 bcs L_B321
                 jmp L_B424
L_B321           cmp #$18
                 bcs L_B338
L_B325           lda L_B50D+6,x
                 sta PMGFX0+3,y
                 lda L_B52D+3,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$1D
                 bne L_B325
                 rts
L_B338           txa
L_B339           sta PMGFX0+3,y
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$1D
                 bne L_B339
                 sta ENEMY_MOV_TYPE
                 sta AUDC4
                 sta ENEMY_TYPE
                 lda #$11
                 sta L_542E+1
                 jsr L_67E6
                 jsr L_67E6
                 rts
L_B35A           lda M0PL
                 and #$0C
                 bne L_B368
                 lda M3PL
                 and #$0C
                 beq L_B3C0
L_B368           ldy ENEMY_MOV_TYPE+3
                 ldx #$00
L_B36D           lda MISSILE_GFX,y
                 and #$AF
                 sta MISSILE_GFX,y
                 dey
                 inx
                 cpx #$0C
                 bne L_B36D
                 lda #$00
                 sta ENEMY_MOV_TYPE+5
                 sta ENEMY_MOV_TYPE+6
                 inc $06AC
                 lda $06AC
                 cmp #$50
                 bcc L_B3A9
                 lda #$00
                 sta $06D0
                 sta $06D1
                 ldx #$00
                 ldy ENEMY_BULLET_Y
L_B39A           lda MISSILE_GFX,y
                 and #$FA
                 sta MISSILE_GFX,y
                 iny
                 inx
                 cpx #$03
                 bne L_B39A
                 rts
L_B3A9           jsr L_67B8
                 lda $06D3
                 bne L_B3B8
                 inc $06D3
                 lda #$00
                 beq L_B3C0
L_B3B8           lda $06D4
                 bne L_B3C0
                 inc $06D4
L_B3C0           lda ENEMY_MOV_TYPE+1
                 bne L_B3F0
                 lda ENEMY_MOV_TYPE
                 cmp #$01
                 bne L_B3E0
                 lda ENEMY_Y
                 cmp #$68
                 bcc L_B3D9
                 lda #$02
                 sta ENEMY_MOV_TYPE
                 rts
L_B3D9           inc ENEMY_Y
                 lda #$00
                 beq L_B3F0
L_B3E0           lda ENEMY_Y
                 cmp #$28
                 bcs L_B3ED
                 lda #$01
                 sta ENEMY_MOV_TYPE
                 rts
L_B3ED           dec ENEMY_Y
L_B3F0           ldx #$00
                 ldy ENEMY_Y
                 lda BIGPLANE_FIRE_TYPE
                 bne L_B40D
L_B3FA           lda BIG_PLANE_GFX1C,x
                 sta PMGFX0+3,y
                 lda BIG_PLANE_GFX2C+5,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$1D
                 bne L_B3FA
                 rts
L_B40D           lda BIG_PLANE_GFX3C+2,x
                 sta PMGFX0+3,y
                 lda BIG_PLANE_GFX4C+7,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$1D
                 bne L_B40D
                 rts
                 nop
                 nop
                 nop
                 nop
L_B424           stx ENEMY_MOV_TYPE+1
                 lda #$0F
                 sta AUDC4
                 lda $06D1
                 sta AUDF4
                 lda $06D2
                 bne L_B44D
L_B437           lda L_B4D5+4,x
                 sta PMGFX0+3,y
                 lda L_B4F5+1,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$1D
                 bne L_B437
                 inc $06D2
                 rts
L_B44D           lda BIG_PLANE_GFX1C,x
                 sta PMGFX0+3,y
                 lda BIG_PLANE_GFX2C+5,x
                 sta PMGFX1,y
                 iny
                 inx
                 cpx #$1D
                 bne L_B44D
                 lda #$00
                 sta $06D2
                 rts
BIG_PLANE_GFX1C  .byte $00, $0F, $1F, $1F, $1F, $0E, $01, $01
                 .byte $01, $01, $01, $01, $13, $7F, $FF, $FF
                 .byte $EE, $FE, $EF, $7F, $32, $03, $62, $03
BIG_PLANE_GFX2C  .byte $01, $01, $00, $06, $00, $00, $F0, $F8
                 .byte $F8, $F8, $70, $80, $80, $80, $80, $80
                 .byte $80, $C8, $FE, $FF, $FF, $77, $7F, $F7
                 .byte $FE, $4C, $C0, $46, $C0, $80, $80, $00
BIG_PLANE_GFX3C  .byte $60, $00, $00, $0F, $1F, $1F, $1F, $0E
                 .byte $01, $01, $01, $01, $01, $01, $13, $7F
                 .byte $FF, $FF, $EE, $FE, $EF, $7F, $32, $03
BIG_PLANE_GFX4C  .byte $1A, $03, $01, $01, $00, $01, $00, $00
                 .byte $F0, $F8, $F8, $F8, $70, $80, $80, $80
                 .byte $80, $80, $80, $C8, $FE, $FF, $FF, $77
                 .byte $7F, $F7, $FE, $4C, $C0, $58, $C0, $80
L_B4D5           .byte $80, $00, $80, $00, $00, $0F, $10, $10
                 .byte $10, $0E, $01, $01, $01, $01, $01, $01
                 .byte $02, $7F, $80, $80, $80, $80, $80, $7F
                 .byte $02, $02, $02, $02, $01, $01, $00, $00
L_B4F5           .byte $00, $00, $F0, $08, $08, $08, $70, $80
                 .byte $80, $80, $80, $80, $80, $40, $FE, $01
                 .byte $01, $01, $01, $01, $FE, $40, $40, $40
L_B50D           .byte $40, $80, $80, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $44, $AA, $AA, $2A, $4A, $8A
                 .byte $8A, $AA, $E4, $00, $00, $00, $00, $00
L_B52D           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $44
                 .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $44
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00
L_B550           lda $06D7
                 beq L_B55C
                 lda #$00
                 sta $06D7
                 beq L_B55F
L_B55C           inc $06D7
L_B55F           lda $06D3
                 beq L_B5C1
                 cmp #$01
                 bne L_B580
                 lda #$ED
                 sta PCOLR0
                 lda PLANE_X
                 sec
                 sbc #$01
                 sta BIGPLANE_FIRE_TYPE+1
                 inc $06D3
                 lda #$00
                 sta $06D5
                 beq L_B5C1
L_B580           ldx #$00
                 lda ENEMY_Y
                 clc
                 adc #$10
                 tay
                 inc $06D5
                 lda $06D5
                 cmp #$04
                 bcc L_B5A2
                 txa
L_B594           sta L_33FE+2,y
                 iny
                 inx
                 cpx #$08
                 bne L_B594
                 sta $06D3
                 beq L_B5C1
L_B5A2           lda $06D7
                 bne L_B5B5
L_B5A7           lda L_B620,x
                 sta L_33FE+2,y
                 iny
                 inx
                 cpx #$08
                 bne L_B5A7
                 beq L_B5C1
L_B5B5           lda L_B628,x
                 sta L_33FE+2,y
                 iny
                 inx
                 cpx #$08
                 bne L_B5B5
L_B5C1           lda $06D4
                 bne L_B5C7
                 rts
L_B5C7           cmp #$01
                 bne L_B5E0
                 sta $06D6
                 lda #$ED
                 sta PCOLR1
                 lda PLANE_X
                 clc
                 adc #$0A
                 sta BIGPLANE_FIRE_TYPE+2
                 inc $06D4
                 rts
L_B5E0           ldx #$00
                 lda ENEMY_Y
                 clc
                 adc #$10
                 tay
                 inc $06D6
                 lda $06D6
                 cmp #$05
                 bcc L_B601
                 txa
L_B5F4           sta L_3500,y
                 iny
                 inx
                 cpx #$08
                 bne L_B5F4
                 sta $06D4
                 rts
L_B601           lda $06D7
                 bne L_B613
L_B606           lda L_B620,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$08
                 bne L_B606
                 rts
L_B613           lda L_B628,x
                 sta L_3500,y
                 iny
                 inx
                 cpx #$08
                 bne L_B613
                 rts
L_B620           .byte $00, $00, $0E, $1B, $1F, $1B, $0E, $00
L_B628           .byte $00, $10, $44, $82, $82, $44, $10, $00
                 .byte $00, $77, $60, $74, $74, $60, $60, $60
                 .byte $28, $44, $44, $40, $4C, $44, $44, $28
                 .byte $44, $44, $44, $6C, $6C, $44, $44, $44
                 .byte $7C, $54, $10, $10, $10, $10, $54, $7C
                 .byte $63, $63, $36, $14, $14, $36, $63, $63
                 .byte $63, $63, $76, $70, $76, $63, $63, $63
                 .byte $60, $60, $60, $60, $60, $63, $77, $77
                 .byte $77, $6B, $6B, $6B, $6B, $63, $63, $63
                 .byte $36, $77, $63, $63, $63, $63, $63, $63
                 .byte $36, $77, $63, $63, $63, $63, $77, $36
                 .byte $68, $44, $44, $44, $68, $40, $40, $40
                 .byte $36, $77, $63, $63, $63, $67, $77, $37
                 .byte $68, $44, $44, $44, $68, $68, $48, $44
                 .byte $37, $77, $60, $76, $37, $03, $77, $76
                 .byte $77, $77, $55, $14, $14, $14, $14, $14
L_B6A8           .byte $44, $44, $44, $44, $44, $44, $44, $28
                 .byte $63, $63, $63, $63, $63, $36, $36, $1C
                 .byte $63, $63, $63, $6B, $6B, $6B, $6B, $77
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $63, $63, $63, $36, $36, $1C, $1C, $1C
                 lda ENEMY_TYPE
                 bne L_B6D6
                 rts
L_B6D6           jsr L_4950
                 jsr L_4902+1
                 lda ENEMY_MOV_TYPE
                 bne L_B6EA
                 jsr L_55CC+2
                 jsr L_55B7
                 jsr L_55B7
L_B6EA           jsr L_5760
L_B6ED           lda VCOUNT
                 cmp #$58
                 bcc L_B6ED
                 ldx #$26
                 lda L_9D05+3,x
                 sta L_9D05+4,x
                 lda L_9D2D+3,x
                 sta TSLNUM,x
