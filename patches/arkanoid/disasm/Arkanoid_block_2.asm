
; BLOCK 2 Arkanoid.xex

                 org $4B00

                 .byte $09
                 lda LNFLG
                 cmp #$4E
                 bcs L_4B0A
                 jmp L_4B1A
L_4B0A           inc CASINI+1
                 lda LNFLG
                 sec
                 sbc #$28
                 sta LNFLG
                 bcs L_4AFB
                 dec NGFLAG
                 jmp L_4AFB
L_4B1A           lda LNFLG
                 sec
                 sbc #$2F
                 sta LNFLG
                 lda (FRE+4),y
                 and #$01
                 bne L_4B29
                 dec LNFLG
L_4B29           lda LNFLG
                 and #$03
                 clc
                 adc #$38
                 sta L_4A01
                 cmp #$3B
                 bne L_4B3E
                 lda #$38
                 sta FPTR2+1
                 jmp L_4B43
L_4B3E           clc
                 adc #$01
                 sta FPTR2+1
L_4B43           lda CASINI+1
                 clc
                 adc #$01
                 and #$03
                 tay
L_4B4B           cpy #$00
                 beq L_4B63
                 lda L_4A01
                 clc
                 adc #$04
                 sta L_4A01
                 lda FPTR2+1
                 clc
                 adc #$04
                 sta FPTR2+1
                 dey
                 jmp L_4B4B
L_4B63           ldy L_4A01+1
                 jsr L_4E4C
                 lda (FRE+4),y
                 cmp #$01
                 beq L_4B7F
                 cmp #$02
                 beq L_4B7F
                 cmp #$9D
                 beq L_4B7F
                 cmp #$9E
                 beq L_4B7F
                 jsr L_3923
                 rts
L_4B7F           lda FRE+5
                 sta NGFLAG
                 lda FRE+4
                 sta LNFLG
                 tya
                 clc
                 adc LNFLG
                 sta LNFLG
                 bcc L_4B91
                 inc NGFLAG
L_4B91           lda (FRE+4),y
                 and #$01
                 bne L_4B9F
                 lda LNFLG
                 bne L_4B9D
                 dec NGFLAG
L_4B9D           dec LNFLG
L_4B9F           stx FRE+2
                 ldy #$00
                 lda (LNFLG),y
                 sta CASINI
                 ldx #$00
                 ldy #$00
L_4BAB           lda L_4C3F+1,y
                 clc
                 adc L_4C3F+2,y
                 bne L_4BD2
                 lda LNFLG
                 sta L_4C3F+1,y
                 lda NGFLAG
                 sta L_4C3F+2,y
                 lda L_3FFD+3
                 lsr
                 lsr
                 lsr
                 clc
                 adc #$02
                 sta L_4C3F+3,y
                 lda CASINI
                 jsr L_2A53
                 jmp L_4BDE
L_4BD2           iny
                 iny
                 iny
                 iny
                 inx
                 cpx #$1E
                 bne L_4BAB
                 jmp L_4BF1
L_4BDE           ldy #$00
                 lda (LNFLG),y
                 and #$80
                 ora #$09
                 sta (LNFLG),y
                 iny
                 lda (LNFLG),y
                 and #$80
                 ora #$0A
                 sta (LNFLG),y
L_4BF1           ldx FRE+2
                 ldy L_4A01+1
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_4BFF           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_4C3F           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_4CCF           .byte $00, $00, $00, $00, $00, $00, $3C, $00
L_4CD7           ldx #$00
                 ldy L_4CCF+6
                 cpy #$3C
                 bmi L_4CE2
                 ldy #$00
L_4CE2           lda L_4C3F+2,y
                 beq L_4D0D
                 sta EEXP
                 lda L_4C3F+1,y
                 sta FRX
                 sty L_4CCF+7
                 ldy #$00
                 lda (FRX),y
                 cmp #$11
                 beq L_4D1A
                 cmp #$91
                 beq L_4D1A
                 clc
                 adc #$02
                 sta (FRX),y
                 iny
                 lda (FRX),y
                 clc
                 adc #$02
                 sta (FRX),y
                 ldy L_4CCF+7
L_4D0D           iny
                 iny
                 iny
                 iny
                 inx
                 cpx #$05
                 bne L_4CE2
                 sty L_4CCF+6
                 rts
L_4D1A           ldy L_4CCF+7
                 lda L_4C3F+4,y
                 sta FR1
                 ldy #$00
                 sta (FRX),y
                 iny
                 clc
                 adc #$01
                 sta (FRX),y
                 ldy L_4CCF+7
                 lda #$00
                 sta L_4C3F+1,y
                 sta L_4C3F+2,y
                 sta L_4C3F+3,y
                 sta L_4C3F+4,y
                 lda FR1
                 cmp #$9D
                 beq L_4D0D
                 cmp #$9E
                 beq L_4D0D
                 jmp L_4D91
L_4D4A           ldx #$30
                 ldy #$9B
                 stx FRX
                 sty EEXP
                 ldy #$6A
                 stx NSIGN
                 sty ESIGN
                 ldx #$00
L_4D5A           ldy #$00
L_4D5C           lda (FRX),y
                 cmp #$01
                 beq L_4D6B
                 cmp #$9D
                 beq L_4D6B
                 lda #$00
                 jmp L_4D74
L_4D6B           lda L_3FFD+3
                 lsr
                 lsr
                 lsr
                 clc
                 adc #$02
L_4D74           sta (NSIGN),y
                 iny
                 iny
                 cpy #$1A
                 bne L_4D5C
                 lda FRX
                 clc
                 adc #$28
                 sta FRX
                 sta NSIGN
                 bcc L_4D8B
                 inc EEXP
                 inc ESIGN
L_4D8B           inx
                 cpx #$12
                 bne L_4D5A
                 rts
L_4D91           lda EEXP
                 sec
                 sbc #$31
                 sta FR1+1
                 lda FRX
                 sta FR1
                 ldy #$00
                 lda (FR1),y
                 sec
                 sbc #$01
                 sta (FR1),y
                 cmp #$01
                 beq L_4DAF
                 ldy L_4CCF+7
                 jmp L_4D0D
L_4DAF           lda #$03
                 sta (FRX),y
                 iny
                 lda #$04
                 sta (FRX),y
                 ldy L_4CCF+7
                 jmp L_4D0D
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_4DFE           .byte $00, $00, $07, $69, $6A, $00, $00, $00
L_4E06           .byte $7C, $FE, $FE, $FE, $7C, $00, $00, $00
                 .byte $06, $05, $06, $05, $06, $00, $00, $00
                 .byte $07, $00, $00, $07, $04, $07, $01, $00
                 .byte $07, $00, $00, $00, $07, $04, $04, $00
                 .byte $07, $04, $06, $04, $07, $00, $00, $00
                 .byte $00, $06, $05, $05, $05, $06, $00, $00
                 .byte $04, $04, $04, $04, $07, $00, $00, $00
L_4E3E           .byte $04, $04, $00, $00, $07, $05, $07, $E6
                 .byte $F4, $B2, $76, $76, $34
                 php
L_4E4C           lda L_4DFE+6
                 bne L_4E7E
                 lda (FRE+4),y
                 cmp #$01
                 beq L_4E7E
                 cmp #$02
                 beq L_4E7E
                 cmp #$9D
                 beq L_4E7E
                 cmp #$9E
                 beq L_4E7E
                 cmp #$09
                 beq L_4E7E
                 bmi L_4E76
                 cmp #$12
                 beq L_4E7E
                 bpl L_4E76
                 jmp L_4E7E
L_4E72           asl WARMST
L_4E74           php
L_4E75           brk
L_4E76           lda L_4DFE+2
                 beq L_4E7F
                 dec L_4DFE+2
L_4E7E           rts
L_4E7F           stx L_4E72+1
                 sty L_4E74
                 lda CASINI+1
                 clc
                 asl
                 asl
                 clc
                 adc #$07
                 tay
                 lda LNFLG
                 clc
                 asl
                 asl
                 clc
                 adc #$4C
                 sta HPOSP3
                 clc
                 adc #$01
                 sta HPOSM1
                 sta L_4DFE+3
                 clc
                 adc #$02
                 sta HPOSM0
                 sty L_4DFE+4
                 ldx #$00
L_4EAD           lda L_4DFE+7,x
                 sta L_6F7A+6,y
                 iny
                 inx
                 cpx #$07
                 bne L_4EAD
                 lda #$01
                 sta GPRIOR
L_4EBE           lda VCOUNT
                 and #$07
                 cmp #$07
                 beq L_4EBE
                 sta L_7FFA+4
                 clc
                 asl
                 asl
                 asl
                 tax
                 clc
                 adc #$06
                 sta L_4E72
                 ldy L_4DFE+4
L_4ED8           lda L_4E06+7,x
                 sta L_6D7A+6,y
                 iny
                 inx
                 cpx L_4E72
                 bne L_4ED8
                 ldx L_7FFA+4
                 lda L_4E3E+7,x
                 sta PCOLR3
                 lda #$01
                 sta L_4DFE+6
                 ldx L_4E72+1
                 ldy L_4E74
                 rts
L_4EFA           stx L_4E72+1
                 sty L_4E74
                 lda #$0D
                 sta L_4F5B+1
                 sta L_4F78+1
                 sta L_4F7F+1
                 sta L_4F83+1
                 sta L_4F91+1
                 lda L_4FFE+4
                 nop
                 nop
                 lda L_4DFE+6
                 beq L_4F99
                 inc L_4E75
                 lda L_4E75
                 cmp #$02
                 bcc L_4F99
                 lda #$00
                 sta L_4E75
                 lda L_7FFA+4
                 clc
                 asl
                 asl
                 asl
                 clc
                 adc L_4F5B+1
                 sta L_4F5B+1
                 sta L_4F78+1
                 sta L_4F7F+1
                 sta L_4F83+1
                 sta L_4F91+1
                 ldx #$00
                 ldy L_4DFE+4
                 cpy #$6A
                 bcs L_4F9A
                 iny
                 sty L_4DFE+4
L_4F51           lda L_4DFE+7,x
                 sta L_6F7A+6,y
                 cpx #$06
                 bcs L_4F61
L_4F5B           lda L_4E06+7,x
                 sta L_6D7A+6,y
L_4F61           iny
                 inx
                 cpx #$09
                 bne L_4F51
                 inc L_4FBE
                 lda L_4FBE
                 cmp #$03
                 bcc L_4F99
                 lda #$00
                 sta L_4FBE
                 ldy #$07
L_4F78           lda L_4E06+7,y
                 sta L_4DFE+6
                 dey
L_4F7F           lda L_4E06+7,y
                 iny
L_4F83           sta L_4E06+7,y
                 dey
                 dey
                 cpy #$00
                 bne L_4F7F
                 ldy #$01
                 lda L_4DFE+6
L_4F91           sta L_4E06+7,y
                 lda #$01
                 sta L_4DFE+6
L_4F99           rts
L_4F9A           ldx #$00
                 stx L_4DFE+6
                 ldy L_4DFE+4
                 dey
                 dey
L_4FA4           lda #$00
                 sta L_6D7A+6,y
                 sta L_6F7A+6,y
                 iny
                 inx
                 cpx #$0C
                 bne L_4FA4
                 lda VCOUNT
                 and #$07
                 clc
                 adc #$03
                 sta L_4DFE+2
                 rts
L_4FBE           .byte $01, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_4FFE           .byte $00, $00, $01, $EA, $00
                 lda L_4DFE+6
                 beq L_5015
                 lda L_4DFE+3
                 sec
                 sbc #$2C
                 cmp L_4405+4
                 beq L_501B
                 bpl L_501B
L_5015           lda L_4FFE+4
                 bne L_507F
L_501A           rts
L_501B           sec
                 sbc L_4405+4
                 cmp L_4A01+2
                 beq L_5029
                 bmi L_5029
                 jmp L_5015
L_5029           sta L_4FFE+2
                 lda L_4DFE+4
                 cmp #$63
                 bmi L_5015
                 cmp #$66
                 bpl L_5015
                 lda L_4A01+2
                 cmp #$1E
                 beq L_5047
                 lda L_4FFE+2
                 cmp #$08
                 beq L_5047
                 bmi L_5015
L_5047           lda L_4FFE+2
                 cmp L_4A01+2
                 beq L_5054
                 bmi L_5054
                 jmp L_5015
L_5054           ldy L_4DFE+4
                 dey
                 dey
                 ldx #$00
                 txa
L_505C           sta L_6D7A+6,y
                 sta L_6F7A+6,y
                 inx
                 iny
                 cpx #$0C
                 bne L_505C
                 lda #$01
                 sta L_4FFE+4
                 jmp L_5798
L_5070           .byte $00, $00, $00, $00, $00, $01, $00, $00
L_5078           .byte $00, $00, $00, $00, $00, $00, $00
L_507F           lda L_4FFE+4
                 cmp #$02
                 beq L_50C1
                 lda L_5078+5
                 bne L_5093
                 lda L_4405+6
                 beq L_5093
                 jmp L_523D
L_5093           lda L_4DFE+5
                 beq L_50AF
                 cmp #$01
                 beq L_50EB
                 cmp #$02
                 beq L_5104
                 cmp #$03
                 beq L_50B8
                 cmp #$04
                 beq L_50BB
                 cmp #$05
                 beq L_50BE
                 jmp L_2835
L_50AF           jmp L_8F2C
                 jmp L_50EB
                 jmp L_5104
L_50B8           jmp L_51F0
L_50BB           jmp L_517D
L_50BE           jmp L_521B
L_50C1           lda L_4DFE+5
                 beq L_50DB
                 cmp #$01
                 beq L_50DE
                 cmp #$02
                 beq L_5126
                 cmp #$03
                 beq L_50E4
                 cmp #$04
                 beq L_50E5
                 cmp #$05
                 beq L_50E8
                 rts
L_50DB           jmp L_501A
L_50DE           jmp L_5154
                 jmp L_5126
L_50E4           rts
L_50E5           jmp L_55E6
L_50E8           jmp L_5298
L_50EB           lda #$0F
                 sta L_46F0+3
                 sta L_46F0+4
                 sta L_46F0+4
                 lda #$00
                 sta L_5070
                 sta L_5070+1
                 lda #$02
                 sta L_4FFE+4
                 rts
L_5104           lda #$B4
                 sta L_5070+1
                 lda L_5070+3
                 beq L_5153
                 lda #$01
                 sta L_5070+2
                 jsr L_469E
                 sec
                 sbc #$30
                 sec
                 sbc L_4405+4
                 sta L_5070+4
                 lda #$02
                 sta L_4FFE+4
                 rts
L_5126           lda L_5070+3
                 beq L_5153
                 ldx #$97
                 lda L_4607+4
                 cmp #$63
                 beq L_5136
                 ldx #$BF
L_5136           stx FRE+2
                 lda L_4405+4
                 clc
                 adc #$30
                 clc
                 adc L_5070+4
                 sta HPOSP0
                 sta L_4607+1
                 sec
                 sbc #$30
                 lsr
                 lsr
                 clc
                 adc FRE+2
                 sta L_46C0
L_5153           rts
L_5154           lda L_5070
                 cmp #$FF
                 bne L_515E
                 inc L_5070+1
L_515E           inc L_5070
                 lda L_5070+1
                 cmp #$05
                 beq L_5169
                 rts
L_5169           lda #$00
                 sta L_4FFE+4
                 nop
                 nop
                 nop
                 lda #$04
                 sta L_46F0+3
                 sta L_46F0+4
                 sta L_46F0+4
                 rts
L_517D           lda #$02
                 sta L_4FFE+4
                 lda L_46C0
                 sta L_46C0+2
                 sta L_46C0+4
                 lda L_46C0+1
                 sta L_46C0+3
                 sta L_46C0+5
                 lda L_4607+1
                 sta L_4607+2
                 sta L_4607+3
                 lda L_4607+4
                 sta L_4607+5
                 sta L_4607+6
                 lda #$00
                 sta L_46D8+5
                 sta L_46D8+6
                 sta L_46D8+2
                 sta L_46D8+3
                 lda VCOUNT
                 and #$07
                 sta L_46C8+2
                 nop
                 nop
                 nop
                 lda VCOUNT
                 and #$07
                 sta L_46C8+3
                 ldx #$00
                 lda L_46C0+6
                 eor #$0C
                 sta L_46C0+7
                 lda L_46C0+6
                 eor #$03
                 sta L_46C8
                 lda #$01
                 sta L_5070+5
                 sta L_5070+6
                 sta L_5070+7
                 lda #$00
                 sta L_46F0+3
                 sta L_46F0+4
                 sta L_46F0+5
                 rts
L_51F0           lda #$01
                 jsr L_284B
                 lda L_5078
                 cmp #$04
                 bcs L_5200
                 inc L_5078
                 rts
L_5200           lda #$00
                 sta L_5078
                 lda L_4405+6
                 cmp #$02
                 beq L_5210
                 inc L_4405+6
                 rts
L_5210           lda #$02
                 sta L_4FFE+4
                 lda #$1E
                 sta L_4A01+2
                 rts
L_521B           lda #$02
                 sta L_4FFE+4
                 lda #$03
                 sta L_4405+6
                 lda #$00
                 sta L_5078+1
                 sta L_5078+2
                 sta L_5078+3
                 sta L_5078+4
                 sta L_5270+7
                 sta L_5278
                 rts
L_523A           jmp L_5700
L_523D           jmp L_5777
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_5270           .byte $84, $84, $84, $00, $00, $00, $00, $00
L_5278           .byte $00, $00, $01, $00, $00, $00, $00, $00
L_5280           .byte $01, $01
L_5282           lda L_4517
                 bne L_5292
                 ldx L_5278+2
                 beq L_5292
                 lda #$00
                 sta L_5278+2
                 rts
L_5292           sta L_5278+2
                 lda #$01
                 rts
L_5298           jsr L_5282
                 bne L_52EF
                 lda L_5270+7
                 clc
                 adc L_5278
                 beq L_52AD
                 cmp #$01
                 beq L_52AD
                 jmp L_52EF
L_52AD           ldx #$00
L_52AF           lda L_5078+1,x
                 bne L_52EA
                 lda L_4405+4
                 clc
                 adc #$3C
                 sta L_5078+1,x
                 jsr L_281B
                 lda #$0F
                 sta PCOLR1,x
                 lda #$64
                 sta L_5078+3,x
                 lda #$01
                 sta L_5270+7,x
                 lda #$9E
                 sta L_5278+6,x
                 lda L_4405+4
                 clc
                 adc #$08
                 lsr
                 lsr
                 clc
                 adc #$99
                 sta L_5278+3,x
                 bcc L_52EF
                 inc L_5278+6,x
                 jmp L_52EF
L_52EA           inx
                 cpx #$02
                 bne L_52AF
L_52EF           ldy #$80
                 lda #$6E
                 ldx L_5538
                 cpx #$01
                 bne L_52FE
                 ldy #$00
                 lda #$6F
L_52FE           sty LNFLG
                 sta NGFLAG
                 lda L_5270+7,x
                 beq L_5349
                 cmp #$02
                 bne L_531D
                 jsr L_55A7
                 stx FRE+2
                 lda L_5560,x
                 cmp #$04
                 bne L_531A
                 jsr L_5493
L_531A           jmp L_5349
L_531D           lda L_5078+3,x
                 tay
                 dey
                 dey
                 dey
                 dey
                 tya
                 sta L_5078+3,x
                 stx FRE+2
                 ldx #$00
L_532D           lda L_5270,x
                 sta (LNFLG),y
                 inx
                 iny
                 cpx #$07
                 bne L_532D
                 ldx FRE+2
                 jsr L_5352
                 ldx FRE+2
                 lda FRE+4
                 sta L_5278+3,x
                 lda FRE+5
                 sta L_5278+6,x
L_5349           lda L_5538
                 eor #$01
                 sta L_5538
                 rts
L_5352           lda L_5278+3,x
                 sta FRE+4
                 lda L_5278+6,x
                 sta FRE+5
                 lda L_5078+3,x
                 and #$03
                 bne L_536E
                 lda FRE+4
                 sec
                 sbc #$28
                 sta FRE+4
                 bcs L_536E
                 dec FRE+5
L_536E           ldy #$00
                 sty L_5280+1
L_5373           sty FRE+3
                 lda (FRE+4),y
                 bne L_539F
L_5379           ldy FRE+3
                 iny
                 cpy #$02
                 bne L_5373
                 lda L_5280+1
                 beq L_5394
                 ldx FRE+2
                 lda #$02
                 sta L_5270+7,x
                 lda #$00
                 sta L_5560,x
                 sta L_5560+2,x
L_5394           rts
L_5395           ldx FRE+2
                 lda #$01
                 sta L_5280+1
                 jmp L_5379
L_539F           cmp #$37
                 bmi L_53AA
                 cmp #$60
                 bpl L_53AA
                 jmp L_5379
L_53AA           cmp #$9D
                 bne L_53B1
                 jmp L_54B7
L_53B1           cmp #$9E
                 bne L_53B8
                 jmp L_54B7
L_53B8           cmp #$01
                 bne L_53BF
                 jmp L_54B7
L_53BF           cmp #$02
                 bne L_53C6
                 jmp L_54B7
L_53C6           cmp #$83
                 beq L_5406
                 cmp #$84
                 beq L_5406
                 and #$7F
                 cmp #$13
                 bmi L_53DB
                 cmp #$19
                 bpl L_53DB
L_53D8           jmp L_5395
L_53DB           cmp #$32
                 bmi L_53E6
                 cmp #$39
                 bpl L_53E6
                 jmp L_53D8
L_53E6           cmp #$60
                 bmi L_53F4
                 cmp #$7A
                 bpl L_53F4
                 jsr L_3CFC+7
                 jmp L_5493
L_53F4           cmp #$08
                 beq L_5406
                 bcc L_5406
                 cmp #$13
                 beq L_5395
                 bcs L_5403
                 jmp L_5395
L_5403           jmp L_5379
L_5406           lda L_5078+1,x
                 and #$FC
                 lsr
                 lsr
                 clc
                 adc #$01
                 and #$03
                 sta L_5280
                 tya
                 clc
                 adc L_5280
                 sta L_5280
                 lda FRE+4
                 sta CASINI
                 lda FRE+5
                 sta CASINI+1
                 ldy FRE+3
                 lda (CASINI),y
                 and #$01
                 bne L_5438
                 dec L_5280
                 lda CASINI
                 bne L_5436
                 dec CASINI+1
L_5436           dec CASINI
L_5438           lda L_5280
                 and #$03
                 clc
                 adc #$38
                 sta RAMLO
                 lda RAMLO
                 cmp #$3B
                 bne L_544F
                 lda #$38
                 sta RAMLO+1
                 jmp L_5454
L_544F           clc
                 adc #$01
                 sta RAMLO+1
L_5454           lda L_5078+3,x
                 and #$FC
                 lsr
                 lsr
                 sec
                 sbc #$02
                 and #$03
                 clc
                 asl
                 asl
                 clc
                 adc RAMLO
                 sta RAMLO
                 lda L_5078+3,x
                 and #$FC
                 lsr
                 lsr
                 sec
                 sbc #$02
                 and #$03
                 clc
                 asl
                 asl
                 clc
                 adc RAMLO+1
                 sta RAMLO+1
                 ldy FRE+3
                 lda RAMLO
                 sta (CASINI),y
                 iny
                 lda RAMLO+1
                 sta (CASINI),y
                 jsr L_29D9
                 nop
                 lda #$01
                 sta L_5280+1
                 jmp L_5532
L_5493           lda #$00
                 sta L_5270+7,x
                 sta L_5278+3,x
                 sta L_5278+6,x
                 lda L_5078+3,x
                 tay
                 ldx #$00
                 lda #$00
L_54A6           sta (LNFLG),y
                 iny
                 inx
                 cpx #$06
                 bne L_54A6
                 ldx FRE+2
                 sta L_5078+1,x
                 sta L_5078+3,x
                 rts
L_54B7           lda FRE+4
                 sta RAMLO
                 lda FRE+5
                 sta RAMLO+1
                 lda #$01
                 sta L_5280+1
                 lda (FRE+4),y
                 and #$01
                 bne L_54D2
                 lda RAMLO
                 bne L_54D0
                 dec RAMLO+1
L_54D0           dec RAMLO
L_54D2           tya
                 clc
                 adc RAMLO
                 sta RAMLO
                 bcc L_54DC
                 inc RAMLO+1
L_54DC           ldy #$00
                 lda (RAMLO),y
                 sta CASINI
                 ldx #$00
                 ldy #$00
L_54E6           lda L_4C3F+2,y
                 bne L_5522
                 lda RAMLO
                 sta L_4C3F+1,y
                 lda RAMLO+1
                 sta L_4C3F+2,y
                 lda L_3FFD+3
                 lsr
                 lsr
                 lsr
                 clc
                 adc #$02
                 sta L_4C3F+3,y
                 lda CASINI
                 sta L_4C3F+4,y
                 lda #$01
                 sta L_5280+1
                 ldy #$00
                 lda (RAMLO),y
                 and #$80
                 ora #$09
                 sta (RAMLO),y
                 iny
                 clc
                 adc #$01
                 sta (RAMLO),y
                 ldx FRE+2
                 ldy FRE+3
                 jmp L_5379
L_5522           iny
                 iny
                 iny
                 iny
                 inx
                 cpx #$1E
                 bne L_54E6
                 ldx FRE+2
                 ldy FRE+3
                 jmp L_5379
L_5532           jsr L_3991
                 jmp L_5379
L_5538           .byte $01, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_5560           .byte $04, $04, $00, $00, $01, $00, $36, $94
                 .byte $1C, $AE, $01, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $A8, $58, $A2, $00, $01, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $80, $50, $A8, $02, $00, $80, $01, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $40, $00, $00, $00, $01, $00, $80
                 .byte $04, $00, $00, $00, $40, $00, $00
L_55A7           stx L_5560+4
                 sty L_5560+5
                 lda L_5560+2,x
                 cmp #$01
                 bcs L_55B8
                 inc L_5560+2,x
                 rts
L_55B8           lda #$00
                 sta L_5560+2,x
                 lda L_5078+3,x
                 tay
                 lda L_5560,x
                 clc
                 asl
                 asl
                 asl
                 asl
                 inc L_5560,x
                 tax
                 clc
                 adc #$06
                 sta L_5560+6
L_55D3           lda L_5560+7,x
                 sta (LNFLG),y
                 iny
                 inx
                 cpx L_5560+6
                 bne L_55D3
                 ldx L_5560+4
                 ldy L_5560+5
                 rts
L_55E6           ldx #$00
                 lda #$00
                 sta LNFLG
                 lda #$6E
                 sta NGFLAG
L_55F0           lda #$00
                 ldy #$00
L_55F4           clc
                 adc L_5070+5,y
                 iny
                 cpy #$03
                 bne L_55F4
                 sta CASINI+1
                 lda L_4607+4,x
                 cmp #$68
                 bne L_5628
                 lda CASINI+1
                 cmp #$01
                 beq L_5639
                 lda #$00
                 sta L_5070+5,x
                 sta HPOSP0,x
                 lda L_4607+4,x
                 tay
                 stx CASINI
                 ldx #$00
L_561C           lda #$00
                 sta (LNFLG),y
                 iny
                 inx
                 cpx #$06
                 bne L_561C
                 ldx CASINI
L_5628           lda LNFLG
                 clc
                 adc #$80
                 sta LNFLG
                 bcc L_5633
                 inc NGFLAG
L_5633           inx
                 cpx #$03
                 bne L_55F0
                 rts
L_5639           ldx #$00
L_563B           lda L_5070+5,x
                 bne L_5646
                 inx
                 cpx #$03
                 bne L_563B
                 rts
L_5646           lda #$00
                 sta L_5070+5,x
                 sta L_4FFE+4
                 nop
                 nop
                 nop
                 lda #$01
                 sta L_5070+5
                 lda L_4607+4,x
                 sta L_4607+4
                 lda L_4607+1,x
                 sta L_4607+1
                 lda L_46C0+6,x
                 sta L_46C0+6
                 lda L_46C8+1,x
                 sta L_46C8+1
                 lda L_46D8+1,x
                 sta L_46D8+1
                 lda L_46D8+4,x
                 sta L_46D8+4
                 lda L_46F0+6,x
                 sta L_46F0+6
                 lda L_46F8+1,x
                 sta L_46F8+1
                 txa
                 clc
                 asl
                 tay
                 lda L_46C0,y
                 sta L_46C0
                 iny
                 lda L_46C0,y
                 sta L_46C0+1
                 lda #$00
                 sta LNFLG
                 lda #$6E
                 sta NGFLAG
                 txa
                 tay
L_56A1           cpy #$00
                 beq L_56B4
                 lda LNFLG
                 clc
                 adc #$80
                 sta LNFLG
                 bcc L_56B0
                 inc NGFLAG
L_56B0           dey
                 jmp L_56A1
L_56B4           lda L_4607+4,y
                 tay
                 ldx #$00
L_56BA           lda #$00
                 sta (LNFLG),y
                 iny
                 inx
                 cpx #$06
                 bne L_56BA
                 lda #$04
                 sta L_46F0+3
                 sta L_46F0+4
                 sta L_46F0+5
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_5700           nop
                 nop
                 nop
                 jsr L_2CB0
                 lda #$00
                 sta L_4DFE+6
                 lda VCOUNT
                 and #$07
                 clc
                 adc #$02
                 sta L_4DFE+2
                 ldx #$00
                 txa
                 jsr L_2C83
                 nop
                 nop
                 nop
                 nop
                 nop
                 nop
                 nop
                 nop
                 nop
                 sta HPOSP1
                 sta HPOSP2
                 sta HPOSP3
                 jsr L_2CB0
                 nop
                 nop
                 nop
                 nop
                 nop
                 nop
                 nop
                 nop
                 jsr L_5639
                 lda #$00
                 sta L_46F0
                 sta L_46F0+1
                 sta L_46F0+2
                 sta L_5078+5
                 sta L_5078+6
                 sta L_5070+6
                 sta L_5070+7
                 lda #$01
                 sta L_5070+5
                 sta L_4FFE+4
                 lda #$1A
                 sta L_4A01+2
                 jsr L_5FC0
                 ldx #$00
                 ldy L_4607+4
L_5768           lda L_45FF+1,x
                 sta L_6DFA+6,y
                 iny
                 inx
                 cpx #$05
                 bne L_5768
                 jmp L_5015
L_5777           lda L_4405+6
                 cmp #$03
                 bne L_5784
                 lda #$00
                 sta L_4405+6
                 rts
L_5784           lda L_5078+6
                 cmp #$04
                 beq L_578F
                 inc L_5078+6
                 rts
L_578F           lda #$00
                 sta L_5078+6
                 dec L_4405+6
                 rts
L_5798           ldx #$03
                 jsr L_3BB0+4
                 jmp L_523A
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_57B0           .byte $00, $00, $00, $00, $00, $00, $00, $00
L_57B8           .byte $00, $00, $00, $00, $02, $02, $02, $02
L_57C0           .byte $10, $18, $02, $00, $1B, $F3, $C3, $35
                 .byte $C3, $F3, $36, $C3, $FF, $37, $03, $00
                 .byte $44, $00, $0F, $45, $40, $44, $46, $03
                 .byte $00, $44, $00, $0F, $45, $42, $46, $46
L_57E0           .byte $00, $10, $11, $00, $00, $00, $00, $00
L_57E8           .byte $00, $02, $18, $03
L_57EC           lda #$00
                 sta L_57E0+4
                 lda L_5C64+5,x
                 cmp #$06
                 bne L_57FE
                 jsr L_3D2F
                 jmp L_5822
L_57FE           lda L_57B0,x
                 and #$07
                 clc
                 asl
                 asl
                 asl
                 asl
                 asl
                 sta L_57E0+3
                 lda L_57B0,x
                 and #$07
                 clc
                 asl
                 asl
                 asl
                 asl
                 clc
                 adc L_57E0+3
                 sta L_57E0+3
                 bcc L_5822
                 inc L_57E0+4
L_5822           lda #$00
                 sta FRE+4
                 lda #$60
                 sta FRE+5
                 lda L_57B0+3,x
                 and #$07
                 sta L_57E0
                 clc
                 adc #$10
                 sta L_57E0+1
                 lda L_57B8+4,x
                 stx L_57B8+7
                 tax
L_583F           cpx #$00
                 beq L_5854
                 inc FRE+5
                 lda FRE+4
                 clc
                 adc #$80
                 sta FRE+4
                 bcc L_5850
                 inc FRE+5
L_5850           dex
                 jmp L_583F
L_5854           ldx L_57B8+7
                 lda FRE+5
                 clc
                 adc L_57E0+4
                 sta FRE+5
                 lda FRE+4
                 clc
                 adc L_57E0+3
                 sta FRE+4
                 bcc L_586B
                 inc FRE+5
L_586B           txa
                 clc
                 asl
                 asl
                 asl
                 asl
                 asl
                 asl
                 sta FRE+2
                 lda #$8B
                 sta FRE+3
                 txa
                 clc
                 nop
                 asl
                 asl
                 asl
                 clc
                 adc FRE+2
                 clc
                 adc #$00
                 sta FRE+2
                 bcc L_588B
                 inc FRE+3
L_588B           stx L_57B8+7
                 sty L_57C0
                 txa
                 clc
                 asl
                 asl
                 asl
                 clc
                 adc L_57B8+7
                 tax
                 clc
                 adc #$09
                 sta L_57C0+4
L_58A1           ldy #$00
                 sty L_57E0+2
                 sty RAMLO
                 lda FRE+4
                 sta LNFLG
                 lda FRE+5
                 clc
                 adc #$32
                 sta NGFLAG
L_58B3           lda L_57C0+5,x
                 and #$7F
                 and #$E0
                 lsr
                 lsr
                 lsr
                 lsr
                 lsr
                 clc
                 adc #$88
                 sta CASINI+1
                 lda L_57C0+5,x
                 and #$7F
                 and #$1F
                 asl
                 asl
                 asl
                 sta CASINI
L_58D0           lda L_57E0+2
                 cmp L_57E0
                 beq L_58F0
                 bcs L_58EB
L_58DA           sty L_57C0
                 tya
                 and #$07
                 tay
                 lda (CASINI),y
                 ldy L_57C0
                 sta (FRE+2),y
                 jmp L_5912
L_58EB           cmp L_57E0+1
                 bcs L_58DA
L_58F0           sty L_57C0
                 tya
                 and #$07
                 tay
                 lda (CASINI),y
                 ldy #$00
                 and (LNFLG),y
                 ora (FRE+4),y
                 ldy L_57C0
                 sta (FRE+2),y
                 lda FRE+4
                 cmp #$FF
                 bne L_590E
                 inc FRE+5
                 inc NGFLAG
L_590E           inc FRE+4
                 inc LNFLG
L_5912           iny
                 inc L_57E0+2
                 cpy #$18
                 bne L_591E
                 inx
                 jmp L_5927
L_591E           tya
                 and #$07
                 bne L_58D0
                 inx
                 jmp L_58B3
L_5927           lda FRE+2
                 clc
                 adc #$18
                 sta FRE+2
                 bcc L_5932
                 inc FRE+3
L_5932           cpx L_57C0+4
                 beq L_593A
                 jmp L_58A1
L_593A           ldx L_57B8+7
                 ldy L_57C0
                 rts
L_5941           lda L_57C0+1
                 and #$FC
                 lsr
                 lsr
                 sta L_57C0+1
                 sta L_57C0+2
                 lda L_57C0
                 and #$F8
                 lsr
                 lsr
                 lsr
                 sta L_57C0
                 sta L_57C0+3
                 and #$F8
                 lsr
                 lsr
                 lsr
                 sta FRE+3
                 lda L_57C0
                 clc
                 asl
                 asl
                 asl
                 asl
                 asl
                 sta FRE+2
                 lda L_57C0
                 and #$E0
                 lsr
                 lsr
                 lsr
                 lsr
                 lsr
                 sta FRE+5
                 lda L_57C0
                 clc
                 asl
                 asl
                 asl
                 sta FRE+4
                 lda FRE+3
                 clc
                 adc FRE+5
                 sta FRE+3
                 lda FRE+2
                 clc
                 adc FRE+4
                 sta FRE+2
                 bcc L_5995
                 inc FRE+3
L_5995           lda FRE+3
                 clc
                 adc #$9A
                 sta FRE+3
                 lda FRE+2
                 clc
                 adc L_57C0+1
                 sta FRE+2
                 bcc L_59A8
                 inc FRE+3
L_59A8           lda FRE+2
                 clc
                 adc #$8A
                 sta FRE+2
                 bcc L_59B3
                 inc FRE+3
L_59B3           stx L_57B8+7
                 txa
                 clc
                 asl
                 asl
                 asl
                 clc
                 adc L_57B8+7
                 tax
                 clc
                 adc #$09
                 sta L_57C0+4
                 rts
                 ldx L_57E8
                 lda L_3C23+2
                 nop
                 nop
                 lda L_57B0+6,x
                 sta L_57C0+1
                 lda L_57B8+1,x
                 sta L_57C0
                 jsr L_5B16
                 jsr L_5941
                 lda L_57C0+4
                 sec
                 sbc L_57E8+2
                 sta L_57E8+2
                 lda #$00
                 sta FRE+5
L_59EF           lda #$00
                 sta FRE+4
                 ldy FRE+5
L_59F5           lda L_57C0+2
                 cmp #$06
                 bcc L_5A10
                 cmp #$20
                 bcs L_5A10
                 lda L_57C0+3
                 cmp #$03
                 bcc L_5A10
                 cmp #$1E
                 bcs L_5A10
                 lda L_57C0+5,x
                 sta (FRE+2),y
L_5A10           inc L_57C0+3
                 inx
                 tya
                 clc
                 adc #$28
                 tay
                 inc FRE+4
                 lda FRE+4
                 cmp L_57E8+1
                 bne L_59F5
                 lda L_57E8+1
                 cmp #$02
                 bne L_5A2A
                 inx
L_5A2A           lda L_57C0+3
                 sec
                 sbc L_57E8+1
                 sta L_57C0+3
                 inc L_57C0+2
                 inc FRE+5
                 cpx L_57E8+2
                 bne L_59EF
                 ldx L_57B8+7
                 lda L_57B0,x
                 sta L_57B0+6,x
                 sta L_57C0+1
                 lda L_57B0+3,x
                 sta L_57B8+1,x
                 sta L_57C0
                 jsr L_5B33
                 jsr L_5941
                 lda L_57C0+4
                 sec
                 sbc L_57E8+2
                 sta L_57E8+2
                 stx L_57C0+1
                 lda #$00
                 sta FRE+5
L_5A6A           lda #$00
                 sta FRE+4
                 ldy FRE+5
L_5A70           lda (FRE+2),y
                 sta L_57C0+5,x
                 inx
                 tya
                 clc
                 adc #$28
                 tay
                 inc FRE+4
                 lda FRE+4
                 cmp L_57E8+1
                 bne L_5A70
                 lda L_57E8+1
                 cmp #$02
                 bne L_5A8C
                 inx
L_5A8C           inc FRE+5
                 cpx L_57E8+2
                 bne L_5A6A
                 txa
                 sec
                 sbc #$09
                 clc
                 adc L_57E8+3
                 tax
                 lda #$00
                 sta FRE+5
L_5AA0           lda #$00
                 sta FRE+4
                 ldy FRE+5
L_5AA6           lda L_57C0+2
                 cmp #$06
                 bcc L_5ACE
                 cmp #$20
                 bcs L_5ACE
                 lda L_57C0+3
                 cmp #$03
                 bcc L_5ACE
                 cmp #$1E
                 bcs L_5ACE
                 lda L_57C0+5,x
                 and #$80
                 sta RAMLO
                 lda L_57C0+1
                 clc
                 adc #$60
                 clc
                 adc RAMLO
                 sta (FRE+2),y
L_5ACE           inc L_57C0+3
                 tya
                 clc
                 adc #$28
                 tay
                 inx
                 inc L_57C0+1
                 inc FRE+4
                 lda FRE+4
                 cmp L_57E8+1
                 bne L_5AA6
                 lda L_57E8+1
                 cmp #$02
                 bne L_5AEE
                 inc L_57C0+1
                 inx
L_5AEE           lda L_57C0+3
                 sec
                 sbc L_57E8+1
                 sta L_57C0+3
                 inc L_57C0+2
                 inc FRE+5
                 cpx L_57E8+2
                 bne L_5AA0
                 ldx L_57B8+7
                 jsr L_57EC
                 ldx L_57E8
                 cpx #$02
                 bne L_5B11
                 ldx #$FF
L_5B11           inx
                 stx L_57E8
                 rts
L_5B16           lda L_57B0+6,x
                 sta L_57E8+3
                 lda L_57B8+1,x
L_5B1F           and #$07
                 bne L_5B2B
                 lda #$02
                 sta L_57E8+1
                 jmp L_5B3F
L_5B2B           lda #$03
                 sta L_57E8+1
                 jmp L_5B3F
L_5B33           lda L_57B0,x
                 sta L_57E8+3
                 lda L_57B0+3,x
                 jmp L_5B1F
L_5B3F           lda L_57E8+3
                 and #$03
                 bne L_5B4F
                 lda #$03
                 sta L_57E8+2
                 sta L_57E8+3
                 rts
L_5B4F           lda #$00
                 sta L_57E8+2
                 sta L_57E8+3
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
                 lda (FRE+4),y
                 cmp #$49
                 bpl L_5BA9
L_5BA6           cmp #$37
                 rts
L_5BA9           cmp #$4F
                 bpl L_5BA6
                 stx L_5BC4
                 sta L_5BC4+1
                 ldx L_57E8
                 lda #$06
                 sta L_5C64+5,x
                 lda L_5BC4+1
                 ldx L_5BC4
                 jmp L_5BA6
L_5BC4           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_5BFC           .byte $00, $00, $00, $00, $05, $15, $2A, $00
                 .byte $00, $2A, $2A, $0A, $00, $14, $28, $00
                 .byte $00, $28, $28, $28, $50, $54, $A8, $00
                 .byte $00, $A8, $A8, $A0, $05, $2A, $00, $00
                 .byte $00, $00, $2A, $0A, $00, $28, $00, $00
                 .byte $00, $00, $2A, $0A, $50, $A8, $00, $00
                 .byte $00, $00, $A8, $A0, $2A, $00, $00, $00
                 .byte $00, $00, $00, $2A, $00, $00, $00, $00
                 .byte $00, $00, $00, $28, $A8, $00, $00, $00
                 .byte $00, $00, $00, $A8, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_5C5C           .byte $00, $00, $00, $00, $FF, $FF, $FF, $00
L_5C64           .byte $00, $00, $00, $00, $00, $00, $00, $00
L_5C6C           .byte $00, $00, $00, $02, $00
                 ldx #$00
                 lda L_5C6C+4
                 beq L_5C7D
                 tax
                 dex
                 jmp L_5CA3
L_5C7D           lda L_5C5C+7,x
                 beq L_5C93
                 lda L_5C5C+4,x
                 bne L_5C8A
                 dec L_5C5C+7,x
L_5C8A           dec L_5C5C+4,x
L_5C8D           inx
                 cpx #$03
                 bne L_5C7D
                 rts
L_5C93           lda L_5C64+5,x
                 cmp #$05
                 beq L_5C8D
                 cmp #$06
                 beq L_5C8D
                 inx
                 stx L_5C6C+4
                 dex
L_5CA3           lda L_5C64+5,x
                 cmp #$04
                 bne L_5CAD
                 jmp L_5D60
L_5CAD           cmp #$03
                 bne L_5CB4
                 jmp L_5D39
L_5CB4           cmp #$02
                 bne L_5CBB
                 jmp L_5D39
L_5CBB           lda L_5C64+2,x
                 cmp #$06
                 bcs L_5CC6
                 inc L_5C64+2,x
                 rts
L_5CC6           lda #$00
                 sta L_5C64+2,x
                 lda L_5C6C+3
                 bne L_5CDA
L_5CD0           lda VCOUNT
                 and #$03
                 beq L_5CD0
                 sta L_5C6C+3
L_5CDA           lda L_5C6C,x
                 cmp #$04
                 bne L_5D01
                 inc L_5C64+5,x
                 lda L_5C6C+3
                 cmp #$02
                 beq L_5CF6
                 lda #$32
                 sta L_57B0,x
                 lda #$00
                 sta L_57B0+3,x
                 rts
L_5CF6           lda #$62
                 sta L_57B0,x
                 lda #$00
                 sta L_57B0+3,x
                 rts
L_5D01           clc
                 asl
                 asl
                 asl
                 asl
                 sta FRE+4
                 lda L_5C6C,x
                 clc
                 asl
                 asl
                 asl
                 clc
                 adc FRE+4
                 stx FRE+4
                 tax
                 ldy #$90
                 lda L_5C6C+3
                 cmp #$02
                 bne L_5D20
                 ldy #$A8
L_5D20           lda #$89
                 sty FRE+2
                 sta FRE+3
                 ldy #$00
L_5D28           lda L_5BFC+4,x
                 sta (FRE+2),y
                 iny
                 inx
                 cpy #$18
                 bne L_5D28
                 ldx FRE+4
                 inc L_5C6C,x
                 rts
L_5D39           lda L_57B0+3,x
                 cmp #$10
                 bne L_5D44
                 inc L_5C64+5,x
                 rts
L_5D44           lda L_7FFA+5
                 bne L_5D5F
                 ldy L_57E8
                 cpy #$02
                 bne L_5D55
                 ldy #$00
                 jmp L_5D56
L_5D55           iny
L_5D56           sty FRE+4
                 cpx FRE+4
                 bne L_5D5F
                 inc L_57B0+3,x
L_5D5F           rts
L_5D60           lda L_5C64+2,x
                 cmp #$06
                 bcs L_5D6B
                 inc L_5C64+2,x
                 rts
L_5D6B           lda #$00
                 sta L_5C64+2,x
                 dec L_5C6C,x
                 lda L_5C6C,x
                 clc
                 asl
                 asl
                 asl
                 asl
                 sta FRE+4
                 lda L_5C6C,x
                 cmp #$FF
                 bne L_5D93
                 inc L_5C64+5,x
                 inc L_5C6C,x
                 lda #$00
                 sta L_5C6C+3
                 sta L_5C6C+4
                 rts
L_5D93           clc
                 asl
                 asl
                 asl
                 clc
                 adc FRE+4
                 stx FRE+4
                 tax
                 ldy #$90
                 lda L_5C6C+3
                 cmp #$02
                 bne L_5DA8
                 ldy #$A8
L_5DA8           lda #$89
                 sty FRE+2
                 sta FRE+3
                 ldy #$00
L_5DB0           lda L_5BFC+4,x
                 sta (FRE+2),y
                 iny
                 inx
                 cpy #$18
                 bne L_5DB0
                 ldx FRE+4
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_5DCE           .byte $00, $00, $07, $04, $5B, $9B, $04, $04
L_5DD6           .byte $04, $00, $00, $00, $03, $02, $00, $00
L_5DDE           .byte $00, $00, $00, $00, $00, $00, $00
                 ldx L_57E8
                 lda L_5C64+5,x
                 cmp #$04
                 beq L_5DFB
                 cmp #$05
                 beq L_5DFB
                 cmp #$06
                 bne L_5DFA
                 jsr L_3DB1
L_5DFA           rts
L_5DFB           lda L_57B0+3,x
                 cmp #$E0
                 bcc L_5E05
                 jmp L_3F77
L_5E05           sec
                 sbc #$08
                 and #$F8
                 lsr
                 lsr
                 lsr
                 sta L_5DCE+3
                 lda L_57B0,x
                 sec
                 sbc #$10
                 and #$FC
                 lsr
                 lsr
                 sta L_5DCE+2
                 lda L_5DCE+3
                 and #$F8
                 lsr
                 lsr
                 lsr
                 sta L_5DCE+5
                 lda L_5DCE+3
                 and #$0F
                 clc
                 asl
                 asl
                 asl
                 asl
                 asl
                 sta L_5DCE+4
                 lda L_5DCE+3
                 and #$E0
                 lsr
                 lsr
                 lsr
                 lsr
                 lsr
                 clc
                 adc L_5DCE+5
                 sta L_5DCE+5
                 lda L_5DCE+3
                 and #$1F
                 clc
                 asl
                 asl
                 asl
                 clc
                 adc L_5DCE+4
                 sta L_5DCE+4
                 bcc L_5E5C
                 inc L_5DCE+5
L_5E5C           lda L_5DCE+5
                 clc
                 adc #$9A
                 sta L_5DCE+5
                 lda L_5DCE+4
                 clc
                 adc #$B4
                 sta L_5DCE+4
                 bcc L_5E73
                 inc L_5DCE+5
L_5E73           lda L_5DCE+4
                 clc
                 adc L_5DCE+2
                 sta L_5DCE+4
                 bcc L_5E82
                 inc L_5DCE+5
L_5E82           ldy #$03
                 lda L_57B0+3,x
                 and #$07
                 bne L_5E8C
                 dey
L_5E8C           sty L_5DD6+5
                 ldy #$03
                 lda L_57B0,x
                 and #$03
                 bne L_5E99
                 dey
L_5E99           sty L_5DD6+4
                 lda L_5DDE+1,x
                 beq L_5EA7
                 dec L_5DDE+1,x
                 jmp L_5EE5
L_5EA7           lda L_5DDE+4,x
                 beq L_5EB2
                 dec L_5DDE+4,x
                 jmp L_5EE5
L_5EB2           lda L_57B0+3,x
                 cmp #$58
                 bcc L_5EE5
                 lda VCOUNT
                 and #$1F
                 cmp #$14
                 bmi L_5EE5
                 cmp #$16
                 bpl L_5EE5
                 lda L_57B0,x
                 and #$03
                 bne L_5EE5
L_5ECD           lda VCOUNT
                 and #$07
                 beq L_5ECD
                 clc
                 asl
                 asl
                 asl
                 sta L_5DDE+1,x
                 lda #$01
                 sta L_5DCE+6,x
                 lda #$A0
                 sta L_5DDE+4,x
L_5EE5           ldx L_57E8
                 lda L_5DCE+6,x
                 cmp #$01
                 beq L_5F47
                 lda L_5DD6+6,x
                 bne L_5F30
                 lda L_57B0,x
                 and #$03
                 bne L_5F30
                 lda L_57B0+3,x
                 and #$07
                 bne L_5F27
                 ldy #$52
                 lda L_5DCE+4
                 sta FRE+4
                 lda L_5DCE+5
                 sta FRE+5
                 ldx #$00
L_5F10           lda (FRE+4),y
                 cmp #$37
                 bcs L_5F19
L_5F16           jmp L_3E0E
L_5F19           cmp #$60
                 bcs L_5F16
                 iny
                 inx
                 cpx L_5DD6+4
                 bne L_5F10
                 ldx L_57E8
L_5F27           inc L_57B0+3,x
                 inc L_57B0+3,x
                 jmp L_3F4F
L_5F30           ldx L_57E8
                 lda L_5DD6+6,x
                 beq L_5F3B
                 dec L_5DD6+6,x
L_5F3B           lda L_5DCE+6,x
                 cmp #$02
                 beq L_5F83
                 cmp #$04
                 beq L_5F4A
                 rts
L_5F47           jmp L_3E73
L_5F4A           ldx L_57E8
                 lda L_57B0,x
                 and #$03
                 bne L_5F7F
                 ldx #$00
                 ldy #$00
                 lda L_5DCE+4
                 sta FRE+4
                 lda L_5DCE+5
                 sta FRE+5
                 ldy #$01
L_5F64           lda (FRE+4),y
                 cmp #$37
                 bpl L_5F6D
L_5F6A           jmp L_3E00
L_5F6D           cmp #$60
                 bpl L_5F6A
                 inx
                 tya
                 clc
                 adc #$28
                 tay
                 cpx L_5DD6+5
                 bne L_5F64
                 ldx L_57E8
L_5F7F           dec L_57B0,x
                 rts
L_5F83           lda L_5DCE+4
                 sta FRE+4
                 lda L_5DCE+5
                 sta FRE+5
                 lda L_57B0,x
                 and #$03
                 bne L_5FB0
                 ldy #$04
                 ldx #$00
L_5F98           lda (FRE+4),y
                 cmp #$37
                 bpl L_5FA1
L_5F9E           jmp L_3E00
L_5FA1           cmp #$60
                 bpl L_5F9E
                 tya
                 clc
                 adc #$28
                 tay
                 inx
                 cpx L_5DD6+5
                 bne L_5F98
L_5FB0           ldx L_57E8
                 inc L_57B0,x
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00
L_5FC0           lda #$00
                 sta L_8F0A+6
                 lda #$07
                 ldy #$62
                 ldx #$E4
                 jsr L_1F00
                 lda #$30
                 sta $9EE2
                 lda #$2A
                 sta $9F0A
                 lda #$2C
                 sta $9F32
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $0A, $2A, $AA, $00
                 .byte $55, $55, $55, $55, $55, $55, $55, $55
                 .byte $00, $00, $00, $00, $A0, $A0, $80, $20
                 .byte $20, $20, $20, $20, $20, $20, $20, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $02, $0A, $2A, $0A, $12
                 .byte $14, $15, $15, $15, $15, $15, $05, $05
                 .byte $01, $01, $80, $A0, $A8, $A8, $A8, $A0
                 .byte $88, $28, $28, $28, $28, $28, $28, $20
                 .byte $20, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $02, $0A, $0A, $02
                 .byte $04, $04, $05, $05, $05, $01, $01, $01
                 .byte $00, $00, $20, $A8, $A8, $AA, $AA, $A8
                 .byte $A2, $A2, $22, $0A, $2A, $28, $28, $20
                 .byte $20, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $02, $02, $02, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $21, $21, $A1, $A1
                 .byte $A1, $A1, $81, $28, $2A, $AA, $AA, $28
                 .byte $20, $00, $00, $00, $00, $00, $00, $40
                 .byte $40, $40, $40, $40, $00, $00, $00, $00
                 .byte $00, $00, $00, $01, $01, $01, $21, $21
                 .byte $A1, $A1, $A1, $88, $28, $AA, $AA, $2A
                 .byte $02, $00, $00, $00, $00, $40, $40, $50
                 .byte $50, $50, $50, $50, $50, $10, $80, $80
                 .byte $80, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $14, $15, $15, $15, $15
                 .byte $15, $15, $15, $15, $01, $28, $0A, $00
                 .byte $00, $00, $00, $00, $40, $54, $54, $54
                 .byte $54, $54, $54, $54, $54, $14, $94, $80
                 .byte $28, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $04, $05, $05, $05
                 .byte $05, $05, $05, $05, $05, $05, $00, $00
                 .byte $00, $00, $00, $00, $28, $42, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $12, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $02, $00, $01, $01
                 .byte $01, $01, $01, $01, $01, $01, $01, $00
                 .byte $00, $00, $00, $00, $AA, $00, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $00
                 .byte $00, $00, $00, $00, $00, $80, $80, $80
                 .byte $80, $80, $80, $80, $80, $80, $00, $00
                 .byte $00, $00, $02, $06, $09, $09, $09, $05
                 .byte $25, $66, $66, $96, $96, $96, $5A, $28
                 .byte $00, $00, $40, $60, $60, $60, $60, $A0
                 .byte $A0, $66, $66, $96, $96, $96, $5A, $28
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $02, $06, $09, $09, $09
                 .byte $06, $09, $06, $09, $09, $05, $01, $00
                 .byte $00, $00, $00, $40, $60, $60, $A0, $A0
                 .byte $64, $A6, $66, $96, $96, $96, $9A, $28
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $01, $02, $02
                 .byte $02, $02, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $90, $98, $58, $58
                 .byte $68, $60, $99, $99, $A5, $65, $26, $26
                 .byte $08, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $80, $80, $80, $80, $00
                 .byte $00, $00, $00, $00, $00, $01, $02, $02
                 .byte $02, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $98, $9A, $59, $55
                 .byte $5A, $69, $59, $25, $25, $25, $16, $06
                 .byte $00, $00, $00, $00, $00, $80, $80, $A0
                 .byte $A0, $A0, $A0, $80, $80, $80, $80, $00
                 .byte $00, $00, $00, $00, $24, $66, $96, $96
                 .byte $9A, $16, $09, $09, $09, $05, $02, $00
                 .byte $00, $00, $00, $00, $18, $66, $96, $96
                 .byte $96, $5A, $60, $60, $60, $A0, $80, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $09, $16
                 .byte $26, $26, $1A, $25, $25, $25, $16, $0A
                 .byte $00, $00, $00, $00, $00, $60, $98, $58
                 .byte $58, $58, $A0, $80, $80, $80, $80, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $02, $02, $06, $09, $09, $09, $01
                 .byte $00, $00, $00, $00, $06, $19, $65, $65
                 .byte $A5, $96, $96, $6A, $60, $60, $60, $80
                 .byte $00, $00, $00, $00, $00, $80, $80, $80
                 .byte $80, $80, $80, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $01, $02, $02, $02, $01, $00, $00
                 .byte $00, $00, $00, $0A, $19, $25, $25, $25
                 .byte $96, $96, $59, $59, $5A, $6A, $A0, $00
                 .byte $00, $00, $00, $00, $80, $80, $80, $80
                 .byte $80, $80, $80, $80, $80, $00, $00, $00
                 .byte $00, $00, $00, $02, $02, $05, $06, $06
                 .byte $05, $19, $19, $19, $25, $AA, $6A, $9A
                 .byte $65, $15, $00, $00, $00, $80, $80, $80
                 .byte $80, $60, $A0, $60, $A0, $A8, $A8, $98
                 .byte $58, $A0, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $01, $02, $01, $02, $01
                 .byte $01, $02, $01, $02, $01, $0A, $0A, $2A
                 .byte $19, $05, $00, $00, $00, $80, $80, $A0
                 .byte $68, $68, $58, $50, $6A, $A9, $A6, $5A
                 .byte $58, $40, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $02, $05
                 .byte $05, $0A, $40, $A0, $50, $68, $56, $66
                 .byte $55, $25, $16, $16, $0A, $2A, $96, $56
                 .byte $96, $40, $00, $00, $00, $00, $00, $00
                 .byte $80, $80, $00, $00, $00, $80, $80, $80
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $10, $28, $18, $2A, $16, $26
                 .byte $15, $25, $16, $2A, $29, $06, $25, $95
                 .byte $56, $6A, $00, $00, $00, $00, $00, $80
                 .byte $40, $80, $80, $00, $80, $A0, $A0, $A0
                 .byte $A0, $80, $00, $02, $01, $09, $05, $09
                 .byte $05, $25, $2A, $2A, $15, $25, $9A, $AA
                 .byte $AA, $2A, $00, $00, $00, $80, $80, $80
                 .byte $80, $60, $90, $A0, $60, $58, $98, $A8
                 .byte $A8, $A0, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $02, $01, $09
                 .byte $05, $09, $0A, $02, $09, $25, $29, $2A
                 .byte $0A, $02, $10, $90, $50, $60, $60, $60
                 .byte $60, $A0, $90, $A0, $A0, $40, $58, $56
                 .byte $96, $A0, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $01, $02
                 .byte $05, $05, $09, $02, $01, $0A, $09, $05
                 .byte $02, $00, $10, $20, $50, $90, $60, $60
                 .byte $60, $A0, $60, $60, $80, $60, $68, $5A
                 .byte $56, $1A, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $80, $80, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $02, $01, $01, $02, $00
                 .byte $00, $00, $00, $01, $01, $09, $06, $26
                 .byte $9A, $66, $16, $A5, $AA, $AA, $56, $56
                 .byte $16, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $80, $80, $A0, $A0
                 .byte $80, $00, $00, $01, $01, $01, $04, $04
                 .byte $04, $10, $12, $12, $40, $40, $55, $55
                 .byte $AA, $00, $00, $00, $00, $00, $40, $40
                 .byte $40, $10, $10, $10, $04, $04, $54, $54
                 .byte $A8, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $01, $01, $01, $01, $01
                 .byte $01, $01, $01, $04, $04, $04, $04, $05
                 .byte $05, $06, $00, $00, $20, $60, $58, $18
                 .byte $18, $86, $86, $06, $05, $14, $50, $4A
                 .byte $A8, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $80, $80, $80, $80
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $01, $01, $01, $01, $09
                 .byte $0A, $00, $10, $10, $14, $54, $54, $45
                 .byte $45, $41, $49, $09, $00, $00, $15, $5A
                 .byte $AA, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $40, $40, $50, $50, $60, $A0
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $01, $01, $01, $05, $05
                 .byte $14, $10, $10, $12, $52, $40, $40, $A5
                 .byte $0A, $00, $00, $00, $00, $00, $00, $40
                 .byte $40, $40, $40, $60, $58, $18, $18, $58
                 .byte $A8, $00, $00, $00, $00, $01, $01, $05
                 .byte $04, $14, $52, $52, $94, $25, $09, $02
                 .byte $00, $00, $20, $60, $60, $60, $60, $60
                 .byte $58, $18, $18, $18, $18, $18, $58, $58
                 .byte $A8, $28, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $01, $15, $10
                 .byte $14, $24, $05, $09, $01, $02, $02, $02
                 .byte $00, $00, $00, $00, $15, $51, $01, $05
                 .byte $06, $86, $86, $16, $18, $58, $60, $60
                 .byte $80, $80, $00, $00, $80, $80, $80, $80
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $01, $01, $01, $01, $01
                 .byte $01, $01, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $40, $54, $05, $00, $00
                 .byte $08, $49, $45, $46, $56, $58, $60, $80
                 .byte $00, $00, $00, $00, $00, $40, $50, $10
                 .byte $60, $60, $80, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $04, $04, $15, $11
                 .byte $11, $10, $10, $52, $42, $40, $41, $55
                 .byte $5A, $A0, $80, $00, $00, $00, $00, $00
                 .byte $40, $40, $50, $10, $14, $14, $58, $A0
                 .byte $00, $00, $81, $08, $00, $12, $29, $12
                 .byte $04, $00, $14, $05, $01, $01, $18, $20
                 .byte $08, $08, $00, $10, $58, $08, $54, $56
                 .byte $50, $25, $29, $14, $40, $84, $48, $40
                 .byte $00, $40, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $08, $22, $22, $08, $24, $20
                 .byte $20, $80, $20, $00, $28, $01, $08, $00
                 .byte $00, $00, $00, $00, $A1, $18, $04, $01
                 .byte $00, $01, $02, $04, $09, $18, $88, $82
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $42, $14, $10, $00, $80
                 .byte $80, $10, $10, $40, $10, $11, $0A, $01
                 .byte $00, $00, $00, $01, $24, $08, $01, $00
                 .byte $00, $00, $00, $00, $00, $02, $02, $04
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $04, $10, $00, $40, $00, $00
                 .byte $00, $00, $00, $00, $40, $00, $40, $20
                 .byte $04, $02, $20, $04, $01, $00, $00, $00
                 .byte $00, $00, $00, $00, $01, $01, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $20, $02, $00, $04, $0A, $04
                 .byte $01, $00, $05, $01, $00, $00, $06, $08
                 .byte $02, $02, $40, $04, $11, $82, $55, $98
                 .byte $14, $09, $0A, $45, $50, $61, $12, $10
                 .byte $00, $10, $00, $00, $00, $00, $00, $00
                 .byte $00, $40, $40, $00, $00, $00, $00, $00
                 .byte $00, $00, $02, $08, $08, $02, $09, $08
                 .byte $08, $20, $08, $00, $0A, $00, $02, $00
                 .byte $00, $00, $00, $80, $80, $06, $01, $00
                 .byte $00, $00, $00, $01, $02, $46, $22, $20
                 .byte $00, $00, $00, $00, $40, $00, $00, $40
                 .byte $00, $40, $80, $00, $40, $00, $00, $80
                 .byte $00, $00, $00, $10, $05, $04, $00, $20
                 .byte $20, $04, $04, $10, $04, $04, $02, $00
                 .byte $00, $00, $00, $80, $09, $02, $00, $00
                 .byte $00, $00, $00, $00, $00, $40, $80, $41
                 .byte $00, $00, $00, $40, $00, $00, $40, $00
                 .byte $00, $00, $00, $00, $00, $80, $80, $00
                 .byte $00, $00, $01, $04, $00, $10, $00, $00
                 .byte $00, $00, $00, $00, $10, $00, $10, $08
                 .byte $01, $00, $08, $01, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $80, $00, $00, $40, $00, $00, $00
                 .byte $00, $00, $00, $00, $40, $40, $00, $00
                 .byte $00, $00, $08, $00, $00, $01, $02, $01
                 .byte $00, $00, $01, $00, $00, $00, $01, $02
                 .byte $00, $00, $10, $81, $04, $20, $95, $26
                 .byte $45, $02, $42, $51, $14, $18, $84, $04
                 .byte $80, $84, $00, $00, $40, $80, $40, $00
                 .byte $00, $50, $90, $40, $00, $40, $80, $00
                 .byte $00, $00, $00, $02, $02, $00, $02, $02
                 .byte $02, $08, $02, $00, $02, $00, $00, $00
                 .byte $00, $00, $80, $20, $2A, $81, $40, $00
                 .byte $00, $00, $00, $00, $80, $11, $88, $08
                 .byte $00, $00, $00, $00, $10, $80, $40, $10
                 .byte $00, $10, $20, $40, $90, $80, $80, $20
                 .byte $00, $00, $00, $04, $01, $01, $00, $08
                 .byte $08, $01, $01, $04, $01, $01, $00, $00
                 .byte $00, $00, $00, $20, $42, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $10, $A0, $10
                 .byte $00, $00, $00, $10, $40, $80, $10, $00
                 .byte $00, $00, $00, $00, $00, $20, $20, $40
                 .byte $00, $00, $00, $01, $00, $04, $00, $00
                 .byte $00, $00, $00, $00, $04, $00, $04, $02
                 .byte $00, $00, $42, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $40, $20, $00, $40, $10, $00, $00, $00
                 .byte $00, $00, $00, $00, $10, $10, $00, $00
                 .byte $00, $00, $02, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $04, $20, $01, $48, $A5, $49
                 .byte $11, $00, $50, $14, $05, $06, $61, $81
                 .byte $20, $21, $00, $40, $10, $20, $50, $80
                 .byte $40, $94, $A4, $50, $00, $10, $20, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $02, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $20, $88, $8A, $20, $90, $80
                 .byte $80, $00, $80, $00, $A0, $04, $22, $02
                 .byte $00, $00, $00, $00, $84, $60, $10, $04
                 .byte $00, $04, $08, $10, $24, $60, $20, $08
                 .byte $00, $00, $00, $01, $00, $00, $00, $02
                 .byte $02, $00, $00, $01, $00, $00, $00, $00
                 .byte $00, $00, $00, $08, $50, $40, $00, $00
                 .byte $00, $40, $40, $00, $40, $44, $28, $04
                 .byte $00, $00, $00, $04, $90, $20, $04, $00
                 .byte $00, $00, $00, $00, $00, $08, $08, $10
                 .byte $00, $00, $00, $00, $00, $01, $00, $00
                 .byte $00, $00, $00, $00, $01, $00, $01, $00
                 .byte $00, $00, $10, $40, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $80
                 .byte $10, $08, $80, $10, $04, $00, $00, $00
                 .byte $00, $00, $00, $00, $04, $04, $00, $00
                 .byte $00, $00, $FC, $F0, $F0, $C0, $C0, $C0
                 .byte $C0, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $FF, $3F, $3F, $0F, $0F, $0F
                 .byte $0F, $03, $03, $03, $03, $00, $00, $00
                 .byte $00, $03, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FC, $F0, $F0, $F0, $F0, $F0
                 .byte $F0, $F0, $F0, $F0, $F0, $C0, $C0, $00
                 .byte $00, $C0, $3F, $3F, $3F, $0F, $0F, $03
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $03, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $3F, $3F, $3F, $3F
                 .byte $FF, $FF, $FC, $FC, $FC, $FC, $FC, $FC
                 .byte $FC, $FF, $FF, $FF, $FF, $FC, $F0, $C0
                 .byte $C0, $C0, $0F, $03, $03, $00, $00, $00
                 .byte $00, $00, $00, $00, $C0, $00, $00, $00
                 .byte $00, $00, $FF, $FF, $FF, $FF, $FF, $3F
                 .byte $0F, $0F, $3F, $3F, $3F, $0F, $0F, $0F
                 .byte $3F, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FC
                 .byte $FC, $FC, $03, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $C0, $00, $00
                 .byte $00, $00, $FF, $FF, $FF, $3F, $3F, $0F
                 .byte $0F, $0F, $0F, $0F, $0F, $03, $03, $03
                 .byte $03, $0F, $FC, $F0, $F0, $C0, $C0, $C0
                 .byte $C0, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $FF, $3F, $3F, $0F, $0F, $0F
                 .byte $0F, $03, $03, $03, $03, $00, $00, $00
                 .byte $00, $03, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FC, $F0, $F0, $C0
                 .byte $C0, $C0, $C0, $F0, $C0, $00, $00, $00
                 .byte $C0, $F0, $03, $03, $03, $03, $03, $03
                 .byte $03, $03, $03, $03, $03, $03, $00, $00
                 .byte $00, $00, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $3F
                 .byte $3F, $FF, $FF, $FF, $FC, $FC, $F0, $F0
                 .byte $C0, $C0, $C0, $F0, $F0, $C0, $C0, $C0
                 .byte $F0, $FC, $00, $03, $00, $03, $00, $03
                 .byte $00, $03, $00, $03, $00, $03, $00, $00
                 .byte $00, $00, $00, $FF, $00, $FF, $00, $FF
                 .byte $00, $FF, $00, $FF, $FF, $FF, $FF, $3F
                 .byte $0F, $0F, $FF, $FF, $FF, $FF, $FF, $FC
                 .byte $FC, $FC, $00, $F0, $00, $F0, $00, $FC
                 .byte $00, $FF, $00, $F0, $00, $C0, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $C0, $00, $3F, $3F, $3F, $3F, $3F
                 .byte $3F, $3F, $FF, $3F, $0F, $0F, $03, $03
                 .byte $0F, $3F, $00, $F0, $00, $F0, $00, $C0
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $3F, $00, $3F, $00, $0F
                 .byte $00, $03, $00, $03, $00, $00, $00, $00
                 .byte $00, $00, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $00, $FF, $00, $FF, $00, $FF
                 .byte $00, $FF, $00, $F0, $00, $F0, $00, $F0
                 .byte $00, $F0, $00, $C0, $00, $C0, $00, $C0
                 .byte $00, $C0, $00, $0F, $03, $03, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $03, $02, $FF, $02, $FF, $02, $FF
                 .byte $02, $3F, $02, $3F, $02, $0F, $02, $0F
                 .byte $02, $FF, $02, $FF, $02, $FC, $02, $FC
                 .byte $02, $FC, $02, $F0, $F0, $F0, $F0, $C0
                 .byte $C0, $F0, $03, $03, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $FF, $00, $FF, $00, $3F
                 .byte $00, $3F, $00, $0F, $00, $03, $00, $03
                 .byte $00, $FF, $00, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FC, $FC, $FC, $FC
                 .byte $FC, $FF, $00, $F0, $00, $F0, $00, $C0
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $F0, $00, $3F, $00, $3F, $00, $0F
                 .byte $00, $0F, $00, $03, $00, $00, $00, $00
                 .byte $00, $03, $FF, $FC, $FC, $F0, $F0, $C0
                 .byte $C0, $00, $00, $00, $00, $00, $00, $F0
                 .byte $00, $FF, $00, $03, $00, $03, $00, $03
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $00, $FF, $00, $C0, $00, $00
                 .byte $00, $00, $00, $C0, $00, $F0, $00, $F0
                 .byte $00, $FF, $00, $C0, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $03, $03
                 .byte $0F, $0F, $FF, $3F, $0F, $0F, $0F, $0F
                 .byte $3F, $3F, $00, $3F, $00, $FF, $00, $FF
                 .byte $00, $FF, $00, $F0, $00, $F0, $00, $F0
                 .byte $00, $F0, $00, $FC, $00, $FC, $00, $FC
                 .byte $00, $FF, $00, $03, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $03, $0F
                 .byte $3F, $FF, $00, $FF, $00, $0F, $00, $03
                 .byte $00, $03, $00, $3F, $00, $FF, $00, $FF
                 .byte $00, $FF, $00, $FF, $00, $FF, $00, $FF
                 .byte $00, $FF, $00, $FC, $FC, $FC, $FC, $FC
                 .byte $FC, $FC, $F3, $C0, $C0, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $0F, $00, $FF, $00, $3F, $00, $0F
                 .byte $00, $03, $00, $00, $00, $00, $00, $0F
                 .byte $00, $FF, $FF, $08, $00, $6C, $06, $6C
L_6C06           .byte $4C, $4A, $6C, $70, $70, $70, $42, $40
                 .byte $9C, $02, $02, $02, $02, $02, $02, $02
                 .byte $02, $02, $02, $02, $02, $02, $02, $02
                 .byte $02, $02, $02, $02, $02, $02, $02, $D2
L_6C26           .byte $00, $6E, $70, $70, $41, $00, $6D, $2C
                 .byte $6F, $61, $64, $00, $25, $72, $72, $6F
                 .byte $72, $0E, $0E, $30, $6C, $65, $61, $73
                 .byte $65, $00, $32, $65, $0D, $2C, $6F, $61
                 .byte $64, $0E, $43, $3A
                 lda #$0F
                 sta COLOR0
                 sta COLOR1
                 lda #$00
                 sta COLOR2
                 sta COLOR4
                 tax
L_6C5B           sta $9C40,x
                 sta $9D40,x
                 sta $9E40,x
                 sta $9F00,x
                 inx
                 bne L_6C5B
                 ldx #$00
L_6C6C           lda L_6C06+3,x
                 sta $0680,x
                 inx
                 cpx #$30
                 bne L_6C6C
                 lda #$07
                 sta $06FF
                 lda #$01
                 sta CRSINH
                 ldx #$80
                 ldy #$06
                 stx SDLSTL
                 sty SDLSTH
                 ldy #$09
                 ldx #$6D
                 lda #$06
                 jsr L_1F00
                 ldx #$10
                 lda #$03
                 sta B0_ICCOM,x
                 lda #$07
                 sta B0_ICAX1,x
                 lda #$80
                 sta B0_ICAX2,x
                 lda #$48
                 sta B0_ICBAL,x
                 lda #$6C
                 sta B0_ICBAH,x
                 jsr CIOV
                 nop
                 nop
                 lda #$07
                 sta B0_ICCOM,x
                 lda #$00
                 sta B0_ICBAL,x
                 lda #$10
                 sta B0_ICBAH,x
                 lda #$FF
                 sta B0_ICBLH,x
                 jsr CIOV
                 nop
                 nop
                 lda #$0C
                 jsr CIOV
                 nop
                 nop
                 lda #$3C
                 sta PACTL
                 ldy #$5F
                 ldx #$E4
                 lda #$06
                 jsr L_1F00
                 jmp L_3500
                 ldx #$00
L_6CE7           lda L_6C26+7,x
                 sta $9DD6,x
                 inx
                 cpx #$1B
                 bne L_6CE7
                 lda #$3C
                 sta PACTL
L_6CF7           inc COLOR1
                 ldy #$00
L_6CFC           ldx #$00
L_6CFE           inx
                 bne L_6CFE
                 iny
                 cpy #$14
                 bne L_6CFC
                 jmp L_6CF7
                 pha
                 tya
                 pha
                 txa
                 pha
                 ldx #$80
                 ldy #$06
                 stx DLISTL
                 sty DLISTH
                 lda #$0F
                 sta COLPF1
                 lda $06FF
                 cmp #$04
                 bcc L_6D3A
                 lda HSCROL
                 and #$F8
                 ora $06FF
                 sta HSCROL
L_6D2F           dec $06FF
                 pla
                 tax
                 pla
                 tay
                 pla
                 jmp SYSVBV
L_6D3A           lda $069D
                 cmp #$D6
                 bne L_6D55
                 lda $069E
                 cmp #$6F
                 bne L_6D55
                 lda #$00
                 sta $069D
                 lda #$6E
                 sta $069E
                 jmp L_6D62
L_6D55           lda $069D
                 cmp #$FF
                 bne L_6D5F
                 inc $069E
L_6D5F           inc $069D
L_6D62           lda #$07
                 sta $06FF
                 lda HSCROL
                 ora #$07
                 sta HSCROL
                 jmp L_6D2F
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_6D7A           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_6DFA           .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $2E, $6F, $77, $00, $2C, $6F, $61
                 .byte $64, $69, $6E, $67, $00, $21, $72, $6B
                 .byte $61, $6E, $6F, $69, $64, $00, $08, $23
                 .byte $09, $00, $11, $19, $18, $17, $00, $29
                 .byte $6D, $61, $67, $69, $6E, $65, $00, $33
                 .byte $6F, $66, $74, $77, $61, $72, $65, $0C
                 .byte $08, $23, $09, $00, $11, $19, $18, $17
                 .byte $00, $34, $61, $69, $74, $6F, $0E, $00
                 .byte $00, $00, $34, $68, $65, $00, $65, $72
                 .byte $61, $00, $61, $6E, $64, $00, $74, $69
                 .byte $6D, $65, $00, $6F, $66, $00, $74, $68
                 .byte $69, $73, $00, $73, $74, $6F, $72, $79
                 .byte $00, $61, $72, $65, $00, $75, $6E, $6B
                 .byte $6E, $6F, $77, $6E, $0E, $00, $00, $00
                 .byte $21, $66, $74, $65, $72, $00, $74, $68
                 .byte $65, $00, $2D, $6F, $74, $68, $65, $72
                 .byte $73, $68, $69, $70, $00, $07, $21, $72
                 .byte $6B, $61, $6E, $6F, $69, $64, $07, $00
                 .byte $77, $61, $73, $00, $64, $65, $73, $74
                 .byte $72, $6F, $79, $65, $64, $0C, $61, $00
                 .byte $73, $70, $61, $63, $65, $63, $72, $61
                 .byte $66, $74, $00, $07, $36, $61, $75, $73
                 .byte $07, $00, $73, $63, $72, $61, $6D, $62
                 .byte $6C, $65, $64, $00, $61, $77, $61, $79
                 .byte $00, $66, $72, $6F, $6D, $00, $69, $74
                 .byte $0C, $6F, $6E, $6C, $79, $00, $74, $6F
                 .byte $00, $62, $65, $00, $74, $72, $61, $70
                 .byte $70, $65, $64, $00, $69, $6E, $00, $73
                 .byte $70, $61, $63, $65, $0C, $77, $61, $72
                 .byte $70, $65, $64, $00, $62, $79, $00, $73
                 .byte $6F, $6D, $65, $6F, $6E, $65, $01, $00
                 .byte $00, $00, $39, $6F, $75, $00, $6D, $75
                 .byte $73, $74, $00, $74, $61, $6B, $65, $00
                 .byte $63, $6F, $6E, $74, $72, $6F, $6C, $00
                 .byte $6F, $66, $00, $74, $68, $65, $00, $36
                 .byte $61, $75, $73, $0C, $61, $6E, $64, $00
                 .byte $62, $61, $74, $74, $6C, $65, $00, $79
                 .byte $6F, $75, $72, $00, $77, $61, $79, $00
                 .byte $74, $68, $72, $6F, $75, $67, $68, $00
                 .byte $74, $68, $65, $00, $13, $12, $00, $6C
                 .byte $65, $76, $65, $6C, $73, $00, $74, $6F
                 .byte $00, $63, $6F, $6E, $66, $72, $6F, $6E
L_6F7A           .byte $74, $00, $74, $68, $65, $00, $24, $69
                 .byte $6D, $65, $6E, $73, $69, $6F, $6E, $00
                 .byte $23, $68, $61, $6E, $67, $65, $72, $01
                 .byte $00, $00, $00, $27, $61, $6D, $65, $00
                 .byte $23, $6F, $64, $69, $6E, $67, $00, $62
                 .byte $79, $00, $2D, $69, $6B, $65, $00, $28
                 .byte $75, $74, $63, $68, $69, $6E, $73, $6F
                 .byte $6E, $0E, $00, $00, $21, $6C, $73, $6F
                 .byte $00, $61, $76, $61, $69, $6C, $61, $62
                 .byte $6C, $65, $00, $07, $27, $72, $65, $65
                 .byte $6E, $00, $22, $65, $72, $65, $74, $07
                 .byte $0E, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $0D, $0D
                 .byte $0D, $0D, $ED, $6D, $6D, $6D, $6D, $6D
                 .byte $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D
                 .byte $0D, $FF, $0D, $0D, $61, $0C, $61, $21
                 .byte $0B, $61, $21, $A1, $0A, $61, $21, $A1
                 .byte $41, $09, $61, $21, $A1, $41, $61, $08
                 .byte $61, $21, $A1, $41, $61, $21, $07, $61
                 .byte $21, $A1, $41, $61, $21, $A1, $06, $61
                 .byte $21, $A1, $41, $61, $21, $A1, $41, $05
                 .byte $61, $21, $A1, $41, $61, $21, $A1, $41
                 .byte $61, $04, $61, $21, $A1, $41, $61, $21
                 .byte $A1, $41, $61, $21, $03, $61, $21, $A1
                 .byte $41, $61, $21, $A1, $41, $61, $21, $A1
                 .byte $02, $61, $21, $A1, $41, $61, $21, $A1
                 .byte $41, $61, $21, $A1, $41, $01, $EC, $A1
                 .byte $0D, $0D, $0D, $0D, $FF, $0D, $0D, $0D
                 .byte $6D, $0D, $63, $CA, $0D, $6D, $0D, $CA
                 .byte $63, $0D, $6D, $0D, $63, $CA, $0D, $6D
                 .byte $0D, $CA, $63, $0D, $FF, $0D, $0D, $0D
                 .byte $0D, $01, $A1, $41, $21, $E1, $A1, $01
                 .byte $21, $A1, $41, $21, $A1, $01, $01, $41
                 .byte $21, $E1, $A1, $41, $01, $A1, $41, $21
                 .byte $A1, $E1, $01, $01, $21, $E1, $A1, $41
                 .byte $21, $01, $41, $21, $A1, $E1, $41, $01
                 .byte $01, $E1, $A1, $41, $21, $A1, $01, $21
                 .byte $A1, $E1, $41, $21, $01, $01, $A1, $41
                 .byte $21, $A1, $41, $01, $A1, $E1, $41, $21
                 .byte $A1, $01, $01, $41, $21, $A1, $41, $21
                 .byte $01, $E1, $41, $21, $A1, $41, $01, $01
                 .byte $21, $A1, $41, $21, $A1, $01, $41, $21
                 .byte $A1, $41, $21, $01, $01, $A1, $41, $21
                 .byte $A1, $E1, $01, $21, $A1, $41, $21, $A1
                 .byte $01, $01, $41, $21, $A1, $E1, $41, $01
                 .byte $A1, $41, $21, $A1, $41, $01, $01, $21
                 .byte $A1, $E1, $41, $21, $01, $41, $21, $A1
                 .byte $41, $E1, $01, $01, $A1, $E1, $41, $21
                 .byte $A1, $01, $21, $A1, $41, $E1, $21, $01
                 .byte $01, $E1, $41, $21, $A1, $41, $01, $A1
                 .byte $41, $E1, $21, $A1, $01, $01, $41, $21
                 .byte $A1, $41, $21, $01, $41, $E1, $21, $A1
                 .byte $41, $01, $01, $21, $A1, $41, $21, $A1
                 .byte $01, $E1, $21, $A1, $41, $21, $01, $0D
                 .byte $FF, $0D, $0D, $03, $61, $05, $61, $03
                 .byte $03, $61, $05, $61, $03, $04, $61, $03
                 .byte $61, $04, $04, $61, $03, $61, $04, $03
                 .byte $E7, $03, $03, $E7, $03, $02, $E2, $A1
                 .byte $E3, $A1, $E2, $02, $02, $E2, $A1, $E3
                 .byte $A1, $E2, $02, $01, $EB, $01, $01, $EB
                 .byte $01, $01, $EB, $01, $01, $E1, $01, $E7
                 .byte $01, $E1, $01, $01, $E1, $01, $E1, $05
                 .byte $E1, $01, $E1, $01, $01, $E1, $01, $E1
                 .byte $05, $E1, $01, $E1, $01, $04, $E2, $01
                 .byte $E2, $04, $04, $E2, $01, $E2, $04, $0D
                 .byte $FF, $0D, $0D, $0D, $0D, $A1, $01, $61
                 .byte $01, $21, $01, $41, $01, $21, $01, $61
                 .byte $01, $A1, $A1, $01, $61, $01, $21, $01
                 .byte $41, $01, $21, $01, $61, $01, $A1, $A1
                 .byte $01, $61, $01, $21, $01, $41, $01, $21
                 .byte $01, $61, $01, $A1, $A1, $01, $61, $01
                 .byte $21, $01, $41, $01, $21, $01, $61, $01
                 .byte $A1, $A1, $01, $61, $01, $21, $01, $41
                 .byte $01, $21, $01, $61, $01, $A1, $61, $01
                 .byte $C1, $61, $C1, $61, $C1, $61, $C1, $61
                 .byte $C1, $01, $61, $A1, $01, $61, $01, $21
                 .byte $01, $41, $01, $21, $01, $61, $01, $A1
                 .byte $A1, $01, $61, $01, $21, $01, $41, $01
                 .byte $21, $01, $61, $01, $A1, $A1, $01, $61
                 .byte $01, $21, $01, $41, $01, $21, $01, $61
                 .byte $01, $A1, $A1, $01, $61, $01, $21, $01
                 .byte $41, $01, $21, $01, $61, $01, $A1, $61
                 .byte $01, $61, $01, $C1, $01, $61, $01, $C1
                 .byte $01, $61, $01, $61, $A1, $01, $61, $01
                 .byte $21, $01, $41, $01, $21, $01, $61, $01
                 .byte $A1, $0D, $0D, $0D, $FF, $0D, $0D, $0D
                 .byte $0D, $0D, $05, $22, $61, $05, $04, $22
                 .byte $62, $41, $04, $03, $22, $62, $42, $A1
                 .byte $03, $03, $21, $62, $42, $A2, $03, $02
                 .byte $21, $62, $42, $A2, $22, $02, $02, $62
                 .byte $42, $A2, $23, $02, $02, $61, $42, $A2
                 .byte $24, $02, $02, $42, $A2, $24, $A1, $02
                 .byte $02, $41, $A2, $24, $A2, $02, $02, $A2
                 .byte $24, $A2, $41, $02, $03, $24, $A2, $41
                 .byte $03, $03, $23, $A2, $42, $03, $04, $21
                 .byte $A2, $42, $04, $05, $A1, $42, $05, $FF
L_729A           .byte $0D, $0D, $0D, $0D, $03, $C1, $01, $C1
                 .byte $01, $C1, $01, $C1, $03, $01, $C1, $09
                 .byte $C1, $01, $01, $C2, $01, $C1, $03, $C1
                 .byte $01, $C2, $01, $06, $A1, $06, $01, $C1
                 .byte $03, $C1, $61, $C1, $03, $C1, $01, $03
                 .byte $C1, $02, $61, $02, $C1, $03, $06, $61
                 .byte $06, $03, $C1, $02, $61, $02, $C1, $03
                 .byte $01, $C1, $03, $C1, $61, $C1, $03, $C1
                 .byte $01, $06, $61, $06, $01, $C2, $07, $C2
                 .byte $01, $01, $C1, $09, $C1, $01, $03, $C1
                 .byte $01, $C1, $01, $C1, $01, $C1, $03, $0D
                 .byte $0D, $FF, $0D, $0D, $01, $C1, $01, $C1
                 .byte $05, $C1, $01, $C1, $01, $01, $C1, $61
                 .byte $C1, $05, $C1, $61, $C1, $01, $01, $C1
                 .byte $61, $C1, $05, $C1, $61, $C1, $01, $01
                 .byte $C3, $05, $C3, $01, $0D, $04, $65, $04
                 .byte $04, $61, $A3, $61, $04, $04, $65, $04
                 .byte $04, $61, $A3, $61, $04, $04, $61, $A3
                 .byte $61, $04, $04, $61, $A3, $61, $04, $0D
                 .byte $0D, $0D, $0D, $0D, $0D, $FF, $01, $C1
                 .byte $0B, $0D, $01, $C1, $0B, $01, $C1, $0B
                 .byte $01, $C1, $0B, $01, $C1, $05, $61, $05
                 .byte $01, $C1, $04, $61, $41, $61, $04, $01
                 .byte $C1, $03, $61, $43, $61, $03, $01, $C1
                 .byte $02, $61, $45, $61, $02, $01, $C1, $01
                 .byte $61, $43, $C1, $43, $61, $01, $01, $C1
                 .byte $02, $61, $45, $61, $02, $01, $C1, $03
                 .byte $61, $43, $61, $03, $01, $C1, $04, $61
                 .byte $41, $61, $04, $01, $C1, $05, $61, $05
                 .byte $01, $C1, $0B, $01, $C1, $0B, $01, $C1
                 .byte $0B, $01, $CC, $0D, $FF, $0D, $0D, $0D
                 .byte $0D, $01, $EB, $01, $01, $E1, $09, $E1
                 .byte $01, $01, $E1, $01, $E7, $01, $E1, $01
                 .byte $01, $E1, $01, $E1, $05, $E1, $01, $E1
                 .byte $01, $01, $E1, $01, $E1, $01, $E3, $01
                 .byte $E1, $01, $E1, $01, $01, $E1, $01, $E1
                 .byte $01, $E1, $01, $E1, $01, $E1, $01, $E1
                 .byte $01, $01, $E1, $01, $E1, $01, $E3, $01
                 .byte $E1, $01, $E1, $01, $01, $E1, $01, $E1
                 .byte $05, $E1, $01, $E1, $01, $01, $E1, $01
                 .byte $E7, $01, $E1, $01, $01, $E1, $09, $E1
                 .byte $01, $01, $EB, $01, $0D, $0D, $0D, $0D
                 .byte $FF, $0D, $0D, $0D, $0D, $CD, $04, $C1
                 .byte $05, $C1, $61, $01, $01, $C1, $61, $01
                 .byte $C1, $05, $C1, $02, $01, $C1, $02, $C1
                 .byte $02, $C1, $02, $C1, $02, $01, $C1, $02
                 .byte $C1, $61, $01, $C1, $02, $C1, $02, $01
                 .byte $C1, $02, $C1, $02, $C1, $02, $C1, $02
                 .byte $01, $C1, $01, $61, $C1, $02, $C1, $01
                 .byte $61, $C1, $02, $01, $C1, $02, $C1, $02
                 .byte $C1, $02, $C1, $02, $01, $C1, $02, $C1
                 .byte $02, $C1, $02, $C1, $02, $01, $C1, $02
                 .byte $C1, $01, $61, $C1, $02, $C1, $02, $01
                 .byte $C1, $02, $C1, $02, $C1, $02, $C1, $02
                 .byte $01, $C1, $61, $04, $C1, $05, $01, $C1
                 .byte $05, $C1, $04, $61, $01, $CC, $0D, $FF
                 .byte $0D, $0D, $0D, $0D, $01, $23, $01, $63
                 .byte $01, $23, $01, $01, $63, $01, $A3, $01
                 .byte $63, $01, $01, $63, $01, $A3, $01, $63
                 .byte $01, $01, $63, $01, $23, $01, $63, $01
                 .byte $01, $23, $01, $63, $01, $23, $01, $01
                 .byte $63, $01, $A3, $01, $63, $01, $01, $63
                 .byte $01, $A3, $01, $63, $01, $01, $63, $01
                 .byte $23, $01, $63, $01, $0D, $0D, $0D, $0D
                 .byte $0D, $0D, $0D, $FF, $0D, $0D, $0D, $0D
                 .byte $6D, $C1, $0B, $C1, $6D, $0D, $A1, $EB
                 .byte $A1, $C1, $0B, $C1, $6D, $0D, $A1, $EB
                 .byte $A1, $C1, $0B, $C1, $6D, $0D, $6D, $C1
                 .byte $0B, $C1, $0D, $FF, $0D, $0D, $0D, $0D
                 .byte $0D, $41, $61, $C1, $67, $C1, $61, $41
                 .byte $41, $61, $21, $C1, $65, $C1, $21, $61
                 .byte $41, $41, $61, $22, $C1, $63, $C1, $22
                 .byte $61, $41, $41, $61, $23, $C1, $61, $C1
                 .byte $23, $61, $41, $41, $61, $24, $61, $24
                 .byte $61, $41, $41, $61, $24, $61, $24, $61
                 .byte $41, $41, $61, $24, $61, $24, $61, $41
                 .byte $41, $E1, $24, $A1, $24, $E1, $41, $42
                 .byte $E1, $23, $A1, $23, $E1, $42, $43, $E1
                 .byte $22, $A1, $22, $E1, $43, $44, $E1, $21
                 .byte $A1, $21, $E1, $44, $45, $E1, $A1, $E1
                 .byte $45, $0D, $0D, $FF, $0D, $0D, $0D, $0D
                 .byte $06, $C1, $06, $04, $62, $01, $62, $04
                 .byte $02, $62, $02, $C1, $02, $62, $02, $62
                 .byte $02, $A2, $01, $A2, $02, $62, $02, $62
                 .byte $02, $C1, $02, $62, $02, $62, $02, $A2
                 .byte $01, $A2, $02, $62, $02, $62, $02, $C1
                 .byte $02, $62, $02, $62, $02, $A2, $01, $A2
                 .byte $02, $62, $02, $62, $02, $C1, $02, $62
                 .byte $02, $62, $02, $A2, $01, $A2, $02, $62
                 .byte $02, $62, $02, $C1, $02, $62, $02, $62
                 .byte $02, $A2, $01, $A2, $02, $62, $02, $62
                 .byte $05, $62, $02, $62, $09, $62, $0D, $FF
                 .byte $0D, $0D, $0D, $0D, $06, $E1, $06, $03
                 .byte $A3, $E1, $23, $03, $02, $63, $A3, $23
                 .byte $02, $02, $62, $A5, $22, $02, $01, $63
                 .byte $A5, $23, $01, $01, $63, $A5, $23, $01
                 .byte $01, $63, $A5, $23, $01, $01, $E1, $02
                 .byte $E1, $01, $E1, $01, $E1, $02, $E1, $01
                 .byte $06, $E1, $06, $06, $E1, $06, $06, $E1
                 .byte $06, $04, $C1, $01, $C1, $06, $04, $C3
                 .byte $06, $05, $C1, $07, $0D, $FF, $0D, $0D
                 .byte $0D, $0D, $61, $01, $C1, $47, $C1, $01
                 .byte $61, $61, $01, $C2, $45, $C2, $01, $61
                 .byte $61, $01, $C1, $01, $C1, $43, $C1, $01
                 .byte $C1, $01, $61, $61, $01, $C1, $01, $41
                 .byte $C1, $41, $C1, $41, $01, $C1, $01, $61
                 .byte $41, $01, $C1, $01, $41, $01, $E1, $01
                 .byte $41, $01, $C1, $01, $41, $61, $01, $C1
                 .byte $01, $41, $01, $21, $01, $41, $01, $C1
                 .byte $01, $61, $61, $01, $C1, $01, $41, $01
                 .byte $21, $01, $41, $01, $C1, $01, $61, $61
                 .byte $01, $C1, $01, $41, $01, $21, $01, $41
                 .byte $01, $C1, $01, $61, $61, $01, $C1, $01
                 .byte $41, $01, $21, $01, $41, $01, $C1, $01
                 .byte $61, $61, $C3, $41, $01, $21, $01, $41
                 .byte $C3, $61, $0D, $0D, $0D, $0D, $0D, $FF
                 .byte $0D, $0D, $0D, $0D, $02, $C9, $02, $02
                 .byte $21, $41, $61, $41, $C1, $41, $61, $41
                 .byte $21, $02, $02, $21, $41, $61, $41, $C1
                 .byte $41, $61, $41, $21, $02, $02, $21, $41
                 .byte $61, $41, $C1, $41, $61, $41, $21, $02
                 .byte $02, $21, $41, $61, $43, $61, $41, $21
                 .byte $02, $02, $21, $41, $61, $41, $C1, $41
                 .byte $61, $41, $21, $02, $02, $21, $41, $61
                 .byte $41, $C1, $41, $61, $41, $21, $02, $02
                 .byte $21, $41, $61, $41, $C1, $41, $61, $41
                 .byte $21, $02, $02, $C9, $02, $0D, $0D, $0D
                 .byte $0D, $0D, $0D, $FF, $0D, $0D, $0D, $0D
                 .byte $C1, $21, $C1, $61, $C1, $41, $C1, $21
                 .byte $C1, $61, $C1, $61, $C1, $C1, $41, $C1
                 .byte $E1, $C1, $E1, $C1, $E1, $C1, $E1, $C1
                 .byte $21, $C1, $0D, $C1, $61, $C1, $01, $C1
                 .byte $01, $C1, $01, $C1, $01, $C1, $01, $C1
                 .byte $C1, $01, $C1, $61, $C1, $01, $C1, $01
                 .byte $C1, $01, $C1, $01, $C1, $C1, $01, $C1
                 .byte $01, $C1, $61, $C1, $01, $C1, $01, $C1
                 .byte $01, $C1, $C1, $01, $C1, $01, $C1, $01
                 .byte $C1, $61, $C1, $01, $C1, $01, $C1, $C1
                 .byte $01, $C1, $01, $C1, $01, $C1, $01, $C1
                 .byte $61, $C1, $01, $C1, $0B, $61, $01, $02
                 .byte $C1, $01, $C1, $01, $C1, $01, $C1, $61
                 .byte $C1, $02, $02, $C1, $01, $C1, $01, $C1
                 .byte $61, $C1, $01, $C1, $02, $02, $C1, $01
                 .byte $C1, $61, $C1, $01, $C1, $01, $C1, $02
                 .byte $03, $61, $C1, $01, $C1, $01, $C1, $04
                 .byte $01, $61, $04, $C1, $06, $0D, $FF, $0D
                 .byte $0D, $0D, $01, $C1, $69, $C1, $01, $01
                 .byte $C1, $09, $C1, $01, $01, $C1, $01, $C7
                 .byte $01, $C1, $01, $01, $C1, $01, $C1, $05
                 .byte $C1, $01, $C1, $01, $01, $C1, $01, $C1
                 .byte $05, $C1, $01, $C1, $01, $01, $C1, $01
                 .byte $C1, $01, $63, $01, $C1, $01, $C1, $01
                 .byte $01, $C1, $01, $C1, $01, $63, $01, $C1
                 .byte $01, $C1, $01, $01, $C1, $01, $C1, $01
                 .byte $63, $01, $C1, $01, $C1, $01, $01, $C1
                 .byte $01, $C1, $01, $63, $01, $C1, $01, $C1
                 .byte $01, $01, $C1, $01, $C1, $05, $C1, $01
                 .byte $C1, $01, $01, $C1, $01, $C1, $65, $C1
                 .byte $01, $C1, $01, $01, $C1, $09, $C1, $01
                 .byte $01, $C1, $09, $C1, $01, $01, $CB, $01
                 .byte $0D, $0D, $FF, $0D, $0D, $0D, $0D, $6D
                 .byte $6D, $0D, $62, $C1, $01, $C1, $63, $C1
                 .byte $01, $C1, $62, $62, $C1, $01, $C1, $63
                 .byte $C1, $01, $C1, $62, $62, $C1, $01, $C1
                 .byte $63, $C1, $01, $A1, $62, $62, $C1, $01
                 .byte $C1, $63, $C1, $01, $C1, $62, $0D, $6D
                 .byte $6D, $0D, $0D, $0D, $0D, $0D, $FF, $0D
                 .byte $0D, $0D, $0D, $6D, $0D, $02, $E3, $01
                 .byte $E3, $01, $E3, $02, $E1, $A1, $E1, $01
                 .byte $E1, $A1, $E1, $01, $E1, $A1, $E1, $02
                 .byte $E3, $01, $E3, $01, $E3, $0D, $01, $E3
                 .byte $01, $E3, $01, $E3, $01, $01, $E1, $A1
                 .byte $E1, $01, $E1, $A1, $E1, $01, $E1, $A1
                 .byte $E1, $01, $01, $E3, $01, $E3, $01, $E3
                 .byte $01, $0D, $E3, $01, $E3, $01, $E3, $02
                 .byte $E1, $A1, $E1, $01, $E1, $A1, $E1, $01
                 .byte $E1, $A1, $E1, $02, $E3, $01, $E3, $01
                 .byte $E3, $02, $0D, $0D, $FF, $0D, $0D, $0D
                 .byte $0D, $0D, $0D, $05, $63, $05, $05, $63
                 .byte $05, $05, $63, $05, $04, $65, $04, $04
                 .byte $61, $A1, $61, $A1, $61, $04, $03, $61
                 .byte $A2, $61, $A2, $61, $03, $03, $A7, $03
                 .byte $02, $A9, $02, $02, $A9, $02, $01, $AB
                 .byte $01, $AD, $0D, $0D, $FF, $0D, $0D, $0D
                 .byte $0D, $6D, $6D, $6D, $C5, $E3, $C5, $C1
                 .byte $63, $C1, $03, $C1, $23, $C1, $C1, $63
                 .byte $C1, $03, $C1, $23, $C1, $C1, $0B, $C1
                 .byte $C1, $0B, $C1, $C1, $03, $C1, $63, $C1
                 .byte $03, $C1, $C1, $03, $C1, $63, $C1, $03
                 .byte $C1, $C1, $E3, $C5, $E3, $C1, $0D, $0D
                 .byte $0D, $0D, $FF, $0D, $0D, $0D, $0D, $02
                 .byte $C1, $E3, $C1, $06, $01, $C1, $05, $C1
                 .byte $05, $C1, $02, $63, $02, $C1, $04, $C1
                 .byte $01, $65, $01, $C1, $04, $C1, $01, $65
                 .byte $01, $C1, $04, $C1, $02, $63, $02, $C1
                 .byte $04, $01, $C1, $05, $C1, $05, $02, $C5
                 .byte $06, $0D, $0D, $0D, $0D, $0D, $0D, $0D
                 .byte $FF, $0D, $0D, $0D, $0D, $0D, $0D, $0D
                 .byte $0D, $0D, $ED, $6D, $ED, $0D, $ED, $6D
                 .byte $ED, $0D, $0D, $0D, $FF, $0D, $0D, $0D
                 .byte $6D, $61, $C4, $41, $C1, $41, $C4, $61
                 .byte $61, $C1, $09, $C1, $61, $61, $C1, $41
                 .byte $07, $41, $C1, $61, $61, $C1, $42, $05
                 .byte $42, $C1, $61, $61, $C1, $43, $03, $43
                 .byte $C1, $61, $01, $61, $C1, $43, $01, $43
                 .byte $C1, $61, $01, $02, $61, $C1, $45, $C1
                 .byte $61, $02, $03, $61, $C1, $43, $C1, $61
                 .byte $03, $04, $61, $C1, $41, $C1, $61, $04
                 .byte $05, $61, $41, $61, $05, $06, $61, $06
                 .byte $0D, $0D, $0D, $0D, $FF, $0D, $0D, $0D
                 .byte $0D, $65, $C1, $01, $C1, $65, $65, $C1
                 .byte $01, $C1, $65, $C2, $61, $C3, $01, $C3
                 .byte $61, $C2, $65, $C1, $01, $C1, $65, $65
                 .byte $C1, $01, $C1, $65, $65, $C1, $01, $C1
                 .byte $65, $65, $C1, $01, $C1, $65, $E2, $41
                 .byte $E2, $C1, $01, $C1, $E2, $41, $E2, $65
                 .byte $C1, $01, $C1, $65, $65, $C1, $01, $C1
                 .byte $65, $0D, $0D, $0D, $0D, $0D, $FF, $0D
                 .byte $0D, $0D, $0D, $21, $41, $0B, $21, $41
                 .byte $21, $41, $09, $21, $41, $21, $41, $21
                 .byte $41, $07, $21, $41, $21, $41, $21, $41
                 .byte $21, $41, $05, $21, $41, $21, $41, $21
                 .byte $41, $21, $41, $21, $41, $03, $E1, $41
                 .byte $21, $41, $21, $41, $21, $41, $21, $41
                 .byte $21, $41, $01, $01, $C1, $E1, $41, $21
                 .byte $41, $21, $41, $21, $41, $21, $41, $21
                 .byte $03, $C1, $E1, $41, $21, $41, $21, $41
                 .byte $21, $41, $21, $05, $C1, $E1, $41, $21
                 .byte $41, $21, $41, $21, $07, $C1, $E1, $41
                 .byte $21, $41, $21, $09, $C1, $E1, $41, $21
                 .byte $0B, $C1, $E1, $0D, $0D, $0D, $FF, $0D
                 .byte $0D, $0D, $0D, $61, $01, $A1, $01, $21
                 .byte $01, $41, $01, $61, $01, $A1, $01, $21
                 .byte $E1, $01, $E1, $01, $E1, $01, $E1, $01
                 .byte $E1, $01, $E1, $01, $E1, $01, $21, $01
                 .byte $A1, $01, $61, $01, $41, $01, $21, $01
                 .byte $A1, $01, $01, $E1, $01, $E1, $01, $E1
                 .byte $01, $E1, $01, $E1, $01, $E1, $01, $41
                 .byte $01, $61, $01, $A1, $01, $21, $01, $A1
                 .byte $01, $61, $01, $41, $E1, $01, $E1, $01
                 .byte $E1, $01, $E1, $01, $E1, $01, $E1, $01
                 .byte $E1, $01, $A1, $01, $21, $01, $A1, $01
                 .byte $61, $01, $41, $01, $A1, $01, $01, $E1
                 .byte $01, $E1, $01, $E1, $01, $E1, $01, $E1
                 .byte $01, $E1, $01, $61, $01, $41, $01, $61
                 .byte $01, $A1, $01, $21, $01, $A1, $01, $61
                 .byte $E1, $01, $E1, $01, $E1, $01, $E1, $01
                 .byte $E1, $01, $E1, $01, $E1, $01, $61, $01
                 .byte $A1, $01, $21, $01, $A1, $01, $61, $01
                 .byte $41, $01, $01, $E1, $01, $E1, $01, $E1
                 .byte $01, $E1, $01, $E1, $01, $E1, $01, $61
                 .byte $01, $A1, $01, $61, $01, $41, $01, $61
                 .byte $01, $21, $01, $A1, $E1, $01, $E1, $01
                 .byte $E1, $01, $E1, $01, $E1, $01, $E1, $01
                 .byte $E1, $0D, $FF, $0D, $0D, $0D, $0D, $02
                 .byte $C1, $01, $C1, $01, $C1, $01, $C1, $01
                 .byte $C1, $02, $02, $C1, $01, $C1, $01, $C1
                 .byte $01, $C1, $01, $C1, $02, $02, $C1, $01
                 .byte $C1, $01, $C1, $01, $C1, $62, $02, $02
                 .byte $C1, $01, $C1, $01, $C1, $01, $C1, $01
                 .byte $C1, $02, $02, $C1, $01, $C1, $01, $C1
                 .byte $64, $02, $02, $C1, $01, $C1, $01, $C1
                 .byte $01, $C1, $01, $C1, $02, $02, $C1, $01
                 .byte $C1, $66, $02, $02, $C1, $01, $C1, $01
                 .byte $C1, $01, $C1, $01, $C1, $02, $02, $C1
                 .byte $65, $C1, $62, $02, $02, $C1, $01, $C1
                 .byte $01, $C1, $01, $C1, $01, $C1, $02, $02
                 .byte $69, $02, $02, $69, $02, $0D, $0D, $0D
                 .byte $FF, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $05, $00
                 .byte $EF, $00, $75, $00, $46, $00, $3D, $00
                 .byte $65, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $0F, $00, $0F, $00, $0E, $EF, $0F, $EE
                 .byte $0F, $EE, $0F, $EF, $0E, $EF, $0F, $EF
                 .byte $0F, $EF, $0F, $EF, $0F, $EF, $0E, $EE
                 .byte $07, $BA, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $75, $00, $00, $00, $0F, $06, $00, $00
                 .byte $EE, $00, $00, $00, $0F, $06, $00, $00
                 .byte $3A, $00, $00, $00, $44, $06, $00, $00
                 .byte $49, $00, $00, $00, $4D, $06, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $09, $EF, $06, $ED, $06, $EE, $06, $EF
                 .byte $07, $EF, $07, $EF, $00, $EF, $07, $EF
                 .byte $07, $EF, $07, $EF, $07, $EF, $07, $EE
                 .byte $06, $EF, $07, $ED, $00, $00, $00, $00
                 .byte $00, $00, $0F, $00, $0F, $00, $0F, $00
                 .byte $0F, $00, $06, $00, $06, $00, $07, $EE
                 .byte $07, $EF, $06, $00, $07, $00, $06, $00
                 .byte $06, $00, $07, $00, $07, $00, $07, $00
                 .byte $06, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $EF, $4D, $EF, $4C
                 .byte $EF, $4C, $EE, $4A, $EF, $4B, $EF, $07
                 .byte $EF, $4B, $EF, $4A, $EF, $4A, $EF, $4B
                 .byte $EF, $06, $EF, $4A, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $3D, $03, $3C, $00
                 .byte $3D, $EF, $3C, $EE, $3C, $EF, $3D, $EE
                 .byte $3D, $EF, $24, $EF, $06, $EF, $10, $EF
                 .byte $00, $EF, $00, $EE, $00, $EE, $01, $EF
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $07, $06, $00, $07, $0C, $07, $12, $0F
                 .byte $EF, $07, $0F, $07, $77, $00, $EF, $06
                 .byte $3B, $07, $0F, $00, $00, $06, $00, $06
                 .byte $08, $07, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $0A, $06, $7B, $06, $0F, $06
                 .byte $00, $06, $00, $00, $0F, $00, $0F, $EF
                 .byte $0F, $00, $0F, $74, $0F, $FE, $0F, $3A
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $01, $06, $00, $00
                 .byte $00, $06, $00, $07, $00, $07, $3A, $07
                 .byte $3B, $07, $3B, $07, $3A, $06, $3A, $07
                 .byte $3B, $06, $3A, $06, $3B, $06, $3B, $07
                 .byte $00, $06, $00, $06, $00, $06, $00, $06
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $07, $00, $07, $00, $07, $00
                 .byte $06, $00, $07, $00, $07, $00, $07, $00
                 .byte $07, $00, $07, $00, $07, $00, $07, $00
                 .byte $06, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $0A, $06, $EE, $06, $0F, $06, $00, $06
                 .byte $72, $06, $00, $06, $36, $07, $00, $07
                 .byte $00, $06, $EF, $06, $08, $06, $0F, $07
                 .byte $75, $07, $0B, $06, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $0F, $00
                 .byte $0E, $B8, $4D, $0F, $EF, $00, $EF, $00
                 .byte $0F, $4C, $B9, $0F, $0E, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $5A, $00, $0A, $07
                 .byte $4A, $00, $00, $00, $0B, $FF, $00, $07
                 .byte $0F, $00, $00, $00, $0B, $75, $00, $06
                 .byte $EF, $00, $00, $00, $EF, $00, $00, $06
                 .byte $00, $00, $00, $0B, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $0F, $05, $0E, $05
                 .byte $0F, $05, $0F, $05, $0E, $00, $0E, $00
                 .byte $0F, $00, $08, $0F, $08, $0F, $09, $0F
                 .byte $08, $0F, $09, $0F, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $05, $0F, $00, $0F, $04, $0E, $EF
                 .byte $EF, $04, $EE, $0F, $0F, $04, $0F, $74
                 .byte $75, $05, $75, $EF, $EF, $04, $EF, $3A
                 .byte $3A, $00, $3A, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $0A, $00
                 .byte $0A, $3B, $3B, $0F, $3B, $0F, $3A, $0F
                 .byte $3B, $0F, $3B, $0F, $09, $05, $08, $00
                 .byte $09, $00, $08, $00, $00, $04, $00, $04
                 .byte $00, $05, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $EE, $04, $EE, $04
                 .byte $EE, $04, $EF, $04, $09, $04, $EF, $04
                 .byte $EF, $04, $EE, $04, $EF, $04, $EF, $04
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $07, $04, $EF, $04, $EF, $04
                 .byte $EE, $04, $EE, $00, $EF, $04, $EE, $04
                 .byte $EF, $04, $00, $04, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $EF, $04, $09, $04, $00, $00, $3A, $04
                 .byte $3A, $04, $3A, $04, $3A, $04, $3B, $04
                 .byte $3B, $00, $3B, $04, $3B, $04, $3A, $04
                 .byte $3B, $04, $3B, $04, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $EF, $04, $00, $04
                 .byte $00, $04, $00, $04, $00, $04, $EF, $04
                 .byte $75, $04, $49, $04, $0F, $04, $00, $04
                 .byte $0F, $04, $00, $04, $00, $04, $00, $04
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $BA, $00, $BB, $00
                 .byte $00, $00, $2B, $BA, $2B, $BA, $2B, $BB
                 .byte $2B, $BB, $00, $00, $77, $00, $76, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $0E, $00, $00, $00, $09, $02
                 .byte $08, $B9, $09, $00, $00, $00, $08, $00
                 .byte $08, $1A, $08, $00, $00, $00, $08, $00
                 .byte $08, $74, $08, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $0F, $00, $0F, $00
                 .byte $0F, $00, $0F, $00, $0F, $74, $0F, $74
                 .byte $00, $74, $00, $74, $00, $74, $00, $74
                 .byte $0D, $75, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $2C, $00
                 .byte $0F, $00, $73, $03, $09, $AD, $2D, $AC
                 .byte $2D, $AC, $00, $AC, $00, $AA, $CA, $AD
                 .byte $CA, $AA, $09, $AB, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $08, $AC, $00, $AC
                 .byte $0F, $AD, $EF, $AB, $75, $AB, $4B, $AB
                 .byte $00, $AA, $00, $AB, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $07, $03, $EF, $00
                 .byte $06, $00, $00, $00, $06, $00, $1D, $00
                 .byte $06, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $65, $02
                 .byte $65, $CF, $64, $CF, $65, $CF, $65, $CF
                 .byte $65, $CF, $65, $CF, $65, $CF, $64, $CF
                 .byte $65, $CF, $64, $00, $65, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $EF, $04
                 .byte $47, $04, $0F, $04, $65, $04, $35, $04
                 .byte $B7, $04, $0F, $04, $09, $04, $16, $04
                 .byte $0F, $04, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $06, $04
                 .byte $06, $FC, $06, $FC, $06, $FC, $06, $FC
                 .byte $06, $FC, $06, $FC, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $EF, $36, $06, $00, $EE, $36
                 .byte $06, $00, $47, $36, $06, $00, $EF, $36
                 .byte $06, $00, $EF, $36, $06, $00, $EF, $18
                 .byte $06, $00, $0F, $18, $06, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $FD, $DB, $00, $DB, $0F, $DB, $00, $DB
                 .byte $1F, $DB, $00, $DB, $65, $DB, $00, $DB
                 .byte $0F, $DB, $00, $DA, $0F, $00, $64, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_7FFA           .byte $00, $00, $00, $00, $03, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $03
                 .byte $0C, $03, $0F, $0F, $03, $00, $00, $C5
                 .byte $0F, $C5, $C5, $CF, $C5, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $53
                 .byte $F0, $53, $53, $F3, $53, $00, $00, $C0
                 .byte $30, $C0, $F0, $F0, $C0, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $03, $00, $03, $03, $00, $00, $00, $F1
                 .byte $03, $F1, $F1, $F3, $F1, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $54
                 .byte $FC, $54, $54, $FC, $54, $00, $00, $F0
                 .byte $0C, $F0, $FC, $FC, $F0, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $3C
                 .byte $C0, $3C, $FC, $FC, $3C, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $3C
                 .byte $03, $3C, $3F, $3F, $3C, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $0F
                 .byte $30, $0F, $3F, $3F, $0F, $00, $00, $15
                 .byte $3F, $15, $15, $3F, $15, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $4F
                 .byte $C0, $4F, $4F, $CF, $4F, $00, $00, $00
                 .byte $C0, $00, $C0, $C0, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $03, $00, $03, $03, $00, $00, $00, $F1
                 .byte $03, $F1, $F1, $F3, $F1, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $4F
                 .byte $C0, $4F, $4F, $CF, $4F, $00, $00, $00
                 .byte $C0, $00, $C0, $C0, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $3C
                 .byte $C0, $3C, $FC, $FC, $3C, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $53
                 .byte $F0, $53, $53, $F3, $53, $00, $00, $C0
                 .byte $30, $C0, $F0, $F0, $C0, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $0F
                 .byte $30, $0F, $3F, $3F, $0F, $00, $00, $15
                 .byte $3F, $15, $15, $3F, $15, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $54
                 .byte $FC, $54, $54, $FC, $54, $00, $00, $F0
                 .byte $0C, $F0, $FC, $FC, $F0, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $03
                 .byte $0C, $03, $0F, $0F, $03, $00, $00, $C5
                 .byte $0F, $C5, $C5, $CF, $C5, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $3C
                 .byte $03, $3C, $3F, $3F, $3C, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $0F
                 .byte $30, $0F, $3F, $3F, $0F, $00, $00, $15
                 .byte $3F, $15, $15, $3F, $15, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $3C
                 .byte $03, $3C, $3F, $3F, $3C, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $03
                 .byte $0C, $03, $0F, $0F, $03, $00, $00, $C5
                 .byte $0F, $C5, $C5, $CF, $C5, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $4F
                 .byte $C0, $4F, $4F, $CF, $4F, $00, $00, $00
                 .byte $C0, $00, $C0, $C0, $00, $00, $00, $00
                 .byte $03, $00, $03, $03, $00, $00, $00, $F1
                 .byte $03, $F1, $F1, $F3, $F1, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $53
                 .byte $F0, $53, $53, $F3, $53, $00, $00, $C0
                 .byte $30, $C0, $F0, $F0, $C0, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $3C
                 .byte $C0, $3C, $FC, $FC, $3C, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $54
                 .byte $FC, $54, $54, $FC, $54, $00, $00, $F0
                 .byte $0C, $F0, $FC, $FC, $F0, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $03, $0F
                 .byte $3C, $FF, $FC, $F1, $0C, $00, $C0, $3F
                 .byte $C0, $FF, $00, $55, $55, $00, $00, $FF
                 .byte $00, $FF, $30, $31, $31, $00, $0F, $F3
                 .byte $0C, $FF, $00, $55, $54, $00, $00, $C0
                 .byte $F0, $FC, $FC, $3C, $C0, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $03
                 .byte $0F, $3F, $3F, $3C, $03, $00, $F0, $CF
                 .byte $30, $FF, $00, $55, $15, $00, $00, $FF
                 .byte $00, $FF, $0C, $4C, $4C, $00, $03, $FC
                 .byte $03, $FF, $00, $55, $55, $00, $C0, $F0
                 .byte $3C, $FF, $3F, $4F, $30, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $03, $0F, $0F, $0F, $00, $00, $3C, $F3
                 .byte $CC, $FF, $C0, $15, $C5, $00, $00, $FF
                 .byte $00, $FF, $03, $53, $53, $00, $00, $FF
                 .byte $00, $FF, $00, $15, $15, $00, $F0, $3C
                 .byte $CF, $FF, $0F, $53, $4C, $00, $00, $00
                 .byte $00, $C0, $C0, $C0, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $03, $03, $03, $00, $00, $0F, $3C
                 .byte $F3, $FF, $F0, $C5, $31, $00, $00, $FF
                 .byte $00, $FF, $00, $54, $54, $00, $00, $FF
                 .byte $00, $FF, $C0, $C5, $C5, $00, $3C, $CF
                 .byte $33, $FF, $03, $54, $53, $00, $00, $00
                 .byte $C0, $F0, $F0, $F0, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FC, $F0
                 .byte $C0, $C0, $C0, $C0, $F0, $FC, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $3F, $0F
                 .byte $03, $03, $03, $03, $0F, $3F, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FC
                 .byte $F0, $F0, $F0, $F0, $FC, $FF, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $0F, $03
                 .byte $00, $00, $00, $00, $03, $0F, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FC, $FC, $FC, $FC, $FF, $FF, $C0, $00
                 .byte $00, $00, $00, $00, $00, $C0, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $03, $00
                 .byte $00, $00, $00, $00, $00, $03, $FF, $FF
                 .byte $3F, $3F, $3F, $3F, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $F0, $C0
                 .byte $00, $00, $00, $00, $C0, $F0, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $FF, $3F
                 .byte $0F, $0F, $0F, $0F, $3F, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FC
                 .byte $F0, $F0, $F0, $F0, $FC, $FF, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $FF, $3F
                 .byte $0F, $0F, $0F, $0F, $3F, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FC, $FC, $FC, $FC, $FF, $FF, $C0, $00
                 .byte $00, $00, $00, $00, $00, $C0, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $3F, $0F
                 .byte $03, $03, $03, $03, $0F, $3F, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $F0, $C0
                 .byte $00, $00, $00, $00, $C0, $F0, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $0F, $03
                 .byte $00, $00, $00, $00, $03, $0F, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FC, $F0
                 .byte $C0, $C0, $C0, $C0, $F0, $FC, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $03, $00
                 .byte $00, $00, $00, $00, $00, $03, $FF, $FF
                 .byte $3F, $3F, $3F, $3F, $FF, $FF, $F0, $C0
                 .byte $00, $00, $00, $00, $C0, $F0, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $03, $00
                 .byte $00, $00, $00, $00, $00, $03, $FF, $FF
                 .byte $3F, $3F, $3F, $3F, $FF, $FF, $FC, $F0
                 .byte $C0, $C0, $C0, $C0, $F0, $FC, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $FF, $3F
                 .byte $0F, $0F, $0F, $0F, $3F, $FF, $FF, $FC
                 .byte $F0, $F0, $F0, $F0, $FC, $FF, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $3F, $0F
                 .byte $03, $03, $03, $03, $0F, $3F, $FF, $FF
                 .byte $FC, $FC, $FC, $FC, $FF, $FF, $C0, $00
                 .byte $00, $00, $00, $00, $00, $C0, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $0F, $03
                 .byte $00, $00, $00, $00, $03, $0F, $FF, $FF
                 .byte $FF, $FC, $FC, $FC, $FF, $FF, $F0, $C0
                 .byte $00, $00, $00, $00, $00, $F3, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $03, $3F, $0F
                 .byte $03, $00, $00, $00, $03, $3F, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FC, $F0
                 .byte $C0, $00, $00, $00, $C0, $FC, $00, $00
                 .byte $00, $00, $00, $00, $00, $C0, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $0F, $03
                 .byte $00, $00, $00, $00, $00, $CF, $FF, $FF
                 .byte $FF, $3F, $3F, $3F, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FC
                 .byte $F0, $C0, $C0, $C0, $F0, $FF, $00, $00
                 .byte $00, $00, $00, $00, $00, $30, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $03, $00
                 .byte $00, $00, $00, $00, $00, $33, $FF, $FF
                 .byte $3F, $0F, $0F, $0F, $3F, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FC, $F0, $F0, $F0, $FC, $FF, $C0, $00
                 .byte $00, $00, $00, $00, $00, $CC, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $0C, $FF, $3F
                 .byte $0F, $03, $03, $03, $0F, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $3F
                 .byte $3F, $3F, $3F, $3F, $3F, $00, $00, $FC
                 .byte $FC, $FC, $FC, $FC, $FC, $00, $00, $3F
                 .byte $3F, $3F, $3F, $3F, $3F, $00, $00, $FC
                 .byte $FC, $FC, $FC, $FC, $FC, $00, $00, $15
                 .byte $15, $15, $15, $15, $15, $00, $00, $54
                 .byte $54, $54, $54, $54, $54, $00, $00, $2A
                 .byte $2A, $2A, $2A, $2A, $2A, $00, $00, $A8
                 .byte $A8, $A8, $A8, $A8, $A8, $00, $00, $3F
                 .byte $3F, $3F, $3F, $3F, $3F, $00, $00, $FC
                 .byte $FC, $FC, $FC, $FD, $FD, $15, $00, $3F
                 .byte $3F, $3F, $3F, $3F, $3F, $01, $00, $FC
                 .byte $FC, $FD, $FD, $FD, $FD, $55, $00, $3F
                 .byte $3F, $3F, $3F, $3F, $3F, $55, $00, $FD
                 .byte $FD, $FD, $FD, $FD, $FD, $55, $55, $7F
                 .byte $7F, $7F, $7F, $7F, $7F, $55, $55, $FD
                 .byte $FD, $FD, $FD, $FD, $FD, $55, $55, $55
                 .byte $55, $55, $55, $55, $55, $55, $55, $55
                 .byte $55, $55, $55, $55, $55, $55, $00, $00
                 .byte $00, $00, $01, $01, $01, $01, $00, $15
                 .byte $55, $50, $40, $4A, $2A, $28, $00, $54
                 .byte $55, $05, $01, $A1, $A8, $28, $00, $00
                 .byte $00, $00, $40, $40, $40, $40, $00, $55
                 .byte $55, $00, $00, $AA, $AA, $00, $02, $02
                 .byte $02, $02, $00, $00, $00, $00, $14, $15
                 .byte $85, $80, $A0, $AA, $2A, $00, $14, $54
                 .byte $52, $02, $0A, $AA, $A8, $00, $80, $80
                 .byte $80, $80, $00, $00, $00, $00, $00, $55
                 .byte $55, $00, $00, $AA, $AA, $00, $00, $3F
                 .byte $3F, $3F, $3F, $3F, $3F, $00, $00, $FC
                 .byte $FC, $FC, $FC, $FC, $FC, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $01
                 .byte $00, $01, $05, $05, $05, $05, $00, $28
                 .byte $00, $28, $28, $28, $28, $28, $05, $00
                 .byte $05, $00, $05, $00, $05, $00, $28, $00
                 .byte $28, $00, $28, $00, $28, $00, $05, $05
                 .byte $05, $05, $01, $00, $01, $00, $28, $28
                 .byte $28, $28, $28, $00, $28, $00, $01, $01
                 .byte $01, $01, $01, $01, $01, $01, $28, $28
                 .byte $28, $28, $28, $28, $28, $28, $00, $14
                 .byte $00, $14, $14, $14, $14, $14, $00, $80
                 .byte $00, $80, $A0, $A0, $A0, $A0, $14, $00
                 .byte $14, $00, $14, $00, $14, $00, $A0, $00
                 .byte $A0, $00, $A0, $00, $A0, $00, $14, $14
                 .byte $14, $14, $14, $00, $14, $00, $A0, $A0
                 .byte $A0, $A0, $80, $00, $80, $00, $14, $14
                 .byte $14, $14, $14, $14, $14, $14, $80, $80
                 .byte $80, $80, $80, $80, $80, $80, $05, $15
                 .byte $2A, $00, $00, $2A, $2A, $0A, $00, $14
                 .byte $28, $00, $00, $28, $28, $28, $50, $54
                 .byte $A8, $00, $00, $A8, $A8, $A0, $05, $15
                 .byte $2A, $00, $00, $2A, $2A, $0A, $00, $14
                 .byte $28, $00, $00, $28, $28, $28, $50, $54
                 .byte $A8, $00, $00, $A8, $A8, $A0, $AA, $AA
                 .byte $A8, $A8, $A2, $00, $A2, $A2, $0A, $20
                 .byte $8A, $8A, $A2, $A2, $08, $A0, $A2, $A2
                 .byte $00, $80, $80, $00, $00, $00, $A0, $02
                 .byte $02, $0A, $0A, $2A, $20, $0A, $A2, $A2
                 .byte $00, $80, $80, $00, $00, $00, $A0, $00
                 .byte $02, $02, $0A, $0A, $20, $0A, $AA, $AA
                 .byte $A8, $A8, $A2, $00, $A2, $A2, $0A, $20
                 .byte $8A, $8A, $A2, $A2, $08, $A0, $AA, $AA
                 .byte $A8, $A8, $A2, $00, $A2, $A2, $0A, $20
                 .byte $8A, $8A, $A2, $A2, $08, $A0, $A2, $A2
                 .byte $00, $80, $80, $00, $00, $00, $A0, $00
                 .byte $02, $02, $0A, $0A, $20, $0A, $A2, $A2
                 .byte $00, $80, $80, $00, $00, $00, $A0, $08
                 .byte $02, $02, $0A, $0A, $20, $0A, $AA, $AA
                 .byte $A8, $A8, $A2, $00, $A2, $A2, $0A, $20
                 .byte $8A, $8A, $A2, $A2, $08, $A0, $0A, $20
                 .byte $8A, $8A, $A2, $A2, $08, $A0, $A0, $A3
                 .byte $0C, $83, $8F, $0F, $03, $00, $00, $C5
                 .byte $0F, $C5, $C5, $CF, $C5, $00, $00, $55
                 .byte $FF, $55, $55, $FF, $55, $00, $00, $53
                 .byte $F0, $53, $53, $F3, $53, $00, $22, $C2
                 .byte $30, $C0, $F0, $F0, $C0, $00, $A0, $00
                 .byte $02, $02, $0A, $0A, $20, $0A, $AA, $AA
                 .byte $A8, $A8, $A2, $00, $A2, $A2, $88, $22
                 .byte $88, $20, $80, $00, $80, $22, $08, $20
                 .byte $88, $02, $80, $22, $08, $20, $80, $22
                 .byte $00, $00, $80, $00, $00, $00, $80, $02
                 .byte $00, $02, $08, $22, $00, $02, $80, $22
                 .byte $00, $00, $80, $00, $00, $00, $80, $00
                 .byte $00, $02, $08, $02, $00, $02, $88, $22
                 .byte $88, $20, $80, $00, $80, $22, $08, $20
                 .byte $88, $02, $80, $22, $08, $20, $88, $22
                 .byte $88, $20, $80, $00, $80, $22, $08, $20
                 .byte $88, $02, $80, $22, $08, $20, $80, $22
                 .byte $00, $00, $80, $00, $00, $00, $80, $00
                 .byte $00, $02, $08, $02, $00, $02, $80, $22
                 .byte $00, $00, $80, $00, $00, $00, $80, $00
                 .byte $00, $02, $08, $02, $00, $02, $88, $22
                 .byte $88, $20, $80, $00, $80, $22, $08, $20
                 .byte $88, $02, $80, $22, $08, $20, $19, $19
                 .byte $25, $A8, $68, $98, $64, $14, $A0, $00
                 .byte $02, $02, $0A, $0A, $20, $02, $05, $05
                 .byte $0A, $00, $00, $00, $00, $00, $A0, $00
                 .byte $02, $42, $A2, $52, $68, $56, $66, $55
                 .byte $25, $16, $16, $8A, $2A, $96, $56, $96
                 .byte $40, $00, $00, $00, $00, $00, $A0, $00
                 .byte $02, $02, $0A, $0A, $20, $0A, $00, $80
                 .byte $80, $00, $00, $00, $80, $80, $80, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $32
                 .byte $32, $05, $06, $06, $05, $19, $19, $19
                 .byte $25, $AA, $6A, $9A, $65, $15, $A2, $A2
                 .byte $00, $80, $80, $00, $00, $00, $00, $00
                 .byte $00, $80, $80, $80, $80, $60, $A1, $63
                 .byte $A3, $A8, $A8, $98, $58, $A1, $A0, $08
                 .byte $02, $02, $0A, $0A, $20, $0A, $AA, $AA
                 .byte $A8, $A8, $A2, $00, $A2, $A2, $A2, $A2
                 .byte $00, $80, $80, $00, $00, $00, $AA, $AA
                 .byte $A8, $A8, $A2, $00, $A2, $A2, $00, $32
                 .byte $32, $05, $06, $06, $05, $19, $19, $19
                 .byte $25, $AA, $6A, $9A, $65, $15, $A2, $A2
                 .byte $00, $80, $80, $00, $00, $00, $00, $00
                 .byte $00, $80, $80, $80, $80, $60, $A1, $63
                 .byte $A3, $A8, $A8, $98, $58, $A1, $A0, $08
                 .byte $02, $02, $0A, $0A, $20, $0A, $A2, $A2
                 .byte $00, $80, $80, $00, $00, $00, $AA, $AA
                 .byte $A8, $A8, $A2, $00, $A2, $A2, $AA, $AA
                 .byte $A8, $A8, $A2, $00, $A2, $A2, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
L_8BEA           .byte $00, $00, $00, $00, $00, $00, $04, $11
L_8BF2           .byte $11, $04, $11, $11, $04, $11, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $1C
                 .byte $22, $5D, $51, $5D, $22, $1C, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $06, $0C, $18, $30, $60, $C0, $00, $08
                 .byte $0C, $7E, $7F, $7E, $0C, $08, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $7C
                 .byte $FE, $C6, $C6, $C6, $FE, $7C, $00, $38
                 .byte $38, $18, $18, $18, $3C, $3C, $00, $FC
                 .byte $FE, $CE, $1C, $38, $7E, $FE, $00, $7C
                 .byte $FE, $C6, $0C, $C6, $FE, $7C, $00, $C0
                 .byte $C0, $CC, $FE, $7E, $0C, $0C, $00, $FE
                 .byte $FE, $C0, $7C, $06, $FE, $FC, $00, $7C
                 .byte $FE, $C0, $FC, $C6, $FE, $7C, $00, $FC
                 .byte $FE, $06, $06, $06, $06, $06, $00, $7C
                 .byte $FE, $C6, $7C, $C6, $FE, $7C, $00, $7C
                 .byte $FE, $C6, $7E, $06, $7E, $7C, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $FC
                 .byte $FE, $06, $DE, $C6, $C6, $C6, $00, $FC
                 .byte $FE, $06, $DC, $C6, $C6, $FC, $00, $FC
                 .byte $FE, $06, $C0, $C6, $FE, $FC, $00, $FC
                 .byte $FE, $06, $C6, $C6, $FE, $FC, $00, $FE
                 .byte $FE, $00, $F0, $C0, $FE, $FE, $00, $FE
                 .byte $FE, $00, $F0, $C0, $C0, $C0, $00, $FC
                 .byte $FE, $00, $CE, $C6, $FE, $FC, $00, $C6
                 .byte $C6, $06, $DE, $C6, $C6, $C6, $00, $3C
                 .byte $3C, $00, $18, $18, $3C, $3C, $00, $1E
                 .byte $1E, $00, $06, $C6, $FE, $7C, $00, $C6
                 .byte $C6, $0C, $F8, $CC, $C6, $C6, $00, $C0
                 .byte $C0, $00, $C0, $C0, $FE, $FE, $00, $EE
                 .byte $FE, $16, $D6, $C6, $C6, $C6, $00, $FC
                 .byte $FE, $06, $C6, $C6, $C6, $C6, $00, $FC
                 .byte $FE, $06, $C6, $C6, $FE, $7C, $00, $FC
                 .byte $FE, $06, $C6, $FC, $E0, $E0, $00, $FC
                 .byte $FE, $06, $C6, $FE, $7C, $0E, $00, $FC
                 .byte $FE, $06, $FE, $FC, $CE, $C6, $00, $FC
                 .byte $FE, $00, $FC, $06, $FE, $FC, $00, $FE
                 .byte $FE, $00, $38, $38, $38, $38, $00, $C6
                 .byte $C6, $06, $C6, $C6, $FE, $7C, $00, $C6
                 .byte $C6, $06, $C6, $C6, $7C, $38, $00, $C6
                 .byte $C6, $06, $D6, $FE, $FE, $EE, $00, $C6
                 .byte $C6, $6C, $38, $6C, $C6, $C6, $00, $C6
                 .byte $C6, $06, $EE, $7C, $38, $38, $00, $FE
                 .byte $FE, $00, $38, $70, $FE, $FE, $00, $00
                 .byte $00, $00, $00, $00, $18, $18, $00, $66
                 .byte $66, $66, $00, $00, $00, $00, $00, $18
                 .byte $18, $18, $18, $18, $00, $18, $00, $7C
                 .byte $FE, $C6, $06, $0C, $00, $0C, $00, $10
                 .byte $30, $7F, $7F, $30, $10, $00
                 lda L_367B+4
                 beq L_8E10
                 cmp #$06
                 beq L_8E17
                 ldx #$7A
                 ldy #$8E
                 jmp L_8E1B
L_8E10           ldx #$24
                 ldy #$8E
                 jmp L_8E1B
L_8E17           ldx #$37
                 ldy #$8E
L_8E1B           stx L_453E+1
                 sty L_453E+2
                 jmp L_3A3C
                 jsr L_8ED4
                 ldx L_2DFB+6
                 jsr L_8EBD
                 sta L_4405+4
                 lda PTRIG0,x
                 sta L_4517
                 rts
                 jsr L_8EA5+2
                 lda CH
                 and #$3F
                 cmp #$17
                 beq L_8E70
                 cmp #$16
                 beq L_8E75
                 lda #$0F
L_8E49           ldx KEYDEL
                 cpx #$03
                 beq L_8E55
                 ldx #$FF
                 stx CH
L_8E55           ldx SKSTAT
                 cpx #$F7
                 beq L_8E68
                 cpx #$F3
                 beq L_8E68
                 ldx #$01
                 stx L_4517
                 jmp L_8E89
L_8E68           ldx #$00
                 stx L_4517
                 jmp L_8E89
L_8E70           lda #$0B
                 jmp L_8E49
L_8E75           lda #$07
                 jmp L_8E49
                 jsr L_8EA5+2
                 ldx L_2DFB+6
                 lda STRIG0,x
                 sta L_4517
                 lda STICK0,x
L_8E89           cmp #$0B
                 beq L_8E9C
                 cmp #$07
                 bne L_8E99
                 ldx L_4405+4
                 cpx L_8EA5+1
                 bpl L_8EA4
L_8E99           jmp L_45C0
L_8E9C           ldx L_4405+4
                 cpx L_8EA5
                 bpl L_8E99
L_8EA4           rts
L_8EA5           asl $A272,x
                 asl L_729A+6,x
                 lda L_4A01+2
                 cmp #$1A
                 beq L_8EB6
                 ldx #$21
                 ldy #$6C
L_8EB6           stx L_8EA5
                 sty L_8EA5+1
                 rts
L_8EBD           lda PADDL0,x
                 eor #$FF
                 cmp L_8EA5
                 bcs L_8ECB
                 lda L_8EA5
                 rts
L_8ECB           cmp L_8EA5+1
                 bcc L_8ED3
                 lda L_8EA5+1
L_8ED3           rts
L_8ED4           ldx #$1A
                 ldy #$72
                 lda L_4A01+2
                 cmp #$1A
                 beq L_8EE3
                 ldx #$1F
                 ldy #$6C
L_8EE3           stx L_8EA5
                 sty L_8EA5+1
                 rts
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $10, $10
                 .byte $10, $10, $10, $10, $00, $00, $00, $00
L_8F0A           .byte $00, $00, $00, $00, $00, $00, $00
                 inc LIVES
                 lda LIVES
                 cmp #$09
                 bcc L_8F1D
                 lda #$09
L_8F1D           clc
                 adc #$10
                 sta $9F7D
                 lda #$00
                 sta L_4DFE+6
                 sta L_4FFE+4
                 rts
L_8F2C           lda #$00
                 sta L_8F81
                 ldy #$50
                 ldx #$8F
                 lda #$07
                 jsr L_1F00
                 lda #$7E
                 sta $9EE2
                 sta $9F0A
                 sta $9F32
                 lda #$02
                 sta L_4FFE+4
                 lda #$01
                 sta L_8F0A+6
                 rts
                 pha
                 txa
                 pha
                 tya
                 pha
                 inc L_8F81
                 lda L_8F81
                 cmp #$02
                 bcc L_8F79
                 lda #$00
                 sta L_8F81
                 ldx #$00
                 lda L_8BF2+5
                 tay
                 ldx #$07
L_8F6C           lda L_8BEA+5,x
                 sta L_8BEA+6,x
                 dex
                 bne L_8F6C
                 tya
                 sta L_8BEA+6
L_8F79           pla
                 tay
                 pla
                 tax
                 pla
                 jmp XITVBV
L_8F81           brk
                 lda L_8F0A+6
                 beq L_8F8E
                 lda L_4405+4
                 cmp #$70
                 bpl L_8F91
L_8F8E           jmp L_3800
L_8F91           lda L_3C23+2
                 beq L_8F91
                 jsr L_283D
                 cmp #$83
                 beq L_8FB5
                 inc L_4405+4
                 jsr L_44CB
                 jsr L_44F1
                 ldx #$00
L_8FA8           ldy #$00
L_8FAA           iny
                 bne L_8FAA
                 inx
                 cpx #$16
                 bne L_8FA8
                 jmp L_8F91
L_8FB5           lda #$00
                 sta L_8F0A+6
                 jmp L_3822
                 .byte $00, $00, $00, $4E, $5B, $40, $8C, $62
                 .byte $51, $62, $07, $22, $28, $48, $08, $48
                 .byte $5B, $94, $48, $43, $38, $39, $17, $1A
                 .byte $51, $5E, $4B, $42, $13, $4E, $40, $5C
                 .byte $4E, $5C, $25, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $AA, $AA, $A8, $A8, $A2
                 .byte $00, $A2, $A2, $0A, $20, $8A, $8A, $A2
                 .byte $A2, $08, $A0, $A2, $A2, $00, $80, $80
                 .byte $00, $00, $00, $A0, $02, $02, $0A, $0A
                 .byte $2A, $20, $0A, $A2, $A2, $00, $80, $80
                 .byte $00, $00, $00, $A0, $00, $02, $02, $0A
                 .byte $0A, $20, $0A, $AA, $AA, $A8, $A8, $A2
                 .byte $00, $A2, $A2, $0A, $20, $8A, $8A, $A2
                 .byte $A2, $08, $A0, $AA, $AA, $A8, $A8, $A2
                 .byte $00, $A2, $A2, $0A, $20, $8A, $8A, $A2
                 .byte $A2, $08, $A0, $A2, $A2, $00, $80, $80
                 .byte $00, $00, $00, $A0, $00, $02, $02, $0A
                 .byte $0A, $20, $0A, $A2, $A2, $00, $80, $80
                 .byte $00, $00, $00, $A0, $08, $02, $02, $0A
                 .byte $0A, $20, $0A, $AA, $AA, $A8, $A8, $A2
                 .byte $00, $A2, $A2, $0A, $20, $8A, $8A, $A2
                 .byte $A2, $08, $A0, $A8, $55, $09, $09, $24
                 .byte $24, $92, $91, $00, $82, $69, $14, $21
                 .byte $98, $46, $06, $90, $42, $69, $14, $80
                 .byte $60, $6A, $05, $29, $94, $42, $09, $24
                 .byte $24, $90, $40, $24, $00, $90, $90, $91
                 .byte $91, $91, $24, $06, $18, $18, $61, $80
                 .byte $81, $80, $60, $00, $14, $69, $82, $88
                 .byte $88, $62, $62, $18, $06, $46, $90, $24
                 .byte $24, $90, $90, $24, $09, $09, $24, $90
                 .byte $26, $06, $06, $50, $A4, $09, $02, $50
                 .byte $A5, $0A, $10, $60, $18, $58, $A6, $02
                 .byte $02, $62, $62, $90, $90, $24, $24, $49
                 .byte $49, $64, $65, $18, $18, $61, $61, $60
                 .byte $60, $18, $60, $64, $48, $80, $86, $18
                 .byte $60, $61, $00, $60, $18, $18, $18, $18
                 .byte $60, $86, $66, $24, $09, $09, $09, $24
                 .byte $90, $24, $24, $15, $1A, $1A, $1A, $1A
                 .byte $1A, $55, $00, $55, $AA, $AA, $AA, $AA
                 .byte $AA, $55, $00, $51, $91, $91, $91, $91
                 .byte $90, $50, $00, $55, $A9, $A9, $A9, $55
                 .byte $10, $15, $00, $55, $AA, $AA, $AA, $AA
                 .byte $AA, $AA, $56, $50, $91, $91, $91, $90
                 .byte $91, $91, $91, $54, $64, $A4, $65, $64
                 .byte $64, $A5, $54, $55, $6A, $6A, $6A, $6A
                 .byte $6A, $6A, $55, $06, $06, $06, $06, $06
                 .byte $06, $06, $06, $90, $91, $91, $90, $91
                 .byte $91, $90, $90, $00, $55, $6A, $6A, $6A
                 .byte $6A, $6A, $6A, $00, $55, $A9, $A9, $A9
                 .byte $A9, $A9, $A9, $06, $05, $00, $15, $1A
                 .byte $1A, $15, $00, $90, $50, $00, $54, $A4
                 .byte $A4, $54, $00, $6A, $6A, $6A, $6A, $66
                 .byte $6A, $55, $00, $A9, $99, $55, $55, $99
                 .byte $A9, $55, $00, $00, $15, $10, $15, $06
                 .byte $06, $06, $06, $00, $81, $81, $81, $81
                 .byte $81, $81, $81, $40, $90, $20, $A0, $00
                 .byte $00, $00, $00, $18, $18, $18, $18, $18
                 .byte $18, $18, $18, $06, $06, $06, $06, $06
                 .byte $06, $05, $05, $81, $81, $96, $AA, $00
                 .byte $00, $90, $10, $54, $A9, $0A, $00, $05
                 .byte $0A, $00, $05, $18, $58, $A8, $18, $58
                 .byte $A8, $18, $58, $55, $AA, $00, $AA, $00
                 .byte $55, $00, $00, $90, $00, $02, $09, $00
                 .byte $64, $64, $A0, $00, $00, $80, $60, $00
                 .byte $19, $19, $0A, $A9, $0A, $00, $16, $18
                 .byte $19, $18, $00, $05, $04, $04, $04, $04
                 .byte $04, $04, $54, $AA, $A8, $21, $2A, $15
                 .byte $10, $15, $15, $AA, $2A, $68, $A8, $50
                 .byte $01, $55, $55, $14, $14, $54, $54, $40
                 .byte $54, $40, $55, $FF, $F0, $C0, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $FF, $FF, $0F, $03, $03, $03
                 .byte $03, $03, $03, $03, $03, $03, $03, $03
                 .byte $0F, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FC, $F0, $C0, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $C0
                 .byte $C0, $F0, $F0, $0F, $03, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $03, $03, $0F, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FC, $F0, $C0, $C0
                 .byte $C0, $C0, $C0, $C0, $C0, $C0, $F0, $F0
                 .byte $F0, $FC, $FF, $03, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $03, $03, $0F, $FF, $FF, $FF, $3F, $3F
                 .byte $3F, $3F, $3F, $3F, $3F, $3F, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FC, $FC
                 .byte $FC, $F0, $F0, $F0, $FC, $FC, $FC, $FC
                 .byte $FF, $FF, $FF, $FF, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $03, $CF, $FF, $3F, $3F, $3F, $3F
                 .byte $0F, $0F, $0F, $0F, $0F, $3F, $3F, $3F
                 .byte $FF, $FF, $FF, $FC, $F0, $F0, $C0, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $C0, $FC, $FF, $3F, $3F, $0F, $0F
                 .byte $03, $03, $03, $03, $03, $03, $03, $0F
                 .byte $0F, $0F, $3F, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $C3, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $C0
                 .byte $F0, $FF, $FF, $FF, $3F, $03, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $C3, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $F3, $C0, $C0, $C0
                 .byte $C0, $C0, $C0, $C0, $C0, $C0, $C0, $F0
                 .byte $FF, $FF, $FF, $FF, $C3, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $C0, $FF, $FF, $FF, $FF, $FF, $3F, $3F
                 .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
                 .byte $3F, $FF, $FF, $FF, $FC, $F0, $F0, $F0
                 .byte $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
                 .byte $FC, $FF, $FF, $FF, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $FF, $FF, $FF, $FF, $3F, $0F, $0F
                 .byte $0F, $0F, $0F, $0F, $0F, $0F, $0F, $3F
                 .byte $FF, $FF, $FF, $F0, $C0, $C0, $C0, $C0
                 .byte $C0, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $C3, $FF, $0F, $03, $03, $03, $03
                 .byte $03, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $C3, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $3F, $3F, $3F, $3F, $3F, $3F
                 .byte $3F, $FF, $FF, $FC, $F0, $C0, $C0, $C0
                 .byte $C0, $C0, $C0, $C0, $C0, $C0, $C0, $F0
                 .byte $FC, $FF, $FF, $3F, $0F, $03, $03, $03
                 .byte $03, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $C3, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $3F, $3F, $3F, $3F, $3F, $3F
                 .byte $3F, $FF, $FF, $FF, $FF, $FC, $F0, $F0
                 .byte $F0, $F0, $F0, $FC, $FC, $FC, $FC, $FF
                 .byte $FF, $FF, $FF, $FF, $0F, $03, $00, $00
                 .byte $00, $00, $03, $00, $00, $00, $00, $00
                 .byte $00, $C0, $F3, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $3F, $0F, $0F, $0F, $0F
                 .byte $3F, $FF, $FF, $FF, $FF, $FC, $F0, $F0
                 .byte $F0, $F0, $FC, $FC, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $03, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $C0, $F0, $FF, $FF, $FF, $3F, $0F, $0F
                 .byte $03, $03, $03, $03, $0F, $0F, $0F, $0F
                 .byte $3F, $FF, $FF, $FF, $C3, $00, $00, $00
                 .byte $00, $00, $00, $C0, $C0, $C0, $C0, $F0
                 .byte $FC, $FF, $FF, $FF, $C3, $00, $00, $00
                 .byte $00, $00, $00, $03, $03, $03, $03, $0F
                 .byte $3F, $FF, $FF, $FF, $FF, $FF, $3F, $3F
                 .byte $3F, $3F, $3F, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $F0, $C0
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $C0, $F0, $FF, $FF, $FF, $0F, $03, $00
                 .byte $00, $00, $00, $03, $0F, $0F, $0F, $0F
                 .byte $3F, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FC
                 .byte $FC, $FC, $F0, $F0, $C0, $C0, $C0, $C0
                 .byte $F0, $FC, $FF, $FF, $F0, $C0, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $03, $03
                 .byte $0F, $3F, $FF, $FF, $FF, $3F, $0F, $0F
                 .byte $0F, $0F, $0F, $0F, $3F, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FC, $F0, $F0, $F0, $F0, $F0, $FC
                 .byte $FF, $FF, $FF, $F0, $C0, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $0F, $FF, $FF, $FF, $3F, $0F, $0F, $0F
                 .byte $0F, $0F, $0F, $0F, $0F, $0F, $3F, $FF
                 .byte $FF, $FF, $FF, $FC, $F0, $F0, $C0, $C0
                 .byte $C0, $C0, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $FF, $3F, $3F, $0F, $0F
                 .byte $0F, $0F, $03, $03, $03, $03, $00, $00
                 .byte $00, $00, $03, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FC, $F0, $F0, $F0, $F0
                 .byte $F0, $F0, $F0, $F0, $F0, $F0, $C0, $C0
                 .byte $00, $00, $C0, $3F, $3F, $3F, $0F, $0F
                 .byte $03, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $03, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $3F, $3F, $3F
                 .byte $3F, $FF, $FF, $FC, $FC, $FC, $FC, $FC
                 .byte $FC, $FC, $FF, $FF, $FF, $FF, $FC, $F0
                 .byte $C0, $C0, $C0, $0F, $03, $03, $00, $00
                 .byte $00, $00, $00, $00, $00, $C0, $00, $00
                 .byte $00, $00, $00, $FF, $FF, $FF, $FF, $FF
                 .byte $3F, $0F, $0F, $3F, $3F, $3F, $0F, $0F
                 .byte $0F, $3F, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FC, $FC, $FC, $03, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $C0, $00
                 .byte $00, $00, $00, $FF, $FF, $FF, $3F, $3F
                 .byte $0F, $0F, $0F, $0F, $0F, $0F, $03, $03
                 .byte $03, $03, $0F, $FC, $F0, $F0, $C0, $C0
                 .byte $C0, $C0, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $FF, $3F, $3F, $0F, $0F
                 .byte $0F, $0F, $03, $03, $03, $03, $00, $00
                 .byte $00, $00, $03, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FC, $F0, $F0
                 .byte $C0, $C0, $C0, $C0, $F0, $C0, $00, $00
                 .byte $00, $C0, $F0, $03, $03, $03, $03, $03
                 .byte $03, $03, $03, $03, $03, $03, $03, $00
                 .byte $00, $00, $00, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $3F, $3F, $FF, $FF, $FF, $FC, $FC, $F0
                 .byte $F0, $C0, $C0, $C0, $F0, $F0, $C0, $C0
                 .byte $C0, $F0, $FC, $03, $03, $03, $03, $03
                 .byte $03, $03, $03, $03, $03, $0F, $03, $00
                 .byte $00, $00, $00, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $3F, $0F, $0F, $FF, $FF, $FF, $FF, $FF
                 .byte $FC, $FC, $FC, $FC, $F0, $F0, $F0, $F0
                 .byte $FC, $FF, $FF, $FC, $F0, $F0, $C0, $C0
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $C0, $FF, $3F, $3F, $3F, $3F
                 .byte $3F, $3F, $3F, $FF, $3F, $0F, $0F, $03
                 .byte $03, $0F, $3F, $FC, $F0, $F0, $F0, $C0
                 .byte $C0, $C0, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $FF, $3F, $3F, $3F, $0F
                 .byte $0F, $0F, $03, $03, $03, $00, $00, $00
                 .byte $00, $00, $00, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FC, $F0, $F0, $F0, $F0
                 .byte $F0, $F0, $F0, $F0, $C0, $C0, $C0, $C0
                 .byte $C0, $C0, $C0, $3F, $0F, $03, $03, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $03, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $3F, $3F, $3F, $0F, $0F, $0F
                 .byte $0F, $3F, $FF, $FF, $FF, $FF, $FC, $FC
                 .byte $FC, $FC, $FC, $FC, $F0, $F0, $F0, $F0
                 .byte $C0, $C0, $F0, $03, $03, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $FF, $FF, $FF, $FF, $FF
                 .byte $3F, $3F, $3F, $0F, $0F, $03, $03, $03
                 .byte $03, $0F, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FC, $FC, $FC
                 .byte $FC, $FC, $FF, $FC, $F0, $F0, $F0, $C0
                 .byte $C0, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $F0, $FF, $3F, $3F, $3F, $3F
                 .byte $0F, $0F, $0F, $0F, $03, $00, $00, $00
                 .byte $00, $00, $03, $FF, $FC, $FC, $F0, $F0
                 .byte $C0, $C0, $00, $00, $00, $00, $00, $C0
                 .byte $F0, $FC, $FF, $03, $03, $03, $03, $03
                 .byte $03, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FC, $C0, $00
                 .byte $00, $00, $00, $C0, $C0, $F0, $F0, $F0
                 .byte $F0, $FC, $FF, $FF, $C0, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $03
                 .byte $03, $0F, $0F, $FF, $3F, $0F, $0F, $0F
                 .byte $0F, $3F, $3F, $3F, $3F, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FC, $F0, $F0, $F0, $F0
                 .byte $F0, $F0, $F0, $FC, $FC, $FC, $FC, $FC
                 .byte $FC, $FC, $FF, $3F, $03, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $03
                 .byte $0F, $3F, $FF, $FF, $FF, $3F, $0F, $03
                 .byte $03, $03, $03, $0F, $3F, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FC, $FC, $FC, $FC, $FC
                 .byte $FC, $FC, $FC, $F3, $C0, $C0, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $0F, $FF, $FF, $FF, $3F, $3F
                 .byte $0F, $0F, $03, $03, $00, $00, $00, $03
                 .byte $0F, $FF, $FF, $00, $30, $C0, $00, $00
                 .byte $00, $F0, $C0, $00, $C0, $C0, $C0, $00
                 .byte $00, $00, $C0, $3F, $03, $00, $00, $00
                 .byte $03, $00, $00, $00, $00, $00, $00, $00
                 .byte $03, $0F, $0C, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $C0, $00, $00, $C0, $00
                 .byte $03, $03, $03, $03, $0F, $00, $C0, $C0
                 .byte $F0, $FF, $FF, $19, $0C, $00, $00, $C0
                 .byte $F0, $F0, $F0, $F0, $C0, $C0, $00, $00
                 .byte $00, $30, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $3C, $00, $00, $03, $0F
                 .byte $0F, $0F, $03, $03, $0F, $00, $00, $C0
                 .byte $F0, $FC, $FF, $FC, $00, $00, $C0, $F0
                 .byte $FC, $FC, $FF, $FF, $FC, $FC, $30, $30
                 .byte $00, $F3, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $C3, $03, $0F, $0F, $3F
                 .byte $FF, $FF, $FF, $FF, $3F, $0F, $0F, $0F
                 .byte $03, $C0, $F0, $03, $C0, $F0, $FC, $FF
                 .byte $FF, $FF, $FF, $FF, $FC, $F0, $F0, $CC
                 .byte $03, $F3, $CF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $C0, $CC, $F0, $C0, $C0
                 .byte $C0, $FC, $F0, $C0, $F0, $F0, $F0, $C0
                 .byte $C0, $C0, $F0, $0F, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $03, $FF, $FF, $3F, $3F, $3F
                 .byte $FF, $3F, $3F, $3F, $3F, $3F, $3F, $3F
                 .byte $FF, $FF, $3F, $F0, $C0, $C0, $F0, $C0
                 .byte $C0, $C0, $C0, $C0, $C3, $C0, $F0, $F0
                 .byte $FC, $FF, $FF, $3F, $03, $00, $00, $30
                 .byte $FC, $FC, $FC, $FC, $F0, $30, $00, $00
                 .byte $00, $CC, $FF, $FF, $3F, $3F, $3F, $3F
                 .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F
                 .byte $3F, $3F, $FF, $CF, $C0, $C0, $C0, $C3
                 .byte $C3, $C3, $C0, $C0, $C3, $C0, $C0, $F0
                 .byte $FC, $FF, $FF, $3F, $00, $00, $F0, $FC
                 .byte $FF, $FF, $FF, $FF, $FF, $3F, $0C, $0C
                 .byte $00, $3C, $FF, $3F, $3F, $3F, $3F, $3F
                 .byte $3F, $3F, $FF, $FF, $3F, $3F, $3F, $3F
                 .byte $3F, $FF, $FF, $F0, $C0, $C3, $C3, $CF
                 .byte $FF, $FF, $FF, $FF, $CF, $C3, $C3, $C3
                 .byte $C0, $F0, $FC, $C0, $F0, $FC, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FC, $FC, $F3
                 .byte $C0, $3C, $33, $FF, $3F, $3F, $3F, $FF
                 .byte $FF, $FF, $FF, $FF, $3F, $3F, $3F, $3F
                 .byte $FF, $FF, $FF, $F0, $F3, $FC, $F0, $F0
                 .byte $F0, $FF, $FC, $F0, $FC, $FC, $FC, $F0
                 .byte $F0, $F0, $FC, $03, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $FF, $3F, $0F, $0F, $0F
                 .byte $3F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
                 .byte $3F, $FF, $CF, $FC, $F0, $F0, $FC, $F0
                 .byte $F0, $F0, $F0, $F0, $F0, $F0, $FC, $FC
                 .byte $FF, $FF, $FF, $0F, $00, $00, $00, $0C
                 .byte $3F, $3F, $3F, $3F, $FC, $0C, $00, $00
                 .byte $00, $F3, $FF, $FF, $CF, $0F, $0F, $0F
                 .byte $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
                 .byte $0F, $0F, $FF, $F3, $F0, $F0, $F0, $F0
                 .byte $F0, $F0, $F0, $F0, $F0, $F0, $F0, $FC
                 .byte $FF, $FF, $FF, $CF, $00, $00, $3C, $FF
                 .byte $FF, $FF, $3F, $3F, $FF, $0F, $03, $03
                 .byte $00, $CF, $FF, $CF, $0F, $0F, $0F, $0F
                 .byte $CF, $CF, $FF, $FF, $CF, $CF, $0F, $0F
                 .byte $0F, $3F, $FF, $FC, $F0, $F0, $F0, $F3
                 .byte $FF, $FF, $FF, $FF, $F3, $F0, $F0, $F0
                 .byte $F0, $FC, $FF, $30, $3C, $FF, $FF, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FC
                 .byte $30, $0F, $0C, $3F, $0F, $0F, $CF, $FF
                 .byte $FF, $FF, $FF, $FF, $CF, $0F, $0F, $CF
                 .byte $3F, $3F, $FF, $FC, $FC, $FF, $FC, $FC
                 .byte $FC, $FF, $FF, $FC, $FF, $FF, $FF, $FC
                 .byte $FC, $FC, $FF, $00, $C0, $00, $00, $00
                 .byte $00, $C0, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $FF, $0F, $03, $03, $03
                 .byte $0F, $03, $03, $03, $03, $03, $03, $03
                 .byte $0F, $3F, $33, $FF, $FC, $FC, $FF, $FC
                 .byte $FC, $FC, $FC, $FC, $FC, $FC, $FF, $FF
                 .byte $FF, $FF, $FF, $03, $00, $00, $00, $03
                 .byte $0F, $0F, $0F, $0F, $3F, $03, $00, $00
                 .byte $C0, $FC, $FF, $FF, $33, $03, $03, $03
                 .byte $C3, $C3, $C3, $C3, $03, $03, $03, $03
                 .byte $03, $C3, $FF, $FC, $FC, $FC, $FC, $FC
                 .byte $FC, $FC, $FC, $FC, $FC, $FC, $FC, $FF
                 .byte $FF, $FF, $FF, $F3, $00, $00, $0F, $3F
                 .byte $3F, $3F, $0F, $0F, $3F, $03, $00, $00
                 .byte $C0, $F3, $FF, $F3, $03, $03, $03, $C3
                 .byte $F3, $F3, $FF, $FF, $F3, $F3, $C3, $C3
                 .byte $03, $CF, $FF, $FF, $FC, $FC, $FC, $FC
                 .byte $FF, $FF, $FF, $FF, $FC, $FC, $FC, $FC
                 .byte $FC, $FF, $FF, $0C, $0F, $3F, $3F, $FF
                 .byte $FF, $FF, $FF, $FF, $FF, $3F, $3F, $3F
                 .byte $0C, $03, $C3, $0F, $03, $C3, $F3, $FF
                 .byte $FF, $FF, $FF, $FF, $F3, $C3, $C3, $33
                 .byte $0F, $CF, $3F
