
; BLOCK 2 Arkanoid.xex

                 org $4B00

                 ora #$A5
                 brk
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
                 sta L_4A00+1
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
                 lda L_4A00+1
                 clc
                 adc #$04
                 sta L_4A00+1
                 lda FPTR2+1
                 clc
                 adc #$04
                 sta FPTR2+1
                 dey
                 jmp L_4B4B
L_4B63           ldy L_4A02
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
L_4B81           sta NGFLAG
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
L_4BAB           lda L_4C40,y
                 clc
                 adc L_4C41,y
                 bne L_4BD2
                 lda LNFLG
                 sta L_4C40,y
                 lda NGFLAG
                 sta L_4C41,y
                 lda L_4000
                 lsr
                 lsr
                 lsr
                 clc
                 adc #$02
                 sta L_4C42,y
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
                 ldy L_4A02
                 rts
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_4C00           brk
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
                 brk
L_4C2E           brk
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_4C40           brk
L_4C41           brk
L_4C42           brk
L_4C43           brk
                 brk
                 brk
                 brk
L_4C47           brk
                 brk
                 brk
                 brk
                 brk
L_4C4C           brk
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
                 brk
                 brk
                 brk
                 brk
L_4C5C           brk
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_4C84           brk
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
                 brk
L_4C9C           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_4CA5           brk
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
                 brk
                 brk
                 brk
L_4CD5           nop $A200,x
                 brk
                 ldy L_4CD5
                 cpy #$3C
                 bmi L_4CE2
                 ldy #$00
L_4CE2           lda L_4C41,y
                 beq L_4D0D
                 sta EEXP
                 lda L_4C40,y
                 sta FRX
L_4CEE           sty L_4CD5+1
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
                 ldy L_4CD5+1
L_4D0D           iny
                 iny
                 iny
                 iny
                 inx
                 cpx #$05
                 bne L_4CE2
                 sty L_4CD5
                 rts
L_4D1A           ldy L_4CD5+1
                 lda L_4C43,y
L_4D20           sta FR1
                 ldy #$00
                 sta (FRX),y
                 iny
                 clc
                 adc #$01
                 sta (FRX),y
                 ldy L_4CD5+1
                 lda #$00
                 sta L_4C40,y
                 sta L_4C41,y
                 sta L_4C42,y
                 sta L_4C43,y
                 lda FR1
                 cmp #$9D
                 beq L_4D0D
                 cmp #$9E
                 beq L_4D0D
                 jmp L_4D91
L_4D4A           ldx #$30
                 ldy #$9B
L_4D4E           stx FRX
                 sty EEXP
                 ldy #$6A
L_4D54           stx NSIGN
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
L_4D6B           lda L_4000
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
                 ldy L_4CD5+1
                 jmp L_4D0D
L_4DAF           lda #$03
                 sta (FRX),y
                 iny
                 lda #$04
                 sta (FRX),y
                 ldy L_4CD5+1
                 jmp L_4D0D
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
L_4E00           aso SAVADR+1
L_4E02           ror
L_4E03           brk
L_4E04           brk
L_4E05           brk
                 nop $FEFE,x
                 inc HOLDCH,x
                 brk
L_4E0D           brk
                 asl RAMLO+1
                 asl RAMLO+1
                 asl LNFLG
                 brk
                 brk
                 aso LNFLG
                 brk
                 aso RAMLO
                 aso NGFLAG
                 brk
                 aso LNFLG
                 brk
                 brk
                 aso RAMLO
                 nop LNFLG
                 aso RAMLO
                 asl RAMLO
                 aso LNFLG
                 brk
                 brk
                 brk
                 asl RAMLO+1
                 ora RAMLO+1
                 asl LNFLG
                 brk
                 nop RAMLO
                 nop RAMLO
                 aso LNFLG
                 brk
                 brk
                 nop RAMLO
                 brk
                 brk
                 aso RAMLO+1
L_4E44           aso FR2
                 nop SVDISP,x
                 ror DELTAR,x
                 nop WARMST,x
L_4E4C           lda L_4E04
L_4E4F           bne L_4E7E
                 lda (FRE+4),y
                 cmp #$01
L_4E55           beq L_4E7E
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
L_4E76           lda L_4E00
                 beq L_4E7F
                 dec L_4E00
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
                 sta L_4E00+1
                 clc
                 adc #$02
                 sta HPOSM0
                 sty L_4E02
                 ldx #$00
L_4EAD           lda L_4E05,x
                 sta L_6F80,y
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
                 sta L_7FFE
                 clc
                 asl
                 asl
                 asl
                 tax
                 clc
                 adc #$06
                 sta L_4E72
                 ldy L_4E02
L_4ED8           lda L_4E0D,x
                 sta L_6D80,y
                 iny
                 inx
                 cpx L_4E72
                 bne L_4ED8
                 ldx L_7FFE
                 lda L_4E44+1,x
                 sta PCOLR3
                 lda #$01
                 sta L_4E04
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
                 lda L_5002
                 nop
                 nop
                 lda L_4E04
                 beq L_4F99
                 inc L_4E75
                 lda L_4E75
                 cmp #$02
                 bcc L_4F99
                 lda #$00
                 sta L_4E75
                 lda L_7FFE
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
                 ldy L_4E02
                 cpy #$6A
                 bcs L_4F9A
                 iny
L_4F4E           sty L_4E02
L_4F51           lda L_4E05,x
                 sta L_6F80,y
                 cpx #$06
                 bcs L_4F61
L_4F5B           lda L_4E0D,x
                 sta L_6D80,y
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
L_4F78           lda L_4E0D,y
                 sta L_4E04
                 dey
L_4F7F           lda L_4E0D,y
                 iny
L_4F83           sta L_4E0D,y
                 dey
                 dey
                 cpy #$00
                 bne L_4F7F
                 ldy #$01
                 lda L_4E04
L_4F91           sta L_4E0D,y
                 lda #$01
                 sta L_4E04
L_4F99           rts
L_4F9A           ldx #$00
                 stx L_4E04
                 ldy L_4E02
                 dey
                 dey
L_4FA4           lda #$00
                 sta L_6D80,y
                 sta L_6F80,y
                 iny
                 inx
                 cpx #$0C
                 bne L_4FA4
                 lda VCOUNT
                 and #$07
                 clc
                 adc #$03
                 sta L_4E00
                 rts
L_4FBE           ora (LNFLG,x)
L_4FC0           brk
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
                 brk
                 brk
                 brk
L_4FCF           brk
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
                 brk
                 brk
                 brk
                 brk
L_5000           ora (FR2+4,x)
L_5002           brk
                 lda L_4E04
                 beq L_5015
                 lda L_4E00+1
                 sec
                 sbc #$2C
                 cmp L_4409
                 beq L_501B
                 bpl L_501B
L_5015           lda L_5002
                 bne L_507F
L_501A           rts
L_501B           sec
                 sbc L_4409
                 cmp L_4A03
                 beq L_5029
                 bmi L_5029
                 jmp L_5015
L_5029           sta L_5000
                 lda L_4E02
                 cmp #$63
                 bmi L_5015
                 cmp #$66
                 bpl L_5015
                 lda L_4A03
                 cmp #$1E
                 beq L_5047
                 lda L_5000
                 cmp #$08
                 beq L_5047
                 bmi L_5015
L_5047           lda L_5000
                 cmp L_4A03
                 beq L_5054
                 bmi L_5054
                 jmp L_5015
L_5054           ldy L_4E02
                 dey
                 dey
                 ldx #$00
                 txa
L_505C           sta L_6D80,y
                 sta L_6F80,y
                 inx
                 iny
                 cpx #$0C
                 bne L_505C
                 lda #$01
                 sta L_5002
                 jmp L_5798
L_5070           brk
L_5071           brk
L_5072           brk
L_5073           brk
L_5074           brk
L_5075           ora (LNFLG,x)
L_5077           brk
L_5078           brk
L_5079           brk
L_507A           brk
L_507B           brk
L_507C           brk
L_507D           brk
L_507E           brk
L_507F           lda L_5002
                 cmp #$02
                 beq L_50C1
                 lda L_507D
                 bne L_5093
                 lda L_440B
                 beq L_5093
                 jmp L_523D
L_5093           lda L_4E03
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
L_50C1           lda L_4E03
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
                 sta L_46F3
                 sta L_46F3+1
                 sta L_46F3+1
                 lda #$00
                 sta L_5070
                 sta L_5071
                 lda #$02
                 sta L_5002
                 rts
L_5104           lda #$B4
                 sta L_5071
                 lda L_5073
                 beq L_5153
                 lda #$01
                 sta L_5072
                 jsr L_469E
                 sec
                 sbc #$30
                 sec
                 sbc L_4409
                 sta L_5074
                 lda #$02
                 sta L_5002
                 rts
L_5126           lda L_5073
                 beq L_5153
                 ldx #$97
                 lda L_460B
                 cmp #$63
                 beq L_5136
                 ldx #$BF
L_5136           stx FRE+2
                 lda L_4409
                 clc
                 adc #$30
                 clc
                 adc L_5074
                 sta HPOSP0
                 sta L_4608
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
                 inc L_5071
L_515E           inc L_5070
L_5161           lda L_5071
                 cmp #$05
                 beq L_5169
                 rts
L_5169           lda #$00
                 sta L_5002
                 nop
                 nop
                 nop
                 lda #$04
                 sta L_46F3
                 sta L_46F3+1
                 sta L_46F3+1
                 rts
L_517D           lda #$02
                 sta L_5002
                 lda L_46C0
                 sta L_46C0+2
                 sta L_46C3+1
                 lda L_46C0+1
                 sta L_46C3
                 sta L_46C3+2
                 lda L_4608
                 sta L_4608+1
                 sta L_460A
                 lda L_460B
                 sta L_460B+1
                 sta L_460D
                 lda #$00
                 sta L_46DD
                 sta L_46DE
                 sta L_46DA
                 sta L_46DB
                 lda VCOUNT
                 and #$07
                 sta L_46CA
                 nop
                 nop
                 nop
                 lda VCOUNT
                 and #$07
                 sta L_46CA+1
                 ldx #$00
                 lda L_46C6
                 eor #$0C
                 sta L_46C6+1
                 lda L_46C6
                 eor #$03
                 sta L_46C8
                 lda #$01
                 sta L_5075
                 sta L_5075+1
                 sta L_5077
                 lda #$00
                 sta L_46F3
                 sta L_46F3+1
                 sta L_46F5
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
                 lda L_440B
                 cmp #$02
                 beq L_5210
                 inc L_440B
                 rts
L_5210           lda #$02
                 sta L_5002
                 lda #$1E
                 sta L_4A03
                 rts
L_521B           lda #$02
                 sta L_5002
                 lda #$03
                 sta L_440B
                 lda #$00
                 sta L_5079
                 sta L_507A
                 sta L_507B
                 sta L_507C
                 sta L_5277
                 sta L_5278
                 rts
L_523A           jmp L_5700
L_523D           jmp L_5777
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
                 brk
                 brk
                 brk
                 brk
L_5270           sty VNTD
                 sty LNFLG
                 brk
                 brk
                 brk
L_5277           brk
L_5278           brk
                 brk
L_527A           ora (LNFLG,x)
                 brk
                 brk
L_527E           brk
                 brk
L_5280           ora (NGFLAG,x)
L_5282           lda L_4517
                 bne L_5292
                 ldx L_527A
                 beq L_5292
                 lda #$00
                 sta L_527A
                 rts
L_5292           sta L_527A
                 lda #$01
                 rts
L_5298           jsr L_5282
                 bne L_52EF
                 lda L_5277
                 clc
                 adc L_5278
                 beq L_52AD
                 cmp #$01
                 beq L_52AD
                 jmp L_52EF
L_52AD           ldx #$00
L_52AF           lda L_5079,x
                 bne L_52EA
                 lda L_4409
                 clc
                 adc #$3C
                 sta L_5079,x
                 jsr L_281B
                 lda #$0F
                 sta PCOLR1,x
                 lda #$64
                 sta L_507B,x
                 lda #$01
                 sta L_5277,x
                 lda #$9E
                 sta L_527E,x
                 lda L_4409
                 clc
                 adc #$08
                 lsr
                 lsr
                 clc
                 adc #$99
                 sta L_527A+1,x
                 bcc L_52EF
                 inc L_527E,x
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
                 lda L_5277,x
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
L_531D           lda L_507B,x
                 tay
                 dey
                 dey
                 dey
                 dey
                 tya
                 sta L_507B,x
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
                 sta L_527A+1,x
                 lda FRE+5
                 sta L_527E,x
L_5349           lda L_5538
                 eor #$01
                 sta L_5538
                 rts
L_5352           lda L_527A+1,x
                 sta FRE+4
                 lda L_527E,x
                 sta FRE+5
                 lda L_507B,x
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
                 sta L_5277,x
                 lda #$00
                 sta L_5560,x
                 sta L_5562,x
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
                 jsr L_3D02+1
                 jmp L_5493
L_53F4           cmp #$08
                 beq L_5406
                 bcc L_5406
                 cmp #$13
                 beq L_5395
                 bcs L_5403
                 jmp L_5395
L_5403           jmp L_5379
L_5406           lda L_5079,x
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
L_5454           lda L_507B,x
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
                 lda L_507B,x
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
                 sta L_5277,x
                 sta L_527A+1,x
                 sta L_527E,x
                 lda L_507B,x
                 tay
                 ldx #$00
                 lda #$00
L_54A6           sta (LNFLG),y
                 iny
                 inx
                 cpx #$06
                 bne L_54A6
                 ldx FRE+2
                 sta L_5079,x
                 sta L_507B,x
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
L_54E6           lda L_4C41,y
                 bne L_5522
                 lda RAMLO
                 sta L_4C40,y
                 lda RAMLO+1
                 sta L_4C41,y
                 lda L_4000
                 lsr
                 lsr
                 lsr
                 clc
                 adc #$02
L_54FE           sta L_4C42,y
                 lda CASINI
                 sta L_4C43,y
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
L_5538           ora (LNFLG,x)
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
                 brk
                 brk
                 brk
                 brk
                 brk
L_5560           nop RAMLO
L_5562           brk
                 brk
L_5564           ora (LNFLG,x)
L_5566           rol COX,x
                 nop $01AE,x
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
                 brk
                 brk
                 tay
                 cli
                 ldx #$00
                 ora (LNFLG,x)
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
                 nop #$50
                 tay
                 cim
                 brk
                 nop #$01
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
                 rti
                 brk
                 brk
                 brk
                 ora (LNFLG,x)
                 nop #$04
                 brk
                 brk
                 brk
                 rti
                 brk
                 brk
L_55A7           stx L_5564
                 sty L_5564+1
                 lda L_5562,x
                 cmp #$01
                 bcs L_55B8
                 inc L_5562,x
                 rts
L_55B8           lda #$00
                 sta L_5562,x
                 lda L_507B,x
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
                 sta L_5566
L_55D3           lda L_5566+1,x
                 sta (LNFLG),y
                 iny
                 inx
                 cpx L_5566
                 bne L_55D3
                 ldx L_5564
                 ldy L_5564+1
                 rts
L_55E6           ldx #$00
                 lda #$00
                 sta LNFLG
                 lda #$6E
                 sta NGFLAG
L_55F0           lda #$00
                 ldy #$00
L_55F4           clc
                 adc L_5075,y
                 iny
                 cpy #$03
                 bne L_55F4
                 sta CASINI+1
                 lda L_460B,x
                 cmp #$68
                 bne L_5628
                 lda CASINI+1
                 cmp #$01
                 beq L_5639
                 lda #$00
                 sta L_5075,x
                 sta HPOSP0,x
                 lda L_460B,x
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
L_563B           lda L_5075,x
                 bne L_5646
                 inx
                 cpx #$03
                 bne L_563B
                 rts
L_5646           lda #$00
                 sta L_5075,x
                 sta L_5002
                 nop
                 nop
                 nop
                 lda #$01
                 sta L_5075
                 lda L_460B,x
                 sta L_460B
                 lda L_4608,x
                 sta L_4608
                 lda L_46C6,x
                 sta L_46C6
                 lda L_46C8+1,x
                 sta L_46C8+1
                 lda L_46D8+1,x
                 sta L_46D8+1
                 lda L_46DC,x
                 sta L_46DC
                 lda L_46F5+1,x
                 sta L_46F5+1
                 lda L_46F7+2,x
                 sta L_46F7+2
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
L_56B4           lda L_460B,y
                 tay
                 ldx #$00
L_56BA           lda #$00
                 sta (LNFLG),y
                 iny
                 inx
                 cpx #$06
                 bne L_56BA
                 lda #$04
                 sta L_46F3
                 sta L_46F3+1
                 sta L_46F5
                 rts
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
                 brk
                 brk
                 brk
                 brk
L_5700           nop
                 nop
                 nop
                 jsr L_2CB0
                 lda #$00
                 sta L_4E04
                 lda VCOUNT
                 and #$07
                 clc
                 adc #$02
                 sta L_4E00
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
                 sta L_46F1
                 sta L_46F2
                 sta L_507D
                 sta L_507E
                 sta L_5075+1
                 sta L_5077
                 lda #$01
                 sta L_5075
                 sta L_5002
                 lda #$1A
                 sta L_4A03
                 jsr L_5FC0
                 ldx #$00
                 ldy L_460B
L_5768           lda L_4600,x
                 sta L_6E00,y
                 iny
                 inx
                 cpx #$05
                 bne L_5768
                 jmp L_5015
L_5777           lda L_440B
                 cmp #$03
                 bne L_5784
                 lda #$00
                 sta L_440B
                 rts
L_5784           lda L_507E
                 cmp #$04
                 beq L_578F
                 inc L_507E
                 rts
L_578F           lda #$00
                 sta L_507E
                 dec L_440B
                 rts
L_5798           ldx #$03
                 jsr L_3BB3+1
                 jmp L_523A
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
                 brk
                 brk
                 brk
                 brk
                 brk
L_57B0           brk
                 brk
                 brk
L_57B3           brk
                 brk
                 brk
L_57B6           brk
                 brk
                 brk
L_57B9           brk
                 brk
                 brk
L_57BC           cim
                 cim
                 cim
L_57BF           cim
L_57C0           bpl L_57D9+1
L_57C2           cim
L_57C3           brk
L_57C4           aso $C3F3,y
                 and ERRSAV,x
                 ins (LTEMP),y
                 dcm (FPTR2+1,x)
                 rla CASINI+1,x
                 brk
                 nop LNFLG
                 aso L_4044+1
                 nop FMSZPG+3
                 aso (LNFLG,x)
L_57D9           nop LNFLG
                 aso L_4245
                 lsr FMSZPG+3
L_57E0           brk
L_57E1           bpl L_57F4
L_57E3           brk
L_57E4           brk
                 brk
                 brk
                 brk
L_57E8           brk
L_57E9           cim
L_57EA           clc
L_57EB           aso (OPSTKX,x)
                 brk
                 sta L_57E4
                 lda L_5C69,x
L_57F4           cmp #$06
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
                 sta L_57E3
                 lda L_57B0,x
                 and #$07
                 clc
                 asl
                 asl
                 asl
                 asl
                 clc
                 adc L_57E3
                 sta L_57E3
                 bcc L_5822
                 inc L_57E4
L_5822           lda #$00
                 sta FRE+4
                 lda #$60
                 sta FRE+5
                 lda L_57B3,x
                 and #$07
                 sta L_57E0
                 clc
                 adc #$10
                 sta L_57E1
                 lda L_57BC,x
                 stx L_57BF
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
L_5854           ldx L_57BF
                 lda FRE+5
                 clc
                 adc L_57E4
                 sta FRE+5
L_585F           lda FRE+4
                 clc
                 adc L_57E3
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
L_588B           stx L_57BF
                 sty L_57C0
                 txa
                 clc
                 asl
                 asl
                 asl
                 clc
                 adc L_57BF
                 tax
                 clc
                 adc #$09
                 sta L_57C4
L_58A1           ldy #$00
                 sty L_57E1+1
                 sty RAMLO
                 lda FRE+4
                 sta LNFLG
                 lda FRE+5
                 clc
                 adc #$32
                 sta NGFLAG
L_58B3           lda L_57C4+1,x
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
                 lda L_57C4+1,x
                 and #$7F
                 and #$1F
                 asl
                 asl
                 asl
                 sta CASINI
L_58D0           lda L_57E1+1
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
L_58EB           cmp L_57E1
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
                 inc L_57E1+1
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
L_5932           cpx L_57C4
                 beq L_593A
                 jmp L_58A1
L_593A           ldx L_57BF
                 ldy L_57C0
                 rts
L_5941           lda L_57C0+1
                 and #$FC
                 lsr
                 lsr
                 sta L_57C0+1
                 sta L_57C2
                 lda L_57C0
                 and #$F8
                 lsr
                 lsr
                 lsr
                 sta L_57C0
                 sta L_57C3
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
L_59B3           stx L_57BF
                 txa
                 clc
                 asl
                 asl
                 asl
                 clc
                 adc L_57BF
                 tax
                 clc
                 adc #$09
                 sta L_57C4
                 rts
                 ldx L_57E8
                 lda L_3C25
                 nop
                 nop
                 lda L_57B6,x
                 sta L_57C0+1
                 lda L_57B9,x
                 sta L_57C0
                 jsr L_5B16
                 jsr L_5941
                 lda L_57C4
                 sec
                 sbc L_57EA
                 sta L_57EA
                 lda #$00
                 sta FRE+5
L_59EF           lda #$00
                 sta FRE+4
                 ldy FRE+5
L_59F5           lda L_57C2
                 cmp #$06
                 bcc L_5A10
                 cmp #$20
                 bcs L_5A10
                 lda L_57C3
                 cmp #$03
                 bcc L_5A10
                 cmp #$1E
                 bcs L_5A10
                 lda L_57C4+1,x
                 sta (FRE+2),y
L_5A10           inc L_57C3
                 inx
                 tya
                 clc
                 adc #$28
                 tay
                 inc FRE+4
                 lda FRE+4
                 cmp L_57E9
                 bne L_59F5
                 lda L_57E9
                 cmp #$02
                 bne L_5A2A
                 inx
L_5A2A           lda L_57C3
                 sec
                 sbc L_57E9
                 sta L_57C3
                 inc L_57C2
                 inc FRE+5
                 cpx L_57EA
                 bne L_59EF
                 ldx L_57BF
                 lda L_57B0,x
                 sta L_57B6,x
                 sta L_57C0+1
                 lda L_57B3,x
                 sta L_57B9,x
                 sta L_57C0
L_5A53           jsr L_5B33
                 jsr L_5941
                 lda L_57C4
                 sec
                 sbc L_57EA
                 sta L_57EA
                 stx L_57C0+1
                 lda #$00
                 sta FRE+5
L_5A6A           lda #$00
                 sta FRE+4
                 ldy FRE+5
L_5A70           lda (FRE+2),y
                 sta L_57C4+1,x
                 inx
                 tya
                 clc
                 adc #$28
                 tay
                 inc FRE+4
                 lda FRE+4
                 cmp L_57E9
                 bne L_5A70
                 lda L_57E9
                 cmp #$02
                 bne L_5A8C
                 inx
L_5A8C           inc FRE+5
                 cpx L_57EA
                 bne L_5A6A
                 txa
                 sec
                 sbc #$09
                 clc
                 adc L_57EB
                 tax
                 lda #$00
                 sta FRE+5
L_5AA0           lda #$00
                 sta FRE+4
                 ldy FRE+5
L_5AA6           lda L_57C2
                 cmp #$06
                 bcc L_5ACE
                 cmp #$20
                 bcs L_5ACE
                 lda L_57C3
                 cmp #$03
                 bcc L_5ACE
                 cmp #$1E
                 bcs L_5ACE
                 lda L_57C4+1,x
                 and #$80
                 sta RAMLO
                 lda L_57C0+1
                 clc
                 adc #$60
                 clc
                 adc RAMLO
                 sta (FRE+2),y
L_5ACE           inc L_57C3
                 tya
                 clc
                 adc #$28
                 tay
                 inx
                 inc L_57C0+1
                 inc FRE+4
                 lda FRE+4
                 cmp L_57E9
                 bne L_5AA6
                 lda L_57E9
                 cmp #$02
                 bne L_5AEE
                 inc L_57C0+1
                 inx
L_5AEE           lda L_57C3
                 sec
                 sbc L_57E9
                 sta L_57C3
                 inc L_57C2
                 inc FRE+5
                 cpx L_57EA
                 bne L_5AA0
                 ldx L_57BF
                 jsr L_57EB+1
                 ldx L_57E8
                 cpx #$02
                 bne L_5B11
                 ldx #$FF
L_5B11           inx
                 stx L_57E8
                 rts
L_5B16           lda L_57B6,x
                 sta L_57EB
                 lda L_57B9,x
L_5B1F           and #$07
                 bne L_5B2B
                 lda #$02
                 sta L_57E9
                 jmp L_5B3F
L_5B2B           lda #$03
                 sta L_57E9
                 jmp L_5B3F
L_5B33           lda L_57B0,x
                 sta L_57EB
                 lda L_57B3,x
                 jmp L_5B1F
L_5B3F           lda L_57EB
                 and #$03
                 bne L_5B4F
                 lda #$03
                 sta L_57EA
                 sta L_57EB
                 rts
L_5B4F           lda #$00
                 sta L_57EA
                 sta L_57EB
                 rts
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 lda (FRE+4),y
                 cmp #$49
                 bpl L_5BA9
L_5BA6           cmp #$37
                 rts
L_5BA9           cmp #$4F
                 bpl L_5BA6
                 stx L_5BC4
                 sta L_5BC5
                 ldx L_57E8
                 lda #$06
                 sta L_5C69,x
                 lda L_5BC5
                 ldx L_5BC4
                 jmp L_5BA6
L_5BC4           brk
L_5BC5           brk
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
                 brk
L_5BD2           brk
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
                 brk
L_5C00           ora BUFADR
                 rol
                 brk
                 brk
                 rol
                 rol
                 asl
                 brk
                 nop ICBLLZ,x
                 brk
                 brk
                 plp
                 plp
                 plp
                 bvc L_5C66
                 tay
                 brk
                 brk
                 tay
                 tay
                 ldy #$05
                 rol
                 brk
                 brk
                 brk
                 brk
                 rol
                 asl
                 brk
                 plp
                 brk
                 brk
                 brk
                 brk
                 rol
                 asl
                 bvc L_5BD2
                 brk
                 brk
                 brk
                 brk
                 tay
                 ldy #$2A
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 rol
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 plp
                 tay
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 tay
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_5C4E           brk
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_5C60           ins $FFFF,x
L_5C63           brk
                 brk
                 brk
L_5C66           brk
                 brk
                 brk
L_5C69           brk
                 brk
                 brk
L_5C6C           brk
                 brk
                 brk
L_5C6F           cim
L_5C70           brk
                 ldx #$00
                 lda L_5C70
                 beq L_5C7D
                 tax
                 dex
                 jmp L_5CA3
L_5C7D           lda L_5C63,x
                 beq L_5C93
                 lda L_5C60,x
                 bne L_5C8A
                 dec L_5C63,x
L_5C8A           dec L_5C60,x
L_5C8D           inx
                 cpx #$03
                 bne L_5C7D
                 rts
L_5C93           lda L_5C69,x
                 cmp #$05
                 beq L_5C8D
                 cmp #$06
                 beq L_5C8D
                 inx
                 stx L_5C70
                 dex
L_5CA3           lda L_5C69,x
                 cmp #$04
                 bne L_5CAD
                 jmp L_5D60
L_5CAD           cmp #$03
                 bne L_5CB4
                 jmp L_5D39
L_5CB4           cmp #$02
                 bne L_5CBB
                 jmp L_5D39
L_5CBB           lda L_5C66,x
                 cmp #$06
                 bcs L_5CC6
                 inc L_5C66,x
                 rts
L_5CC6           lda #$00
                 sta L_5C66,x
                 lda L_5C6F
                 bne L_5CDA
L_5CD0           lda VCOUNT
                 and #$03
                 beq L_5CD0
                 sta L_5C6F
L_5CDA           lda L_5C6C,x
                 cmp #$04
                 bne L_5D01
                 inc L_5C69,x
                 lda L_5C6F
                 cmp #$02
                 beq L_5CF6
                 lda #$32
                 sta L_57B0,x
                 lda #$00
                 sta L_57B3,x
                 rts
L_5CF6           lda #$62
                 sta L_57B0,x
                 lda #$00
                 sta L_57B3,x
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
                 lda L_5C6F
                 cmp #$02
                 bne L_5D20
                 ldy #$A8
L_5D20           lda #$89
L_5D22           sty FRE+2
                 sta FRE+3
                 ldy #$00
L_5D28           lda L_5C00,x
                 sta (FRE+2),y
                 iny
                 inx
                 cpy #$18
                 bne L_5D28
                 ldx FRE+4
                 inc L_5C6C,x
                 rts
L_5D39           lda L_57B3,x
                 cmp #$10
                 bne L_5D44
                 inc L_5C69,x
                 rts
L_5D44           lda L_7FFE+1
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
                 inc L_57B3,x
L_5D5F           rts
L_5D60           lda L_5C66,x
                 cmp #$06
                 bcs L_5D6B
                 inc L_5C66,x
                 rts
L_5D6B           lda #$00
                 sta L_5C66,x
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
                 inc L_5C69,x
                 inc L_5C6C,x
                 lda #$00
                 sta L_5C6F
                 sta L_5C70
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
                 lda L_5C6F
                 cmp #$02
                 bne L_5DA8
                 ldy #$A8
L_5DA8           lda #$89
                 sty FRE+2
                 sta FRE+3
                 ldy #$00
L_5DB0           lda L_5C00,x
                 sta (FRE+2),y
                 iny
                 inx
                 cpy #$18
                 bne L_5DB0
                 ldx FRE+4
                 rts
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_5DD0           aso RAMLO
L_5DD2           lse $049B,y
                 nop RAMLO
                 brk
                 brk
                 brk
L_5DDA           aso (CASINI,x)
L_5DDC           brk
                 brk
                 brk
L_5DDF           brk
                 brk
                 brk
L_5DE2           brk
                 brk
                 brk
                 ldx L_57E8
                 lda L_5C69,x
                 cmp #$04
                 beq L_5DFB
                 cmp #$05
                 beq L_5DFB
                 cmp #$06
                 bne L_5DFA
                 jsr L_3DB1
L_5DFA           rts
L_5DFB           lda L_57B3,x
                 cmp #$E0
                 bcc L_5E05
                 jmp L_3F77
L_5E05           sec
                 sbc #$08
                 and #$F8
                 lsr
                 lsr
                 lsr
                 sta L_5DD0+1
                 lda L_57B0,x
                 sec
                 sbc #$10
                 and #$FC
                 lsr
                 lsr
                 sta L_5DD0
                 lda L_5DD0+1
                 and #$F8
                 lsr
                 lsr
                 lsr
                 sta L_5DD2+1
                 lda L_5DD0+1
                 and #$0F
                 clc
                 asl
                 asl
                 asl
                 asl
                 asl
                 sta L_5DD2
                 lda L_5DD0+1
                 and #$E0
                 lsr
                 lsr
                 lsr
                 lsr
                 lsr
                 clc
                 adc L_5DD2+1
                 sta L_5DD2+1
                 lda L_5DD0+1
                 and #$1F
                 clc
                 asl
                 asl
                 asl
                 clc
                 adc L_5DD2
                 sta L_5DD2
                 bcc L_5E5C
                 inc L_5DD2+1
L_5E5C           lda L_5DD2+1
                 clc
                 adc #$9A
                 sta L_5DD2+1
                 lda L_5DD2
                 clc
                 adc #$B4
                 sta L_5DD2
                 bcc L_5E73
                 inc L_5DD2+1
L_5E73           lda L_5DD2
                 clc
                 adc L_5DD0
                 sta L_5DD2
                 bcc L_5E82
                 inc L_5DD2+1
L_5E82           ldy #$03
                 lda L_57B3,x
                 and #$07
                 bne L_5E8C
                 dey
L_5E8C           sty L_5DDA+1
                 ldy #$03
                 lda L_57B0,x
                 and #$03
                 bne L_5E99
                 dey
L_5E99           sty L_5DDA
                 lda L_5DDF,x
                 beq L_5EA7
                 dec L_5DDF,x
                 jmp L_5EE5
L_5EA7           lda L_5DE2,x
                 beq L_5EB2
                 dec L_5DE2,x
                 jmp L_5EE5
L_5EB2           lda L_57B3,x
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
                 sta L_5DDF,x
                 lda #$01
                 sta L_5DD2+2,x
                 lda #$A0
                 sta L_5DE2,x
L_5EE5           ldx L_57E8
                 lda L_5DD2+2,x
                 cmp #$01
                 beq L_5F47
                 lda L_5DDC,x
                 bne L_5F30
                 lda L_57B0,x
                 and #$03
                 bne L_5F30
                 lda L_57B3,x
                 and #$07
                 bne L_5F27
                 ldy #$52
                 lda L_5DD2
                 sta FRE+4
                 lda L_5DD2+1
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
                 cpx L_5DDA
                 bne L_5F10
                 ldx L_57E8
L_5F27           inc L_57B3,x
                 inc L_57B3,x
                 jmp L_3F4F
L_5F30           ldx L_57E8
                 lda L_5DDC,x
                 beq L_5F3B
                 dec L_5DDC,x
L_5F3B           lda L_5DD2+2,x
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
                 lda L_5DD2
                 sta FRE+4
                 lda L_5DD2+1
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
                 cpx L_5DDA+1
                 bne L_5F64
                 ldx L_57E8
L_5F7F           dec L_57B0,x
                 rts
L_5F83           lda L_5DD2
                 sta FRE+4
                 lda L_5DD2+1
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
                 cpx L_5DDA+1
                 bne L_5F98
L_5FB0           ldx L_57E8
                 inc L_57B0,x
                 rts
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_5FC0           lda #$00
                 sta L_8F10
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
                 brk
                 brk
                 brk
                 asl
                 rol
                 tax
                 brk
                 eor COLCRS,x
                 eor COLCRS,x
                 eor COLCRS,x
                 eor COLCRS,x
                 brk
                 brk
                 brk
                 brk
                 ldy #$A0
                 nop #$20
                 jsr L_201F+1
                 jsr L_201F+1
                 jsr LNFLG
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cim
                 asl
                 rol
                 asl
                 cim
                 nop BUFADR,x
                 ora BUFADR,x
                 ora BUFADR,x
                 ora RAMLO+1
                 ora (NGFLAG,x)
                 nop #$A0
                 tay
                 tay
                 tay
                 ldy #$88
                 plp
                 plp
                 plp
                 plp
                 plp
                 plp
                 jsr ICHIDZ
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
                 brk
                 brk
L_605D           brk
                 brk
                 brk
L_6060           brk
                 brk
                 cim
                 asl
                 asl
                 cim
                 nop RAMLO
                 ora RAMLO+1
                 ora NGFLAG
                 ora (NGFLAG,x)
                 brk
                 brk
                 jsr $A8A8
                 tax
                 tax
                 tay
                 ldx #$A2
                 cim
                 asl
                 rol
                 plp
                 plp
                 jsr ICHIDZ
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
                 cim
                 cim
                 cim
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 and (ICDNOZ,x)
                 lda (TSLNUM+1,x)
                 lda (TSLNUM+1,x)
                 sta (ICBLLZ,x)
                 rol
                 tax
                 tax
                 plp
                 jsr LNFLG
                 brk
                 brk
                 brk
                 brk
                 rti
                 rti
                 rti
                 rti
                 rti
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora (NGFLAG,x)
                 ora (ICDNOZ,x)
                 and (TSLNUM+1,x)
                 lda (TSLNUM+1,x)
                 dey
                 plp
                 tax
                 tax
                 rol
                 cim
                 brk
                 brk
                 brk
                 brk
                 rti
                 rti
                 bvc L_6126+1
                 bvc L_6128+1
                 bvc L_612A+1
                 bpl L_605D
                 nop #$80
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop BUFADR,x
                 ora BUFADR,x
                 ora BUFADR,x
                 ora BUFADR,x
                 ora NGFLAG,x
                 plp
                 asl
                 brk
                 brk
                 brk
                 brk
                 brk
                 rti
                 nop ROWCRS,x
                 nop ROWCRS,x
                 nop ROWCRS,x
                 nop ROWCRS,x
                 nop COX,x
L_610D           nop #$28
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop RAMLO+1
                 ora RAMLO+1
L_6126           ora RAMLO+1
L_6128           ora RAMLO+1
L_612A           ora RAMLO+1
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 plp
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 brk
                 brk
                 brk
                 brk
L_6141           brk
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 cim
                 brk
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 tax
                 brk
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
L_616D           brk
                 brk
L_616F           brk
                 brk
                 brk
                 brk
                 nop #$80
                 nop #$80
                 nop #$80
                 nop #$80
                 nop #$00
                 brk
                 brk
                 brk
                 cim
                 asl BOOT
                 ora #$09
                 ora ICBAHZ
                 ror TOADR
                 stx POKADR+1,y
L_618B           stx OLDROW,y
                 plp
                 brk
                 brk
                 rti
                 rts
                 rts
                 rts
                 rts
                 ldy #$A0
                 ror TOADR
                 stx POKADR+1,y
                 stx OLDROW,y
                 plp
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cim
                 asl BOOT
                 ora #$09
                 asl BOOT
                 asl BOOT
                 ora #$05
                 ora (LNFLG,x)
                 brk
                 brk
                 brk
                 rti
                 rts
                 rts
                 ldy #$A0
                 nop DIRFLG
                 ror POKADR+1
                 stx POKADR+1,y
                 txs
                 plp
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
                 ora (CASINI,x)
                 cim
                 cim
                 cim
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
                 bcc L_618B+1
                 cli
                 cli
                 pla
                 rts
                 sta $A599,y
                 adc ICPTLZ
                 rol WARMST
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
                 nop #$80
                 nop #$80
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora (CASINI,x)
                 cim
                 cim
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
                 tya
                 txs
                 eor L_5A53+2,y
                 adc #$59
                 and ICBAHZ
                 and BUFADR+1
                 asl LNFLG
                 brk
                 brk
                 brk
                 brk
                 nop #$80
                 ldy #$A0
                 ldy #$A0
                 nop #$80
                 nop #$80
                 brk
                 brk
                 brk
                 brk
                 brk
                 bit TOADR
                 stx POKADR+1,y
                 txs
                 asl BOOT,x
                 ora #$09
                 ora CASINI
                 brk
                 brk
                 brk
                 brk
                 brk
                 clc
                 ror POKADR+1
                 stx POKADR+1,y
                 nop !
                 rts
                 rts
                 rts
                 ldy #$80
                 brk
                 brk
                 brk
                 brk
L_6261           brk
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora #$16
                 rol ICPTLZ
                 nop !
                 and ICBAHZ
                 and BUFADR+1
                 asl
                 brk
                 brk
                 brk
                 brk
                 brk
                 rts
                 tya
                 cli
                 cli
                 cli
                 ldy #$80
                 nop #$80
                 nop #$00
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
                 brk
                 brk
                 brk
                 cim
                 cim
                 asl BOOT
                 ora #$09
                 ora (LNFLG,x)
                 brk
                 brk
                 brk
                 asl DSKFMS+1
                 adc ADRESS+1
                 lda POKADR+1
                 stx RAMTOP,y
                 rts
                 rts
                 rts
                 nop #$00
                 brk
                 brk
                 brk
                 brk
                 nop #$80
                 nop #$80
                 nop #$80
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
                 brk
                 brk
                 brk
                 ora (CASINI,x)
                 cim
                 cim
                 ora (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 asl
                 ora L_2525,y
                 and POKADR+1
                 stx SAVMSC+1,y
                 eor L_6A59+1,y
                 ldy #$00
                 brk
                 brk
                 brk
                 brk
                 nop #$80
                 nop #$80
                 nop #$80
                 nop #$80
                 nop #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 cim
                 cim
                 ora TRAMSZ
                 asl RAMLO+1
                 ora L_1919,y
                 and ARSTKX
                 ror
L_630D           txs
                 adc BUFADR
                 brk
                 brk
                 brk
                 nop #$80
                 nop #$80
                 rts
                 ldy #$60
                 ldy #$A8
                 tay
                 tya
                 cli
                 ldy #$00
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora (CASINI,x)
                 ora (CASINI,x)
                 ora (NGFLAG,x)
                 cim
                 ora (CASINI,x)
                 ora (DOSVEC,x)
                 asl
                 rol
                 ora RAMLO+1,y
                 brk
                 brk
                 nop #$80
                 ldy #$68
                 pla
                 cli
                 bvc L_63B5
                 lda #$A6
                 nop !
                 cli
                 rti
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cim
                 ora RAMLO+1
                 asl
                 rti
                 ldy #$50
                 pla
                 lsr TOADR,x
                 eor ICBAHZ,x
                 asl BUFADR+1,x
L_637A           asl
                 rol
                 stx COLCRS+1,y
                 stx FREQ,y
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop #$80
                 brk
                 brk
                 brk
                 nop #$80
                 nop #$00
                 brk
                 brk
                 brk
L_6392           brk
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
                 brk
                 brk
                 bpl L_63CA
                 clc
                 rol
                 asl ICPTLZ,x
                 ora ICBAHZ,x
                 asl ICAX1Z,x
                 and #$06
                 and POKADR
                 lsr RAMTOP,x
                 brk
                 brk
                 brk
                 brk
                 brk
L_63B5           nop #$40
                 nop #$80
                 brk
                 nop #$A0
                 ldy #$A0
                 ldy #$80
                 brk
                 cim
                 ora (BOOT,x)
L_63C4           ora BOOT
                 ora ICBAHZ
                 rol
                 rol
L_63CA           ora ICBAHZ,x
                 txs
                 tax
                 tax
                 rol
                 brk
                 brk
                 brk
                 nop #$80
                 nop #$80
                 rts
                 bcc L_637A
                 rts
                 cli
                 tya
                 tay
                 tay
                 ldy #$00
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cim
                 ora (BOOT,x)
                 ora BOOT
                 asl
                 cim
                 ora #$25
                 and #$2A
                 asl
                 cim
L_6400           bpl L_6392
                 bvc L_6463+1
                 rts
                 rts
                 rts
                 ldy #$90
                 ldy #$A0
                 rti
                 cli
                 lsr POKADR+1,x
                 ldy #$00
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora (CASINI,x)
                 ora RAMLO+1
                 ora #$02
                 ora (DOSVEC,x)
                 ora #$05
                 cim
                 brk
                 bpl L_6452
                 bvc L_63C4
                 rts
                 rts
                 rts
                 ldy #$60
                 rts
                 nop #$60
                 pla
                 nop !
                 lsr DSKUTL,x
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
                 brk
                 brk
                 brk
                 nop #$80
                 brk
                 brk
L_6452           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cim
                 ora (NGFLAG,x)
                 cim
                 brk
                 brk
                 brk
                 brk
                 ora (NGFLAG,x)
L_6463           ora #$06
L_6465           rol MVFA+1
                 ror BUFADR+1
                 lda ARSTKX
                 tax
                 lsr COLCRS+1,x
                 asl LNFLG,x
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
                 nop #$80
                 ldy #$A0
                 nop #$00
                 brk
                 ora (NGFLAG,x)
                 ora (RAMLO,x)
                 nop RAMLO
                 bpl L_649B
                 cim
                 rti
                 rti
                 eor COLCRS,x
                 tax
                 brk
                 brk
                 brk
                 brk
                 brk
                 rti
                 rti
                 rti
                 bpl L_64A9
                 bpl L_649F
L_649B           nop ROWCRS
                 nop STINDEX,x
L_649F           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_64A9           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 nop RAMLO
                 nop RAMLO
                 ora RAMLO+1
                 asl LNFLG
                 brk
                 jsr L_585F+1
                 clc
                 clc
                 stx VVTP
                 asl RAMLO+1
                 nop TMPCHR,x
                 lsr
                 tay
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
                 nop #$80
                 nop #$80
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
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora #$0A
                 brk
                 bpl L_6502
                 nop ROWCRS,x
                 nop FMSZPG+2,x
                 eor SOUNDR
                 eor #$09
                 brk
                 brk
                 ora OLDROW,x
                 tax
                 brk
L_6500           brk
                 brk
L_6502           brk
                 brk
L_6504           brk
                 brk
                 brk
                 brk
                 rti
                 rti
                 bvc L_655C
                 rts
                 ldy #$00
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora (NGFLAG,x)
                 ora (RAMLO+1,x)
                 ora RTCLOK+2
                 bpl L_6539
                 cim
                 cim
                 rti
                 rti
                 lda DOSVEC
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 rti
                 rti
                 rti
                 rti
L_6539           rts
                 cli
                 clc
                 clc
                 cli
                 tay
                 brk
                 brk
                 brk
                 brk
                 ora (NGFLAG,x)
                 ora RAMLO
                 nop LMARGN,x
                 cim
                 sty ICBAHZ,x
                 ora #$02
                 brk
                 brk
                 jsr L_6060
                 rts
                 rts
                 rts
                 cli
                 clc
                 clc
                 clc
                 clc
                 clc
L_655C           cli
                 cli
                 tay
                 plp
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
                 brk
                 brk
L_656D           brk
L_656E           brk
                 brk
                 brk
                 brk
                 brk
                 ora (BUFADR,x)
                 bpl L_658B
                 bit RAMLO+1
L_6579           ora #$01
                 cim
                 cim
                 cim
                 brk
                 brk
                 brk
                 brk
                 ora HOLD1,x
                 ora (RAMLO+1,x)
                 asl VVTP
                 stx BUFADR+1
                 clc
L_658B           cli
                 rts
                 rts
                 nop #$80
                 brk
                 brk
                 nop #$80
                 nop #$80
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
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 rti
                 nop RAMLO+1,x
                 brk
                 brk
                 php
                 eor #$45
                 lsr COLCRS+1
                 cli
                 rts
                 nop #$00
                 brk
                 brk
                 brk
                 brk
                 rti
                 bvc L_65D6
                 rts
                 rts
                 nop #$00
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
                 brk
L_65D6           brk
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
                 nop RAMLO
                 ora BRKKEY,x
                 ora (POKMSK),y
                 bpl L_663B+1
                 cim
                 rti
                 eor (COLCRS,x)
                 nop !
                 ldy #$80
                 brk
                 brk
                 brk
                 brk
                 brk
                 rti
                 rti
                 bvc L_660A
                 nop RTCLOK+2,x
                 cli
                 ldy #$00
                 brk
                 sta (WARMST,x)
                 brk
                 cim
                 and #$12
                 nop LNFLG
                 nop RAMLO+1,x
L_660A           ora (NGFLAG,x)
                 clc
                 jsr $0808
                 brk
                 bpl L_666A+1
                 php
                 nop COLCRS+1,x
                 bvc L_663D
                 and #$14
                 rti
                 sty FMSZPG+5
                 rti
                 brk
                 rti
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 php
                 cim
                 cim
                 php
                 bit ICHIDZ
                 jsr L_207E+2
                 brk
                 plp
L_663B           ora (WARMST,x)
L_663D           brk
                 brk
                 brk
                 brk
                 brk
                 lda (DSKFMS,x)
                 nop NGFLAG
                 brk
                 ora (CASINI,x)
                 nop BOOT
                 clc
                 dey
                 nop #$00
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cim
                 nop POKMSK,x
                 brk
                 nop #$80
                 bpl L_6679
                 rti
L_666A           bpl L_667D
                 asl
                 ora (LNFLG,x)
                 brk
                 brk
                 ora (ICBALZ,x)
                 php
                 ora (LNFLG,x)
                 brk
                 brk
                 brk
L_6679           brk
                 brk
                 cim
                 cim
L_667D           nop LNFLG
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop POKMSK
                 brk
                 rti
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 rti
                 brk
                 rti
                 jsr VINTER
                 jsr $0104
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora (NGFLAG,x)
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 jsr CASINI
                 nop DOSVEC
                 nop NGFLAG
                 brk
                 ora NGFLAG
                 brk
                 brk
                 asl WARMST
                 cim
                 cim
                 rti
                 nop BRKKEY
                 nop #$55
                 tya
                 nop BOOT,x
                 asl
                 eor TMPCHR
                 adc (RTCLOK,x)
                 bpl L_66DF
L_66DF           bpl L_66E1
L_66E1           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 rti
                 rti
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cim
                 php
                 php
                 cim
                 ora #$08
                 php
                 jsr WARMST
                 asl
                 brk
                 cim
                 brk
                 brk
                 brk
                 brk
                 nop #$80
                 asl NGFLAG
                 brk
                 brk
                 brk
                 brk
                 ora (CASINI,x)
                 lsr ICCOMZ
                 jsr LNFLG
                 brk
                 brk
                 rti
L_6713           brk
                 brk
                 rti
                 brk
                 rti
                 nop #$00
                 rti
                 brk
                 brk
                 nop #$00
                 brk
                 brk
                 bpl L_6728
                 nop LNFLG
                 jsr $0420
L_6728           nop POKMSK
                 nop RAMLO
                 cim
                 brk
                 brk
                 brk
                 brk
                 nop #$09
                 cim
                 brk
                 brk
                 brk
                 brk
                 brk
L_6739           brk
                 brk
                 rti
                 nop #$41
                 brk
                 brk
                 brk
                 rti
                 brk
                 brk
                 rti
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop #$80
                 brk
                 brk
                 brk
                 ora (RAMLO,x)
                 brk
L_6753           bpl L_6755
L_6755           brk
                 brk
                 brk
                 brk
                 brk
                 bpl L_675C
L_675C           bpl L_6766
                 ora (LNFLG,x)
                 php
                 ora (LNFLG,x)
                 brk
                 brk
                 brk
L_6766           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop #$00
                 brk
                 rti
                 brk
                 brk
L_6775           brk
                 brk
                 brk
                 brk
                 brk
                 rti
                 rti
                 brk
                 brk
                 brk
                 brk
                 php
                 brk
                 brk
                 ora (CASINI,x)
                 ora (LNFLG,x)
                 brk
                 ora (LNFLG,x)
                 brk
                 brk
                 ora (CASINI,x)
                 brk
                 brk
                 bpl L_6713
                 nop ICHIDZ
                 sta ICPTLZ,x
                 eor CASINI
                 cim
                 eor (RTCLOK+2),y
                 clc
L_679C           sty RAMLO
                 nop #$84
                 brk
                 brk
                 rti
                 nop #$40
                 brk
                 brk
                 bvc L_6739
                 rti
                 brk
                 rti
                 nop #$00
                 brk
                 brk
                 brk
                 cim
                 cim
                 brk
                 cim
                 cim
                 cim
                 php
                 cim
                 brk
                 cim
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop #$20
                 rol
                 sta (FREQ,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop #$11
                 dey
                 php
                 brk
                 brk
                 brk
                 brk
                 bpl L_6753+1
                 rti
                 bpl L_67D7
L_67D7           bpl L_67F9
                 rti
                 bcc L_675C
                 nop #$20
                 brk
                 brk
                 brk
                 nop NGFLAG
                 ora (LNFLG,x)
                 php
L_67E6           php
                 ora (NGFLAG,x)
                 nop NGFLAG
                 ora (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 jsr CRITIC
                 brk
                 brk
                 brk
                 brk
                 brk
L_67F9           brk
                 brk
                 bpl L_679C+1
                 bpl L_67FF
L_67FF           brk
                 brk
                 bpl L_6843
                 nop #$10
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 jsr L_401E+2
                 brk
                 brk
                 brk
                 ora (LNFLG,x)
                 nop LNFLG
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop LNFLG
                 nop CASINI
                 brk
                 brk
                 cim
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
                 brk
                 brk
                 rti
                 jsr L_4000
                 bpl L_6834
L_6834           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 bpl L_684C
                 brk
                 brk
                 brk
                 brk
                 cim
                 brk
                 brk
L_6843           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_684C           brk
                 brk
                 brk
                 brk
                 nop ICHIDZ
                 ora (FMSZPG+5,x)
                 lda FMSZPG+6
                 ora (LNFLG),y
                 bvc L_686E
                 ora TRAMSZ
                 adc (LOMEM+1,x)
                 jsr ICDNOZ
                 rti
                 bpl L_6883+1
                 bvc L_67E6
                 rti
                 sty ECSIZE,x
                 bvc L_686B
L_686B           bpl L_688D
                 brk
L_686E           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cim
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 jsr L_8A88
L_6883           jsr L_8090
                 nop #$00
                 nop #$00
                 ldy #$04
                 cim
L_688D           cim
                 brk
                 brk
                 brk
                 brk
                 sty FKDEF
                 bpl L_6899+1
                 brk
                 nop WARMST
L_6899           bpl L_68BF
                 rts
                 jsr WARMST
                 brk
                 brk
                 ora (LNFLG,x)
                 brk
                 brk
                 cim
                 cim
                 brk
                 brk
                 ora (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 php
                 bvc L_68F4
                 brk
                 brk
                 brk
                 rti
                 rti
                 brk
                 rti
                 nop ICBLLZ
                 nop LNFLG
L_68BF           brk
                 brk
                 nop TOPSTK
                 jsr RAMLO
                 brk
                 brk
                 brk
                 brk
                 brk
                 php
                 php
                 bpl L_68CF
L_68CF           brk
                 brk
                 brk
                 brk
                 ora (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora (LNFLG,x)
                 ora (LNFLG,x)
                 brk
                 brk
                 bpl L_6921+1
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
                 nop #$10
                 php
                 nop #$10
                 nop LNFLG
L_68F4           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop RAMLO
                 brk
                 brk
                 brk
                 brk
                 nop $F0F0,x
                 cpy #$C0
                 cpy #$C0
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ins L_3F3F,x
                 aso $0F0F
                 aso DSTATS
                 aso (CASINI+1,x)
                 brk
                 brk
                 brk
                 brk
                 aso (FPTR2+1,x)
L_6921           ins $FFFF,x
L_6924           ins $FFFF,x
L_6927           ins $FFFF,x
L_692A           ins $FFFF,x
L_692D           ins $FFFF,x
                 nop $F0F0,x
                 beq L_6924+1
                 beq L_6927
                 beq L_6927+2
                 beq L_692A+1
                 cpy #$C0
                 brk
                 brk
                 cpy #$3F
                 rla $0F3F,x
                 aso CASINI+1
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (FPTR2+1,x)
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 rla L_3F3F,x
                 rla $FFFF,x
                 nop $FCFC,x
                 nop $FCFC,x
                 nop $FFFF,x
                 ins $FCFF,x
                 beq L_692D+1
L_696E           cpy #$C0
                 aso DSTATS
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cpy #$00
                 brk
                 brk
                 brk
                 brk
                 ins $FFFF,x
                 ins L_3FFF,x
                 aso L_3F0E+1
                 rla $0F3F,x
                 aso L_3F0E+1
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FCFF,x
                 nop CHLINK+1,x
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
                 cpy #$00
                 brk
                 brk
                 brk
                 ins $FFFF,x
                 rla $0F3F,x
                 aso $0F0F
L_69B9           aso CASFLG
                 aso (CASINI+1,x)
                 aso (APPMHI+1,x)
                 nop $F0F0,x
                 cpy #$C0
                 cpy #$C0
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ins L_3F3F,x
                 aso $0F0F
                 aso DSTATS
                 aso (CASINI+1,x)
                 brk
                 brk
                 brk
                 brk
                 aso (FPTR2+1,x)
                 ins $FFFF,x
L_69E4           ins $FFFF,x
L_69E7           ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FCFF,x
                 beq L_69E4+1
                 cpy #$C0
                 cpy #$C0
                 beq L_69B9+2
                 brk
                 brk
                 brk
                 cpy #$F0
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 brk
                 brk
                 brk
                 brk
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
L_6A19           ins $FFFF,x
                 ins L_3F3F,x
                 ins $FFFF,x
                 nop $F0FC,x
                 beq L_69E7
                 cpy #$C0
                 beq L_6A19+2
                 cpy #$C0
                 cpy #$F0
                 nop DDEVIC,x
                 brk
                 aso (LNFLG,x)
                 aso (LNFLG,x)
                 aso (LNFLG,x)
                 aso (LNFLG,x)
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 ins $FF00,x
                 brk
                 ins $FF00,x
                 brk
                 ins $FFFF,x
                 ins $0F3F,x
                 aso $FFFF
                 ins $FFFF,x
                 nop $FCFC,x
                 brk
L_6A59           beq L_6A5B
L_6A5B           beq L_6A5D
L_6A5D           nop $FF00,x
                 brk
                 beq L_6A63
L_6A63           cpy #$00
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
                 cpy #$00
                 rla L_3F3F,x
                 rla L_3F3F,x
                 rla L_3FFF,x
                 aso CASFLG
                 aso (APPMHI+1,x)
                 rla $F000,x
                 brk
                 beq L_6A85
L_6A85           cpy #$00
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
                 rla L_3F00,x
                 brk
                 aso DDEVIC
                 brk
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 ins $FFFF,x
                 ins $FFFF,x
                 ins FPTR2+1,x
                 ins $FF00,x
                 brk
                 ins $FF00,x
                 brk
                 beq L_6AB3
L_6AB3           beq L_6AB5
L_6AB5           beq L_6AB7
L_6AB7           beq L_6AB9
L_6AB9           cpy #$00
                 cpy #$00
                 cpy #$00
                 cpy #$00
                 aso DSTATS
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
                 aso (CASINI,x)
                 ins $FF02,x
                 cim
                 ins L_3F02,x
                 cim
L_6AD9           rla $0F02,x
                 cim
L_6ADD           aso $FF02
                 cim
                 ins $FC02,x
                 cim
                 nop $FC02,x
                 cim
                 beq L_6AD9+2
                 beq L_6ADD
                 cpy #$C0
                 beq L_6AF4
                 aso (LNFLG,x)
                 brk
L_6AF4           brk
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
                 brk
                 ins $FF00,x
                 brk
L_6B05           rla L_3F00,x
                 brk
                 aso DDEVIC
                 brk
                 aso (LNFLG,x)
                 ins $FF00,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FCFF,x
                 nop $FCFC,x
                 nop FPTR2+1,x
                 beq L_6B23
L_6B23           beq L_6B25
L_6B25           cpy #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 beq L_6B31
L_6B31           rla L_3F00,x
                 brk
                 aso $0F00
                 brk
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 aso (FPTR2+1,x)
                 nop $F0FC,x
                 beq L_6B05+1
                 cpy #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 beq L_6B4F
L_6B4F           ins DDEVIC,x
                 brk
                 aso (LNFLG,x)
                 aso (LNFLG,x)
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
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 brk
                 ins $C000,x
                 brk
                 brk
                 brk
                 brk
                 brk
                 cpy #$00
                 beq L_6B7D
L_6B7D           beq L_6B7F
L_6B7F           ins $C000,x
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
                 aso (CASINI+1,x)
                 aso $FF0F
                 rla $0F0F,x
                 aso L_3F0E+1
                 rla L_3F00,x
                 brk
                 ins $FF00,x
                 brk
                 ins $F000,x
                 brk
                 beq L_6BA5
L_6BA5           beq L_6BA7
L_6BA7           beq L_6BA9
L_6BA9           nop $FC00,x
                 brk
                 nop $FF00,x
                 brk
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (APPMHI+1,x)
                 rla FPTR2+1,x
                 ins $0F00,x
                 brk
                 aso (LNFLG,x)
                 aso (LNFLG,x)
                 rla $FF00,x
                 brk
                 ins $FF00,x
                 brk
                 ins $FF00,x
                 brk
                 ins $FF00,x
                 brk
                 nop $FCFC,x
                 nop $FCFC,x
                 nop $C0F3,x
                 cpy #$00
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
                 aso $FF00
                 brk
                 rla $0F00,x
                 brk
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 aso $FF00
                 ins WARMST,x
                 jmp (L_6C06)
L_6C06           jmp L_6C4A
L_6C09           bvs L_6C79+2
                 bvs L_6C4F
                 rti
                 shy VPRCED,x
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 escrts #$00
                 ror L_706F+1
                 eor (LNFLG,x)
L_6C2C           adc L_6F2B+1
L_6C2F           adc (ADRESS,x)
                 brk
                 and COLAC
                 cim
                 rra $0E72
L_6C38           asl L_6C2F+1
                 adc FKDEF+1
                 rra (ADRESS+1),y
                 brk
                 cim
                 adc DOSINI+1
                 bit L_616F
                 nop APPMHI
                 lse (XMTDON,x)
L_6C4A           lda #$0F
                 sta COLOR0
L_6C4F           sta COLOR1
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
L_6C6C           lda L_6C09,x
                 sta $0680,x
                 inx
                 cpx #$30
                 bne L_6C6C
                 lda #$07
L_6C79           sta $06FF
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
L_6CE7           lda L_6C2C+1,x
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
L_6D6C           sta HSCROL
                 jmp L_6D2F
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
                 brk
                 brk
                 brk
L_6D80           brk
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_6DED           brk
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_6E00           brk
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 rol L_776E+1
                 brk
                 bit L_616F
                 nop SAVADR+1
                 ror TOADR+1
                 and (COLAC,x)
                 arr #$61
                 ror L_696E+1
                 nop LNFLG
                 php
                 rla (BOOT,x)
                 brk
                 ora (DSKFMS+1),y
                 clc
                 aso LNFLG,x
                 and #$6D
                 adc (TOADR+1,x)
                 adc #$6E
                 adc LNFLG
                 rla (SHFAMT),y
                 ror ENDPT
                 rra FKDEF+1,x
                 cim
                 adc DOSINI
                 php
                 rla (BOOT,x)
                 brk
                 ora (DSKFMS+1),y
                 clc
L_6E61           aso LNFLG,x
                 nop FKDEF+1,x
L_6E65           adc #$74
                 rra APPMHI
                 brk
                 brk
                 nop SAVADR,x
L_6E6E           adc LNFLG
                 adc COLAC
                 adc (LNFLG,x)
                 adc (BITMSK,x)
L_6E76           nop LNFLG
                 nop SAVADR+1,x
                 adc ADRESS+1
                 rra TOADR
                 nop SAVADR,x
                 adc #$73
                 brk
                 rra (ENDPT),y
                 rra L_7971+1
                 brk
                 adc (COLAC,x)
                 adc LNFLG
                 adc BITMSK,x
                 arr #$6E
                 rra L_6E76+1
                 asl LNFLG
                 brk
                 and (TOADR,x)
                 nop ADRESS+1,x
                 cim
                 brk
                 nop SAVADR,x
                 adc LNFLG
                 and L_746E+1
                 pla
                 adc COLAC
                 rra (SAVADR),y
                 adc #$70
                 brk
                 aso ICDNOZ
                 cim
                 arr #$61
                 ror L_696E+1
                 nop CMCMD
                 brk
                 rra FKDEF+1,x
                 rra (LNFLG),y
                 nop ADRESS+1
                 rra (ENDPT),y
                 cim
                 rra L_6579
                 nop DOSINI
                 adc (LNFLG,x)
                 rra (ROWAC),y
                 adc (LOGCOL,x)
                 adc LOGCOL
                 cim
                 adc (TOADR,x)
                 nop LNFLG,x
                 aso LTEMP
                 adc (ENDPT+1,x)
                 rra (CMCMD),y
                 brk
                 rra (LOGCOL),y
                 cim
                 adc (BUFSTR+1,x)
                 cim
                 jmp (L_6465)
                 brk
                 adc (DELTAC,x)
                 adc (KEYDEF,x)
                 brk
                 ror COLAC
                 rra BUFSTR+1
                 adc #$74
                 nop L_6E6E+1
                 jmp (KEYDEF)
                 nop SHFAMT,x
                 brk
                 cim
                 adc LNFLG
                 nop COLAC,x
                 adc (ROWAC,x)
                 bvs L_6F69
                 nop LNFLG
                 adc #$6E
                 brk
                 rra (ROWAC),y
                 adc (LOGCOL,x)
                 adc DOSINI
                 rra FKDEF+1,x
                 cim
                 bvs L_6F78+1
                 nop LNFLG
                 cim
                 adc L_7300,y
                 rra L_656D
                 rra L_656E
                 ora (LNFLG,x)
                 brk
                 brk
                 and L_756F,y
                 brk
                 adc L_7375
L_6F2B           nop LNFLG,x
                 nop FKDEF+1,x
                 arr #$65
                 brk
                 rra (SHFAMT,x)
                 ror L_7274
                 rra BUFSTR
                 rra TOADR
                 nop SAVADR,x
                 adc LNFLG
                 rol FKDEF+1,x
                 adc COLAC+1,x
                 nop L_6E61
                 nop LNFLG
                 cim
                 adc (ENDPT,x)
                 nop BUFSTR,x
                 adc LNFLG
                 adc L_756F,y
                 cim
                 brk
                 rra FKDEF+1,x
                 adc L_7400,y
                 pla
                 cim
                 rra L_6775
                 pla
                 brk
                 nop SAVADR,x
                 adc LNFLG
                 aso (RTCLOK),y
                 brk
L_6F69           jmp (L_7665)
                 adc BUFSTR
                 rra (LNFLG),y
                 nop SHFAMT,x
                 brk
                 rra (SHFAMT,x)
                 ror L_7265+1
L_6F78           rra L_746E
                 brk
                 nop SAVADR,x
                 adc LNFLG
L_6F80           bit SAVADR+1
                 adc L_6E65
                 rra (SAVADR+1),y
                 rra BITMSK
                 rla (SAVADR,x)
                 adc (BITMSK,x)
                 rra ADRESS+1
                 cim
                 ora (LNFLG,x)
                 brk
                 brk
                 rla FKDEF+1
                 adc ADRESS+1
                 rla (SHFAMT,x)
                 nop SAVADR+1
                 ror TOADR+1
                 cim
                 adc L_2D00,y
                 adc #$6B
                 adc LNFLG
                 plp
                 adc ENDPT,x
                 rra (SAVADR,x)
                 adc #$6E
                 rra (SHFAMT),y
                 ror APPMHI
                 brk
                 and (BUFSTR,x)
                 rra (SHFAMT),y
                 brk
                 adc (DELTAR,x)
                 adc (SAVADR+1,x)
                 jmp (L_6261)
                 jmp (ADRESS+1)
                 aso ICPTHZ
                 cim
                 adc ADRESS+1
                 ror L_21FF+1
                 adc COLAC
                 adc ENDPT
                 aso APPMHI
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
                 brk
                 ora $0D0D
                 ora L_6DED
                 adc L_6D6C+1
                 adc $0D0D
                 ora $0D0D
                 ora $0D0D
                 ora $0DFF
                 ora $0C61
                 adc (ICDNOZ,x)
                 anc #$61
                 and (TSLNUM+1,x)
                 asl
                 adc (ICDNOZ,x)
                 lda (SOUNDR,x)
                 ora #$61
                 and (TSLNUM+1,x)
                 eor (FKDEF+1,x)
                 php
                 adc (ICDNOZ,x)
                 lda (SOUNDR,x)
                 adc (ICDNOZ,x)
                 aso FKDEF+1
                 and (TSLNUM+1,x)
                 eor (FKDEF+1,x)
                 and (TSLNUM+1,x)
                 asl FKDEF+1
                 and (TSLNUM+1,x)
                 eor (FKDEF+1,x)
                 and (TSLNUM+1,x)
                 eor (RAMLO+1,x)
                 adc (ICDNOZ,x)
                 lda (SOUNDR,x)
                 adc (ICDNOZ,x)
                 lda (SOUNDR,x)
                 adc (RAMLO,x)
                 adc (ICDNOZ,x)
                 lda (SOUNDR,x)
                 adc (ICDNOZ,x)
                 lda (SOUNDR,x)
                 adc (ICDNOZ,x)
                 aso (FKDEF+1,x)
                 and (TSLNUM+1,x)
                 eor (FKDEF+1,x)
                 and (TSLNUM+1,x)
                 eor (FKDEF+1,x)
                 and (TSLNUM+1,x)
                 cim
                 adc (ICDNOZ,x)
                 lda (SOUNDR,x)
                 adc (ICDNOZ,x)
                 lda (SOUNDR,x)
                 adc (ICDNOZ,x)
                 lda (SOUNDR,x)
L_706F           ora (FRX,x)
                 lda (DOSINI+1,x)
                 ora $0D0D
                 ins $0D0D,x
                 ora $0D6D
                 rra (LOADFLG,x)
                 ora $0D6D
                 dex
                 rra (DOSINI+1,x)
                 adc L_630D
                 dex
                 ora $0D6D
                 dex
                 rra (DOSINI+1,x)
                 ins $0D0D,x
                 ora $010D
                 lda (SOUNDR,x)
                 and (FR1+1,x)
                 lda (NGFLAG,x)
                 and (TSLNUM+1,x)
                 eor (ICDNOZ,x)
                 lda (NGFLAG,x)
                 ora (SOUNDR,x)
                 and (FR1+1,x)
                 lda (SOUNDR,x)
                 ora (TSLNUM+1,x)
                 eor (ICDNOZ,x)
                 lda (FR1+1,x)
                 ora (NGFLAG,x)
                 and (FR1+1,x)
                 lda (SOUNDR,x)
                 and (NGFLAG,x)
                 eor (ICDNOZ,x)
                 lda (FR1+1,x)
                 eor (NGFLAG,x)
                 ora (FR1+1,x)
                 lda (SOUNDR,x)
                 and (TSLNUM+1,x)
                 ora (ICDNOZ,x)
                 lda (FR1+1,x)
                 eor (ICDNOZ,x)
                 ora (NGFLAG,x)
                 lda (SOUNDR,x)
                 and (TSLNUM+1,x)
                 eor (NGFLAG,x)
                 lda (FR1+1,x)
                 eor (ICDNOZ,x)
                 lda (NGFLAG,x)
                 ora (SOUNDR,x)
                 and (TSLNUM+1,x)
                 eor (ICDNOZ,x)
                 ora (FR1+1,x)
                 eor (ICDNOZ,x)
                 lda (SOUNDR,x)
                 ora (NGFLAG,x)
                 and (TSLNUM+1,x)
                 eor (ICDNOZ,x)
                 lda (NGFLAG,x)
                 eor (ICDNOZ,x)
                 lda (SOUNDR,x)
                 and (NGFLAG,x)
                 ora (TSLNUM+1,x)
                 eor (ICDNOZ,x)
                 lda (FR1+1,x)
                 ora (ICDNOZ,x)
                 lda (SOUNDR,x)
                 and (TSLNUM+1,x)
                 ora (NGFLAG,x)
                 eor (ICDNOZ,x)
                 lda (FR1+1,x)
                 eor (NGFLAG,x)
                 lda (SOUNDR,x)
                 and (TSLNUM+1,x)
                 eor (NGFLAG,x)
                 ora (ICDNOZ,x)
                 lda (FR1+1,x)
                 eor (ICDNOZ,x)
                 ora (SOUNDR,x)
                 and (TSLNUM+1,x)
                 eor (FR1+1,x)
                 ora (NGFLAG,x)
                 lda (FR1+1,x)
                 eor (ICDNOZ,x)
                 lda (NGFLAG,x)
                 and (TSLNUM+1,x)
                 eor (FR1+1,x)
                 and (NGFLAG,x)
                 ora (FR1+1,x)
                 eor (ICDNOZ,x)
                 lda (SOUNDR,x)
                 ora (TSLNUM+1,x)
                 eor (FR1+1,x)
                 and (TSLNUM+1,x)
                 ora (NGFLAG,x)
                 eor (ICDNOZ,x)
                 lda (SOUNDR,x)
                 and (NGFLAG,x)
                 eor (FR1+1,x)
                 and (TSLNUM+1,x)
                 eor (NGFLAG,x)
                 ora (ICDNOZ,x)
                 lda (SOUNDR,x)
                 and (TSLNUM+1,x)
                 ora (FR1+1,x)
                 and (TSLNUM+1,x)
                 eor (ICDNOZ,x)
                 ora (DOSINI+1,x)
                 ins $0D0D,x
                 aso (FKDEF+1,x)
                 ora FKDEF+1
                 aso (CASINI+1,x)
                 adc (RAMLO+1,x)
                 adc (CASINI+1,x)
                 nop FKDEF+1
                 aso (FKDEF+1,x)
                 nop RAMLO
                 adc (CASINI+1,x)
                 adc (RAMLO,x)
                 aso (FR2+1,x)
                 aso (CASINI+1,x)
                 ins CASINI+1
                 cim
                 nop #$A1
                 ins (TSLNUM+1,x)
                 nop #$02
                 cim
                 nop #$A1
                 ins (TSLNUM+1,x)
                 nop #$02
                 ora (FR2+5,x)
                 ora (NGFLAG,x)
                 sbc #$01 !
                 ora (FR2+5,x)
                 ora (NGFLAG,x)
                 sbc (NGFLAG,x)
                 ins NGFLAG
                 sbc (NGFLAG,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora FR1+1
                 ora (FR1+1,x)
                 ora (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (RAMLO+1,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 nop FR1+2
                 ora (FR1+2,x)
                 nop RAMLO
                 nop #$01
                 nop #$04
                 ora $0DFF
                 ora $0D0D
                 lda (NGFLAG,x)
                 adc (NGFLAG,x)
                 and (NGFLAG,x)
                 eor (NGFLAG,x)
                 and (NGFLAG,x)
                 adc (NGFLAG,x)
                 lda (TSLNUM+1,x)
                 ora (FKDEF+1,x)
                 ora (ICDNOZ,x)
                 ora (SOUNDR,x)
                 ora (ICDNOZ,x)
                 ora (FKDEF+1,x)
                 ora (TSLNUM+1,x)
                 lda (NGFLAG,x)
                 adc (NGFLAG,x)
                 and (NGFLAG,x)
                 eor (NGFLAG,x)
                 and (NGFLAG,x)
                 adc (NGFLAG,x)
                 lda (TSLNUM+1,x)
                 ora (FKDEF+1,x)
                 ora (ICDNOZ,x)
                 ora (SOUNDR,x)
                 ora (ICDNOZ,x)
                 ora (FKDEF+1,x)
                 ora (TSLNUM+1,x)
                 lda (NGFLAG,x)
                 adc (NGFLAG,x)
                 and (NGFLAG,x)
                 eor (NGFLAG,x)
                 and (NGFLAG,x)
                 adc (NGFLAG,x)
                 lda (FKDEF+1,x)
                 ora (IODVC,x)
                 adc (IODVC,x)
                 adc (IODVC,x)
                 adc (IODVC,x)
                 adc (IODVC,x)
                 ora (FKDEF+1,x)
                 lda (NGFLAG,x)
                 adc (NGFLAG,x)
                 and (NGFLAG,x)
                 eor (NGFLAG,x)
                 and (NGFLAG,x)
                 adc (NGFLAG,x)
                 lda (TSLNUM+1,x)
                 ora (FKDEF+1,x)
                 ora (ICDNOZ,x)
                 ora (SOUNDR,x)
                 ora (ICDNOZ,x)
                 ora (FKDEF+1,x)
                 ora (TSLNUM+1,x)
                 lda (NGFLAG,x)
                 adc (NGFLAG,x)
                 and (NGFLAG,x)
                 eor (NGFLAG,x)
                 and (NGFLAG,x)
                 adc (NGFLAG,x)
                 lda (TSLNUM+1,x)
                 ora (FKDEF+1,x)
                 ora (ICDNOZ,x)
                 ora (SOUNDR,x)
                 ora (ICDNOZ,x)
                 ora (FKDEF+1,x)
                 ora (TSLNUM+1,x)
                 adc (NGFLAG,x)
                 adc (NGFLAG,x)
                 cmp (NGFLAG,x)
                 adc (NGFLAG,x)
                 cmp (NGFLAG,x)
                 adc (NGFLAG,x)
                 adc (TSLNUM+1,x)
                 ora (FKDEF+1,x)
                 ora (ICDNOZ,x)
                 ora (SOUNDR,x)
                 ora (ICDNOZ,x)
                 ora (FKDEF+1,x)
                 ora (TSLNUM+1,x)
                 ora $0D0D
                 ins $0D0D,x
                 ora $0D0D
                 ora ICCOMZ
                 adc (RAMLO+1,x)
                 nop ICCOMZ
                 cim
                 eor (RAMLO,x)
                 aso (ICCOMZ,x)
                 cim
                 cim
                 lda (CASINI+1,x)
                 aso (ICDNOZ,x)
                 cim
                 cim
                 ldx #$03
                 cim
                 and (PALNTS,x)
                 cim
L_7265           ldx #$22
                 cim
                 cim
                 cim
                 cim
                 ldx #$23
                 cim
                 cim
                 adc (CRITIC,x)
                 ldx #$24
                 cim
L_7274           cim
                 cim
                 ldx #$24
                 lda (CASINI,x)
                 cim
                 eor (MVLNG,x)
                 bit MVLNG
                 cim
                 cim
                 ldx #$24
                 ldx #$41
                 cim
                 aso (ICBALZ,x)
                 ldx #$41
                 aso (CASINI+1,x)
                 rla (MVLNG,x)
                 cim
                 aso (RAMLO,x)
                 and (MVLNG,x)
                 cim
                 nop RAMLO+1
                 lda (CRITIC,x)
                 ora FPTR2+1
                 ora $0D0D
                 ora $C103
L_72A0           ora (IODVC,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 aso (NGFLAG,x)
                 cmp (BOOT,x)
                 cmp (NGFLAG,x)
                 ora (PROMPT,x)
                 ora (IODVC,x)
                 aso (IODVC,x)
                 ora (PROMPT,x)
                 ora (TRAMSZ,x)
                 lda (TRAMSZ,x)
                 ora (IODVC,x)
                 aso (IODVC,x)
                 adc (IODVC,x)
                 aso (IODVC,x)
                 ora (CASINI+1,x)
                 cmp (CASINI,x)
                 adc (CASINI,x)
                 cmp (CASINI+1,x)
                 asl FKDEF+1
                 asl CASINI+1
                 cmp (CASINI,x)
                 adc (CASINI,x)
                 cmp (CASINI+1,x)
                 ora (IODVC,x)
                 aso (IODVC,x)
                 adc (IODVC,x)
                 aso (IODVC,x)
                 ora (TRAMSZ,x)
                 adc (TRAMSZ,x)
                 ora (PROMPT,x)
                 aso PROMPT
                 ora (NGFLAG,x)
                 cmp (BOOT,x)
                 cmp (NGFLAG,x)
                 aso (IODVC,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 aso (DOSINI+1,x)
                 ora $0DFF
                 ora $C101
                 ora (IODVC,x)
                 ora IODVC
                 ora (IODVC,x)
                 ora (NGFLAG,x)
L_7300           cmp (FKDEF+1,x)
                 cmp (RAMLO+1,x)
                 cmp (FKDEF+1,x)
                 cmp (NGFLAG,x)
                 ora (IODVC,x)
                 adc (IODVC,x)
                 ora IODVC
                 adc (IODVC,x)
                 ora (NGFLAG,x)
                 dcm (RAMLO+1,x)
                 dcm (NGFLAG,x)
                 ora L_6504
                 nop RAMLO
                 adc (MVLNG+1,x)
                 adc (RAMLO,x)
                 nop ADRESS+1
                 nop RAMLO
                 adc (MVLNG+1,x)
                 adc (RAMLO,x)
                 nop FKDEF+1
                 lax (FKDEF+1,x)
                 nop RAMLO
                 adc (MVLNG+1,x)
                 adc (RAMLO,x)
                 ora $0D0D
                 ora $0D0D
                 ins $C101,x
                 anc #$0D
                 ora (IODVC,x)
                 anc #$01
                 cmp (DOSVEC+1,x)
                 ora (IODVC,x)
                 anc #$01
                 cmp (RAMLO+1,x)
                 adc (RAMLO+1,x)
                 ora (IODVC,x)
                 nop FKDEF+1
                 eor (FKDEF+1,x)
                 nop NGFLAG
                 cmp (CASINI+1,x)
                 adc (FMSZPG,x)
                 adc (CASINI+1,x)
                 ora (IODVC,x)
                 cim
                 adc (FMSZPG+2,x)
                 adc (CASINI,x)
                 ora (IODVC,x)
                 ora (FKDEF+1,x)
                 lse (IODVC,x)
                 lse (FKDEF+1,x)
                 ora (NGFLAG,x)
                 cmp (CASINI,x)
                 adc (FMSZPG+2,x)
                 adc (CASINI,x)
                 ora (IODVC,x)
                 aso (FKDEF+1,x)
                 lse (FKDEF+1,x)
L_7375           aso (NGFLAG,x)
                 cmp (RAMLO,x)
                 adc (SOUNDR,x)
                 adc (RAMLO,x)
                 ora (IODVC,x)
                 ora FKDEF+1
                 ora NGFLAG
                 cmp (DOSVEC+1,x)
                 ora (IODVC,x)
                 anc #$01
                 cmp (DOSVEC+1,x)
                 ora ($CC,x)
                 ora $0DFF
                 ora $0D0D
                 ora (FR2+5,x)
                 ora (NGFLAG,x)
                 sbc (BOOT,x)
                 sbc (NGFLAG,x)
                 ora (FR1+1,x)
                 ora (FR2+1,x)
                 ora (FR1+1,x)
                 ora (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (RAMLO+1,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+3,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+3,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (RAMLO+1,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 ora (FR1+1,x)
                 ora (FR2+1,x)
                 ora (FR1+1,x)
                 ora (NGFLAG,x)
                 sbc (BOOT,x)
                 sbc (NGFLAG,x)
                 ora (FR2+5,x)
                 ora (DOSINI+1,x)
                 ora $0D0D
                 ins $0D0D,x
                 ora $CD0D
                 nop IODVC
                 ora IODVC
                 adc (NGFLAG,x)
                 ora (IODVC,x)
                 adc (NGFLAG,x)
                 cmp (RAMLO+1,x)
                 cmp (CASINI,x)
                 ora (IODVC,x)
L_7400           cim
                 cmp (CASINI,x)
                 cmp (CASINI,x)
                 cmp (CASINI,x)
                 ora (IODVC,x)
                 cim
                 cmp (FKDEF+1,x)
                 ora (IODVC,x)
                 cim
                 cmp (CASINI,x)
                 ora (IODVC,x)
                 cim
                 cmp (CASINI,x)
                 cmp (CASINI,x)
                 cmp (CASINI,x)
                 ora (IODVC,x)
                 ora (FKDEF+1,x)
                 cmp (CASINI,x)
                 cmp (NGFLAG,x)
                 adc (IODVC,x)
                 cim
                 ora (IODVC,x)
                 cim
                 cmp (CASINI,x)
                 cmp (CASINI,x)
                 cmp (CASINI,x)
                 ora (IODVC,x)
                 cim
                 cmp (CASINI,x)
                 cmp (CASINI,x)
                 cmp (CASINI,x)
                 ora (IODVC,x)
                 cim
                 cmp (NGFLAG,x)
                 adc (IODVC,x)
                 cim
                 cmp (CASINI,x)
                 ora (IODVC,x)
                 cim
                 cmp (CASINI,x)
                 cmp (CASINI,x)
                 cmp (CASINI,x)
                 ora (IODVC,x)
                 adc (RAMLO,x)
                 cmp (RAMLO+1,x)
                 ora (IODVC,x)
                 ora IODVC
                 nop FKDEF+1
                 ora ($CC,x)
                 ora $0DFF
                 ora $0D0D
                 ora (ICSTAZ,x)
                 ora (LOGCOL,x)
                 ora (ICSTAZ,x)
                 ora (NGFLAG,x)
                 rra (NGFLAG,x)
                 lax (NGFLAG,x)
                 rra (NGFLAG,x)
                 ora (LOGCOL,x)
L_746E           ora (MVLNG+1,x)
                 ora (LOGCOL,x)
                 ora (NGFLAG,x)
                 rra (NGFLAG,x)
                 rla (NGFLAG,x)
                 rra (NGFLAG,x)
                 ora (ICSTAZ,x)
                 ora (LOGCOL,x)
                 ora (ICSTAZ,x)
                 ora (NGFLAG,x)
                 rra (NGFLAG,x)
                 lax (NGFLAG,x)
                 rra (NGFLAG,x)
                 ora (LOGCOL,x)
                 ora (MVLNG+1,x)
                 ora (LOGCOL,x)
                 ora (NGFLAG,x)
                 rra (NGFLAG,x)
                 rla (NGFLAG,x)
                 rra (NGFLAG,x)
                 ora $0D0D
                 ora $0D0D
                 ora $0DFF
                 ora $0D0D
                 adc $0BC1
                 cmp (BUFSTR+1,x)
                 ora $EBA1
                 lda (IODVC,x)
                 anc #$C1
                 adc $A10D
                 sbc #$A1 !
                 cmp (DOSVEC+1,x)
                 cmp (BUFSTR+1,x)
                 ora $C16D
                 anc #$C1
                 ora $0DFF
                 ora $0D0D
                 ora L_6141
                 cmp (TOADR+1,x)
                 cmp (FKDEF+1,x)
                 eor (SOUNDR,x)
                 adc (ICDNOZ,x)
                 cmp (ADRESS+1,x)
                 cmp (ICDNOZ,x)
                 adc (SOUNDR,x)
                 eor (FKDEF+1,x)
                 cim
                 cmp (LOGCOL,x)
                 cmp (ICCOMZ,x)
                 adc (SOUNDR,x)
                 eor (FKDEF+1,x)
                 rla (IODVC,x)
                 adc (IODVC,x)
                 rla (FKDEF+1,x)
                 eor (SOUNDR,x)
                 adc (ICBALZ,x)
                 adc (ICBALZ,x)
                 adc (SOUNDR,x)
                 eor (FKDEF+1,x)
                 bit FKDEF+1
                 bit FKDEF+1
                 eor (SOUNDR,x)
                 adc (ICBALZ,x)
                 adc (ICBALZ,x)
                 adc (SOUNDR,x)
                 eor (FR1+1,x)
                 bit TSLNUM+1
                 bit FR1+1
L_7500           eor (CRITIC,x)
                 sbc (ICSTAZ,x)
                 lda (ICSTAZ,x)
                 sbc (CRITIC,x)
                 lse (FR1+1,x)
                 cim
                 lda (ICCOMZ,x)
                 sbc (FMSZPG,x)
                 nop FR1+1
                 and (TSLNUM+1,x)
                 and (FR1+1,x)
                 nop FMSZPG+2
                 sbc (TSLNUM+1,x)
                 sbc (FMSZPG+2,x)
                 ora $FF0D
                 ora $0D0D
                 ora $C106
                 asl RAMLO
                 cim
                 ora (PALNTS,x)
                 nop CASINI
                 cim
                 cim
                 cmp (CASINI,x)
                 cim
                 cim
                 cim
                 cim
                 ldx #$01
                 ldx #$02
                 cim
                 cim
                 cim
                 cim
                 cmp (CASINI,x)
                 cim
                 cim
                 cim
                 cim
                 ldx #$01
                 ldx #$02
                 cim
                 cim
                 cim
                 cim
                 cmp (CASINI,x)
                 cim
                 cim
                 cim
                 cim
                 ldx #$01
                 ldx #$02
                 cim
                 cim
                 cim
                 cim
                 cmp (CASINI,x)
                 cim
                 cim
                 cim
                 cim
                 ldx #$01
                 ldx #$02
                 cim
                 cim
                 cim
                 cim
                 cmp (CASINI,x)
                 cim
                 cim
                 cim
                 cim
                 ldx #$01
                 ldx #$02
L_756F           cim
                 cim
                 cim
                 ora PALNTS
                 cim
                 cim
                 ora #$62
                 ora $0DFF
                 ora $0D0D
                 asl FR1+1
                 asl CASINI+1
                 lax (FR1+1,x)
                 rla (CASINI+1,x)
                 cim
                 rra (MVLNG+1,x)
                 rla (CASINI,x)
                 cim
                 cim
                 lda ICCOMZ
                 cim
                 ora (LOGCOL,x)
                 lda ICSTAZ
                 ora (NGFLAG,x)
                 rra (ECSIZE+1,x)
                 rla (NGFLAG,x)
                 ora (LOGCOL,x)
                 lda ICSTAZ
                 ora (NGFLAG,x)
                 sbc (CASINI,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (CASINI,x)
                 sbc (NGFLAG,x)
                 asl FR1+1
                 asl TRAMSZ
                 sbc (TRAMSZ,x)
                 asl FR1+1
                 asl RAMLO
                 cmp (NGFLAG,x)
                 cmp (TRAMSZ,x)
                 nop ERRSAV
                 asl RAMLO+1
                 cmp (CMCMD,x)
                 ora $0DFF
                 ora $0D0D
                 adc (NGFLAG,x)
                 cmp (FMSZPG+4,x)
                 cmp (NGFLAG,x)
                 adc (FKDEF+1,x)
                 ora (PROMPT,x)
                 eor PROMPT
                 ora (FKDEF+1,x)
                 adc (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (FMSZPG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 adc (FKDEF+1,x)
                 ora (IODVC,x)
                 ora (SOUNDR,x)
                 cmp (SOUNDR,x)
                 cmp (SOUNDR,x)
                 ora (IODVC,x)
                 ora (FKDEF+1,x)
                 eor (NGFLAG,x)
                 cmp (NGFLAG,x)
                 eor (NGFLAG,x)
                 sbc (NGFLAG,x)
                 eor (NGFLAG,x)
                 cmp (NGFLAG,x)
                 eor (FKDEF+1,x)
                 ora (IODVC,x)
                 ora (SOUNDR,x)
                 ora (ICDNOZ,x)
                 ora (SOUNDR,x)
                 ora (IODVC,x)
                 ora (FKDEF+1,x)
                 adc (NGFLAG,x)
                 cmp (NGFLAG,x)
                 eor (NGFLAG,x)
                 and (NGFLAG,x)
                 eor (NGFLAG,x)
                 cmp (NGFLAG,x)
                 adc (FKDEF+1,x)
                 ora (IODVC,x)
                 ora (SOUNDR,x)
                 ora (ICDNOZ,x)
                 ora (SOUNDR,x)
                 ora (IODVC,x)
                 ora (FKDEF+1,x)
                 adc (NGFLAG,x)
                 cmp (NGFLAG,x)
                 eor (NGFLAG,x)
                 and (NGFLAG,x)
                 eor (NGFLAG,x)
                 cmp (NGFLAG,x)
                 adc (FKDEF+1,x)
                 dcm (SOUNDR,x)
                 ora (ICDNOZ,x)
                 ora (SOUNDR,x)
                 dcm (FKDEF+1,x)
                 ora $0D0D
                 ora $FF0D
                 ora $0D0D
                 ora $C902
                 cim
                 cim
                 and (SOUNDR,x)
                 adc (SOUNDR,x)
                 cmp (SOUNDR,x)
                 adc (SOUNDR,x)
                 and (CASINI,x)
                 cim
                 and (SOUNDR,x)
                 adc (SOUNDR,x)
                 cmp (SOUNDR,x)
                 adc (SOUNDR,x)
                 and (CASINI,x)
                 cim
                 and (SOUNDR,x)
                 adc (SOUNDR,x)
                 cmp (SOUNDR,x)
                 adc (SOUNDR,x)
                 and (CASINI,x)
                 cim
                 and (SOUNDR,x)
L_7665           adc (FMSZPG,x)
                 adc (SOUNDR,x)
                 and (CASINI,x)
                 cim
                 and (SOUNDR,x)
                 adc (SOUNDR,x)
                 cmp (SOUNDR,x)
                 adc (SOUNDR,x)
                 and (CASINI,x)
                 cim
                 and (SOUNDR,x)
                 adc (SOUNDR,x)
                 cmp (SOUNDR,x)
                 adc (SOUNDR,x)
                 and (CASINI,x)
                 cim
                 and (SOUNDR,x)
                 adc (SOUNDR,x)
                 cmp (SOUNDR,x)
                 adc (SOUNDR,x)
                 and (CASINI,x)
                 cim
                 cmp #$02
                 ora $0D0D
                 ora $0D0D
                 ins $0D0D,x
                 ora $C10D
                 and (IODVC,x)
                 adc (IODVC,x)
                 eor (IODVC,x)
                 and (IODVC,x)
                 adc (IODVC,x)
                 adc (IODVC,x)
                 cmp (SOUNDR,x)
                 cmp (FR1+1,x)
                 cmp (FR1+1,x)
                 cmp (FR1+1,x)
                 cmp (FR1+1,x)
                 cmp (ICDNOZ,x)
                 cmp (DOSINI+1,x)
                 cmp (FKDEF+1,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (IODVC,x)
                 ora (IODVC,x)
                 adc (IODVC,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (FKDEF+1,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (IODVC,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 adc (IODVC,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (FKDEF+1,x)
                 cmp (NGFLAG,x)
                 cmp (DOSVEC+1,x)
                 adc (NGFLAG,x)
                 cim
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (FKDEF+1,x)
                 cmp (CASINI,x)
                 cim
                 cmp (NGFLAG,x)
L_7707           cmp (NGFLAG,x)
                 cmp (FKDEF+1,x)
                 cmp (NGFLAG,x)
                 cmp (CASINI,x)
                 cim
                 cmp (NGFLAG,x)
                 cmp (FKDEF+1,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (CASINI,x)
                 aso (FKDEF+1,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (RAMLO,x)
                 ora (FKDEF+1,x)
                 nop IODVC
                 asl DOSINI+1
                 ins $0D0D,x
                 ora $C101
                 adc #$C1
                 ora (NGFLAG,x)
                 cmp (BOOT,x)
                 cmp (NGFLAG,x)
                 ora (IODVC,x)
                 ora (ZTEMP2+1,x)
                 ora (IODVC,x)
                 ora (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (RAMLO+1,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 ora IODVC
                 ora (IODVC,x)
                 ora (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 rra (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 ora (LOGCOL,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 ora (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 rra (NGFLAG,x)
                 cmp (NGFLAG,x)
L_776E           cmp (NGFLAG,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 ora (LOGCOL,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 ora (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (RAMLO+1,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 ora (IODVC,x)
                 ora (IODVC,x)
                 adc IODVC
                 ora (IODVC,x)
                 ora (NGFLAG,x)
                 cmp (BOOT,x)
                 cmp (NGFLAG,x)
                 ora (IODVC,x)
                 ora #$C1
                 ora (NGFLAG,x)
                 sbx #$01
                 ora $FF0D
                 ora $0D0D
                 ora L_6D6C+1
                 ora $C162
                 ora (IODVC,x)
                 rra (IODVC,x)
                 ora (IODVC,x)
                 cim
                 cim
                 cmp (NGFLAG,x)
                 cmp (LOGCOL,x)
                 cmp (NGFLAG,x)
                 cmp (PALNTS,x)
                 cim
                 cmp (NGFLAG,x)
                 cmp (LOGCOL,x)
                 cmp (NGFLAG,x)
                 lda (PALNTS,x)
                 cim
                 cmp (NGFLAG,x)
                 cmp (LOGCOL,x)
                 cmp (NGFLAG,x)
                 cmp (PALNTS,x)
                 ora L_6D6C+1
                 ora $0D0D
                 ora $FF0D
                 ora $0D0D
                 ora $0D6D
                 cim
                 ins (NGFLAG,x)
                 ins (NGFLAG,x)
                 ins (CASINI,x)
                 sbc (TSLNUM+1,x)
                 sbc (NGFLAG,x)
                 sbc (TSLNUM+1,x)
                 sbc (NGFLAG,x)
                 sbc (TSLNUM+1,x)
                 sbc (CASINI,x)
                 ins (NGFLAG,x)
                 ins (NGFLAG,x)
                 ins (DOSINI+1,x)
                 ora (FR1+3,x)
                 ora (FR1+3,x)
                 ora (FR1+3,x)
                 ora (NGFLAG,x)
                 sbc (TSLNUM+1,x)
                 sbc (NGFLAG,x)
                 sbc (TSLNUM+1,x)
                 sbc (NGFLAG,x)
                 sbc (TSLNUM+1,x)
                 sbc (NGFLAG,x)
                 ora (FR1+3,x)
                 ora (FR1+3,x)
                 ora (FR1+3,x)
                 ora (DOSINI+1,x)
                 ins (NGFLAG,x)
                 ins (NGFLAG,x)
                 ins (CASINI,x)
                 sbc (TSLNUM+1,x)
                 sbc (NGFLAG,x)
                 sbc (TSLNUM+1,x)
                 sbc (NGFLAG,x)
                 sbc (TSLNUM+1,x)
                 sbc (CASINI,x)
                 ins (NGFLAG,x)
                 ins (NGFLAG,x)
                 ins (CASINI,x)
                 ora $FF0D
                 ora $0D0D
                 ora $0D0D
                 ora LOGCOL
                 ora RAMLO+1
                 rra (RAMLO+1,x)
                 ora LOGCOL
                 ora RAMLO
                 adc RAMLO
                 nop FKDEF+1
                 lda (FKDEF+1,x)
                 lda (FKDEF+1,x)
                 nop CASINI+1
                 adc (MVLNG,x)
                 adc (MVLNG,x)
                 adc (CASINI+1,x)
                 aso (STMLBD,x)
                 aso (CASINI,x)
                 lda #$02
                 cim
                 lda #$02
                 ora (EXSVOP,x)
                 ora (LELNUM,x)
                 ora $FF0D
                 ora $0D0D
                 ora L_6D6C+1
                 adc $E3C5
                 cmp IODVC
                 rra (IODVC,x)
                 aso (IODVC,x)
                 rla (IODVC,x)
                 cmp (LOGCOL,x)
                 cmp (CASINI+1,x)
                 cmp (ICSTAZ,x)
                 cmp (IODVC,x)
                 anc #$C1
                 cmp (DOSVEC+1,x)
                 cmp (IODVC,x)
                 aso (IODVC,x)
                 rra (IODVC,x)
                 aso (IODVC,x)
                 cmp (CASINI+1,x)
                 cmp (LOGCOL,x)
                 cmp (CASINI+1,x)
                 cmp (IODVC,x)
                 ins (TEMPA+1,x)
                 ins (IODVC,x)
                 ora $0D0D
                 ora $0DFF
                 ora $0D0D
                 cim
                 cmp (FR1+3,x)
                 cmp (TRAMSZ,x)
                 ora (IODVC,x)
                 ora IODVC
                 ora IODVC
                 cim
                 rra (CASINI,x)
                 cmp (RAMLO,x)
                 cmp (NGFLAG,x)
                 adc NGFLAG
                 cmp (RAMLO,x)
                 cmp (NGFLAG,x)
                 adc NGFLAG
                 cmp (RAMLO,x)
                 cmp (CASINI,x)
                 rra (CASINI,x)
                 cmp (RAMLO,x)
                 ora (IODVC,x)
                 ora IODVC
                 ora CASINI
                 cmp TRAMSZ
                 ora $0D0D
                 ora $0D0D
                 ora $0DFF
                 ora $0D0D
                 ora $0D0D
                 ora $ED0D
                 adc $0DED
                 sbc $ED6D
                 ora $0D0D
                 ins $0D0D,x
                 ora L_616D
                 cpy SOUNDR
                 cmp (SOUNDR,x)
                 cpy FKDEF+1
                 adc (IODVC,x)
                 ora #$C1
                 adc (FKDEF+1,x)
                 cmp (SOUNDR,x)
                 aso SOUNDR
                 cmp (FKDEF+1,x)
                 adc (IODVC,x)
                 cim
                 ora CRITIC
                 cmp (FKDEF+1,x)
                 adc (IODVC,x)
                 lse (CASINI+1,x)
                 lse (IODVC,x)
                 adc (NGFLAG,x)
                 adc (IODVC,x)
                 lse (NGFLAG,x)
                 lse (IODVC,x)
                 adc (NGFLAG,x)
                 cim
                 adc (IODVC,x)
                 eor IODVC
                 adc (CASINI,x)
                 aso (FKDEF+1,x)
                 cmp (FMSZPG,x)
                 cmp (FKDEF+1,x)
                 aso (RAMLO,x)
                 adc (IODVC,x)
                 eor (IODVC,x)
                 adc (RAMLO,x)
                 ora FKDEF+1
                 eor (FKDEF+1,x)
                 ora TRAMSZ
                 adc (TRAMSZ,x)
                 ora $0D0D
                 ora $0DFF
                 ora $0D0D
                 adc IODVC
                 ora (IODVC,x)
                 adc ADRESS+1
                 cmp (NGFLAG,x)
                 cmp (ADRESS+1,x)
                 nop #$61
                 dcm (NGFLAG,x)
                 dcm (FKDEF+1,x)
                 nop #$65
                 cmp (NGFLAG,x)
                 cmp (ADRESS+1,x)
                 adc IODVC
                 ora (IODVC,x)
                 adc ADRESS+1
                 cmp (NGFLAG,x)
                 cmp (ADRESS+1,x)
                 adc IODVC
                 ora (IODVC,x)
                 adc FR1+2
                 eor (FR1+2,x)
                 cmp (NGFLAG,x)
                 cmp (FR1+2,x)
                 eor (FR1+2,x)
                 adc IODVC
                 ora (IODVC,x)
                 adc ADRESS+1
                 cmp (NGFLAG,x)
                 cmp (ADRESS+1,x)
                 ora $0D0D
                 ora $FF0D
                 ora $0D0D
                 ora L_4120+1
                 anc #$21
L_7971           eor (ICDNOZ,x)
                 eor (BOOT,x)
                 and (SOUNDR,x)
                 and (SOUNDR,x)
                 and (SOUNDR,x)
                 aso ICDNOZ
                 eor (ICDNOZ,x)
                 eor (ICDNOZ,x)
                 eor (ICDNOZ,x)
                 eor (RAMLO+1,x)
                 and (SOUNDR,x)
                 and (SOUNDR,x)
                 and (SOUNDR,x)
                 and (SOUNDR,x)
                 and (SOUNDR,x)
                 aso (FR1+1,x)
                 eor (ICDNOZ,x)
                 eor (ICDNOZ,x)
                 eor (ICDNOZ,x)
                 eor (ICDNOZ,x)
                 eor (ICDNOZ,x)
                 eor (NGFLAG,x)
                 ora (IODVC,x)
                 sbc (SOUNDR,x)
                 and (SOUNDR,x)
                 and (SOUNDR,x)
                 and (SOUNDR,x)
                 and (SOUNDR,x)
                 and (CASINI+1,x)
                 cmp (FR1+1,x)
                 eor (ICDNOZ,x)
                 eor (ICDNOZ,x)
                 eor (ICDNOZ,x)
                 eor (ICDNOZ,x)
                 ora IODVC
                 sbc (SOUNDR,x)
                 and (SOUNDR,x)
                 and (SOUNDR,x)
                 and (CMCMD,x)
                 cmp (FR1+1,x)
                 eor (ICDNOZ,x)
                 eor (ICDNOZ,x)
                 ora #$C1
                 sbc (SOUNDR,x)
                 and (DOSVEC+1,x)
                 cmp (FR1+1,x)
                 ora $0D0D
                 ins $0D0D,x
                 ora L_610D
                 ora (TSLNUM+1,x)
                 ora (ICDNOZ,x)
                 ora (SOUNDR,x)
                 ora (FKDEF+1,x)
                 ora (TSLNUM+1,x)
                 ora (ICDNOZ,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 and (NGFLAG,x)
                 lda (NGFLAG,x)
                 adc (NGFLAG,x)
                 eor (NGFLAG,x)
                 and (NGFLAG,x)
                 lda (NGFLAG,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (SOUNDR,x)
                 ora (FKDEF+1,x)
                 ora (TSLNUM+1,x)
                 ora (ICDNOZ,x)
                 ora (TSLNUM+1,x)
                 ora (FKDEF+1,x)
                 ora (SOUNDR,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 lda (NGFLAG,x)
                 and (NGFLAG,x)
                 lda (NGFLAG,x)
                 adc (NGFLAG,x)
                 eor (NGFLAG,x)
                 lda (NGFLAG,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FKDEF+1,x)
                 ora (SOUNDR,x)
                 ora (FKDEF+1,x)
                 ora (TSLNUM+1,x)
                 ora (ICDNOZ,x)
                 ora (TSLNUM+1,x)
                 ora (FKDEF+1,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 adc (NGFLAG,x)
                 lda (NGFLAG,x)
                 and (NGFLAG,x)
                 lda (NGFLAG,x)
                 adc (NGFLAG,x)
                 eor (NGFLAG,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FR1+1,x)
                 ora (FKDEF+1,x)
                 ora (TSLNUM+1,x)
                 ora (FKDEF+1,x)
                 ora (SOUNDR,x)
                 ora (FKDEF+1,x)
                 ora (ICDNOZ,x)
                 ora (TSLNUM+1,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (NGFLAG,x)
                 sbc (DOSINI+1,x)
                 ins $0D0D,x
                 ora VSEROR+1
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (CASINI,x)
                 cim
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (CASINI,x)
                 cim
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (PALNTS,x)
                 cim
                 cim
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (CASINI,x)
                 cim
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (ADRESS,x)
                 cim
                 cim
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (CASINI,x)
                 cim
                 cmp (NGFLAG,x)
                 cmp (TOADR,x)
                 cim
                 cim
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (CASINI,x)
                 cim
                 cmp (ADRESS+1,x)
                 cmp (PALNTS,x)
                 cim
                 cim
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 cmp (CASINI,x)
                 cim
                 adc #$02
                 cim
                 adc #$02
                 ora $0D0D
                 ins LNFLG,x
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
                 ora LNFLG
                 ins L_7500
                 brk
                 lsr LNFLG
                 and L_6500,x
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
                 brk
                 aso $0F00
                 brk
                 asl $0FEF
                 inc $EE0F
                 aso $0EEF
                 ins $EF0F
                 aso $0FEF
                 ins $EF0F
                 asl $07EE
                 tsx
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
                 brk
                 brk
                 brk
                 adc LNFLG,x
                 brk
                 brk
                 aso TRAMSZ
                 brk
                 inc LNFLG
                 brk
                 aso TRAMSZ
                 brk
                 nop !
                 brk
                 brk
                 brk
                 nop TRAMSZ
                 brk
                 brk
                 eor #$00
                 brk
                 brk
                 eor TRAMSZ
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora #$EF
                 asl EEXP
                 asl NSIGN
                 asl ESIGN
                 aso ESIGN
                 aso ESIGN
                 brk
                 ins $EF07
                 aso ESIGN
                 aso ESIGN
                 aso ESIGN
                 aso NSIGN
                 asl ESIGN
                 aso EEXP
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso $0F00
                 brk
                 aso $0F00
                 brk
                 asl LNFLG
                 asl LNFLG
                 aso NSIGN
                 aso ESIGN
                 asl LNFLG
                 aso LNFLG
                 asl LNFLG
                 asl LNFLG
                 aso LNFLG
                 aso LNFLG
                 aso LNFLG
                 asl LNFLG
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
                 ins $EF4D
                 jmp L_4CEE+1
                 inc $EF4A
                 alr #$EF
                 aso ESIGN
                 alr #$EF
                 lsr
                 ins $EF4A
                 alr #$EF
                 asl ESIGN
                 lsr
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 and L_3C02+1,x
L_7BF1           brk
                 and L_3CED+2,x
                 inc $EF3C
                 and L_3DEE,x
                 ins $EF24
                 asl ESIGN
L_7C00           bpl L_7BF1
                 brk
                 ins $EE00
                 brk
                 inc $EF01
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso TRAMSZ
                 brk
                 aso DOSINI
                 aso RTCLOK
                 aso $07EF
                 aso L_7707
                 brk
                 ins L_3B04+2
                 aso APPMHI+1
                 brk
                 brk
                 asl LNFLG
                 asl WARMST
                 aso LNFLG
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 asl
                 asl SWPFLG
                 asl APPMHI+1
                 asl LNFLG
                 asl LNFLG
                 brk
                 aso $0F00
                 ins APPMHI+1
                 aso $0F74
                 inc L_3A0F,x
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
                 brk
                 ora (TRAMSZ,x)
                 brk
                 brk
                 brk
                 asl LNFLG
                 aso LNFLG
                 aso XMTDON
                 aso CHKSNT
                 aso CHKSNT
                 aso XMTDON
                 asl XMTDON
                 aso CHKSNT
                 asl XMTDON
                 asl CHKSNT
                 asl CHKSNT
                 aso LNFLG
                 asl LNFLG
                 asl LNFLG
                 asl LNFLG
                 asl LNFLG
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso LNFLG
                 aso LNFLG
                 aso LNFLG
                 asl LNFLG
                 aso LNFLG
                 aso LNFLG
                 aso LNFLG
                 aso LNFLG
                 aso LNFLG
                 aso LNFLG
                 aso LNFLG
                 asl LNFLG
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
                 brk
                 brk
                 brk
                 asl
                 asl NSIGN
                 asl APPMHI+1
                 asl LNFLG
                 asl COLAC
                 asl LNFLG
                 asl LTEMP
                 aso LNFLG
                 aso LNFLG
                 asl ESIGN
                 asl WARMST
L_7CBF           asl APPMHI+1
                 aso ENDPT+1
                 aso DOSVEC+1
                 asl LNFLG
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso $0E00
                 clv
                 eor $EF0F
                 brk
                 ins $0F00
                 jmp $0FB9
                 asl LNFLG
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
                 nop !
                 brk
                 asl
                 aso ZCHAIN
                 brk
                 brk
                 brk
                 anc #$FF
                 brk
                 aso APPMHI+1
                 brk
                 brk
                 brk
                 anc #$75
                 brk
                 asl ESIGN
                 brk
                 brk
                 brk
                 ins LNFLG
                 asl LNFLG
                 brk
                 brk
                 anc #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso $0E05
                 ora APPMHI+1
                 ora APPMHI+1
                 ora APPMHI
                 brk
                 asl $0F00
                 brk
                 php
                 aso $0F08
                 ora #$0F
                 php
                 aso $0F09
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
                 brk
                 brk
                 ora APPMHI+1
                 brk
                 aso $0E04
                 ins $04EF
                 inc $0F0F
                 nop APPMHI+1
                 nop ENDPT+1,x
                 ora ENDPT+1
                 ins $04EF
                 ins L_3A38+2
                 brk
                 nop !
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
                 asl
                 brk
                 asl
                 rla $0F3B,y
                 rla L_3A0F,y
                 aso $0F3B
                 rla $090F,y
                 ora WARMST
                 brk
                 ora #$00
                 php
                 brk
                 brk
                 nop LNFLG
                 nop LNFLG
                 ora LNFLG
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 inc $EE04
                 nop NSIGN
                 nop ESIGN
                 nop BOOT
                 nop ESIGN
                 nop ESIGN
                 nop NSIGN
                 nop ESIGN
                 nop ESIGN
                 nop LNFLG
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso RAMLO
                 ins $EF04
                 nop NSIGN
                 nop NSIGN
                 brk
                 ins $EE04
                 nop ESIGN
                 nop LNFLG
                 nop LNFLG
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ins $0904
                 nop LNFLG
                 brk
                 nop !
                 nop XMTDON
                 nop XMTDON
                 nop XMTDON
                 nop CHKSNT
                 nop CHKSNT
                 brk
                 rla L_3B04,y
                 nop XMTDON
                 nop CHKSNT
                 nop CHKSNT
                 nop LNFLG
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ins RAMLO
                 nop LNFLG
                 nop LNFLG
                 nop LNFLG
                 nop ESIGN
                 nop ENDPT+1
                 nop FMSZPG+6
                 nop APPMHI+1
                 nop LNFLG
                 nop APPMHI+1
                 nop LNFLG
                 nop LNFLG
                 nop LNFLG
                 nop LNFLG
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
                 tsx
                 brk
                 las LNFLG,y
                 brk
                 anc #$BA
                 anc #$BA
                 anc #$BB
                 anc #$BB
                 brk
                 brk
                 rra LNFLG,x
L_7E38           ror LNFLG,x
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 asl LNFLG
                 brk
                 ora #$02
                 php
                 lda BOOT,y
                 brk
                 brk
                 php
                 brk
                 php
                 nop !
                 php
                 brk
                 brk
                 brk
                 php
                 brk
                 php
                 nop WARMST,x
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso $0F00
                 brk
                 aso $0F00
                 brk
                 aso $0F74
                 nop LNFLG,x
                 nop LNFLG,x
                 nop LNFLG,x
                 nop LNFLG,x
                 nop DOSINI+1,x
                 adc LNFLG,x
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
                 bit $0F00
                 brk
                 rra (CASINI+1),y
                 ora #$AD
                 and L_2DAA+2
                 ldy $AC00
                 brk
                 tax
                 dex
                 lda $AACA
                 ora #$AB
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 php
                 ldy $AC00
                 aso $EFAD
L_7EC5           anx #$75
                 anx #$4B
                 anx #$00
                 tax
                 brk
                 anx #$00
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso CASINI+1
                 ins $0600
                 brk
                 brk
                 brk
                 asl LNFLG
                 ora $0600,x
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
                 brk
                 brk
                 adc CASINI
                 adc $CF
                 nop $CF
                 adc $CF
                 adc $CF
                 adc $CF
                 adc $CF
                 adc $CF
                 nop $CF
                 adc $CF
                 nop LNFLG
                 adc LNFLG
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 ins L_4703+1
                 nop APPMHI+1
                 nop ADRESS+1
                 nop BFENHI
                 nop DATALN
                 nop APPMHI+1
                 nop BOOT
                 nop BUFADR+1
                 nop APPMHI+1
                 nop LNFLG
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 asl RAMLO
                 asl FLPTR
                 asl FLPTR
                 asl FLPTR
                 asl FLPTR
                 asl FLPTR
                 asl FLPTR
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
                 brk
                 brk
                 brk
L_7F7C           ins $0636
L_7F7F           brk
                 inc $0636
                 brk
                 lse LTEMP
                 asl LNFLG
                 ins $0636
                 brk
                 ins $0636
                 brk
                 ins $0618
                 brk
                 aso $0618
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
                 sbc FRE+1,x
                 dcm $DB0F,y
                 brk
                 dcm $DB1F,y
                 brk
                 dcm $DB65,y
                 brk
                 dcm $DB0F,y
                 brk
                 nop !
                 aso L_6400
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
L_7FEF           brk
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
                 brk
                 brk
                 brk
L_7FFE           aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (DOSINI,x)
                 aso (APPMHI+1,x)
                 aso CASINI+1
                 brk
                 cmp APPMHI+1
                 cmp TEMPA+1
                 dcm TEMPA+1
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 lse (FCHRFLG),y
                 lse (RMARGN),y
                 ins (RMARGN),y
                 brk
                 brk
                 cpy #$30
                 cpy #$F0
                 beq L_7FEF
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (LNFLG,x)
                 aso (CASINI+1,x)
                 brk
                 brk
                 brk
                 sbc (CASINI+1),y
                 sbc (DIGRT),y
                 ins (DIGRT),y
                 brk
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 nop FLPTR,x
                 nop ROWCRS,x
                 nop ROWCRS,x
                 brk
L_8069           beq L_8077
                 beq L_8069
                 nop FCHRFLG,x
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_8077           brk
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
                 brk
                 brk
L_8090           brk
                 nop L_3CC0,x
                 nop L_3CFC,x
                 brk
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 nop L_3C02+1,x
                 rla L_3C3E+1,x
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
                 brk
                 aso $0F30
                 rla $0F3F,x
                 brk
                 brk
                 ora FEOF,x
                 ora BUFADR,x
                 rla BUFADR,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 lse L_4FC0
                 lse L_4FCF
                 brk
                 brk
                 brk
                 cpy #$00
                 cpy #$C0
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
                 brk
                 aso (LNFLG,x)
                 aso (CASINI+1,x)
                 brk
                 brk
                 brk
                 sbc (CASINI+1),y
                 sbc (DIGRT),y
                 ins (DIGRT),y
                 brk
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 lse L_4FC0
                 lse L_4FCF
                 brk
                 brk
                 brk
                 cpy #$00
                 cpy #$C0
                 brk
L_8137           brk
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop L_3CC0,x
                 nop L_3CFC,x
                 brk
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 lse (FCHRFLG),y
                 lse (RMARGN),y
                 ins (RMARGN),y
                 brk
                 brk
                 cpy #$30
                 cpy #$F0
                 beq L_8137
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso $0F30
                 rla $0F3F,x
                 brk
                 brk
                 ora FEOF,x
                 ora BUFADR,x
                 rla BUFADR,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 nop FLPTR,x
                 nop ROWCRS,x
                 nop ROWCRS,x
                 brk
L_81B1           beq L_81BF
                 beq L_81B1
                 nop FCHRFLG,x
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_81BF           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (DOSINI,x)
                 aso (APPMHI+1,x)
                 aso CASINI+1
                 brk
                 cmp APPMHI+1
                 cmp TEMPA+1
                 dcm TEMPA+1
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 nop L_3C02+1,x
                 rla L_3C3E+1,x
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
                 aso $0F30
                 rla $0F3F,x
                 brk
                 brk
                 ora FEOF,x
                 ora BUFADR,x
                 rla BUFADR,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 nop L_3C02+1,x
                 rla L_3C3E+1,x
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
                 aso (DOSINI,x)
                 aso (APPMHI+1,x)
                 aso CASINI+1
                 brk
                 cmp APPMHI+1
                 cmp TEMPA+1
                 dcm TEMPA+1
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 lse L_4FC0
                 lse L_4FCF
                 brk
                 brk
                 brk
                 cpy #$00
                 cpy #$C0
                 brk
L_827F           brk
                 brk
                 brk
                 aso (LNFLG,x)
                 aso (CASINI+1,x)
                 brk
                 brk
                 brk
                 sbc (CASINI+1),y
                 sbc (DIGRT),y
                 ins (DIGRT),y
                 brk
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 lse (FCHRFLG),y
                 lse (RMARGN),y
                 ins (RMARGN),y
                 brk
                 brk
                 cpy #$30
                 cpy #$F0
                 beq L_827F
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
                 nop L_3CC0,x
                 nop L_3CFC,x
                 brk
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 nop FLPTR,x
                 nop ROWCRS,x
                 nop ROWCRS,x
                 brk
L_82F9           beq L_8307
                 beq L_82F9
                 nop FCHRFLG,x
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_8307           brk
                 aso (APPMHI+1,x)
                 nop $FCFF,x
                 sbc (DOSINI),y
                 brk
                 cpy #$3F
                 cpy #$FF
                 brk
                 eor COLCRS,x
                 brk
                 brk
                 ins $FF00,x
                 bmi L_834E+1
                 and (LNFLG),y
L_8320           aso $0CF3
                 ins L_54FE+2,x
                 nop LNFLG,x
                 brk
                 cpy #$F0
                 nop L_3CFC,x
                 cpy #$00
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
                 brk
                 brk
                 brk
                 aso (APPMHI+1,x)
                 rla L_3C3E+1,x
L_834E           aso (LNFLG,x)
                 beq L_8320+1
L_8352           bmi L_8352+1
                 brk
                 eor BUFADR,x
                 brk
                 brk
                 ins $FF00,x
                 nop L_4C4C
                 brk
                 aso (FLPTR,x)
                 aso (FPTR2+1,x)
                 brk
                 eor COLCRS,x
                 brk
                 cpy #$F0
                 nop L_3FFF,x
                 lse STATUS
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
                 brk
                 brk
                 brk
                 brk
                 aso (APPMHI+1,x)
                 aso APPMHI+1
                 brk
                 nop $CCF3,x
                 ins L_15BF+1,x
                 cmp LNFLG
                 brk
                 ins $FF00,x
                 aso (RMARGN,x)
                 lse (LNFLG),y
                 brk
                 ins $FF00,x
                 brk
                 ora BUFADR,x
                 brk
                 beq L_83E6
                 dcm $0FFF
                 lse (DSTAT),y
                 brk
                 brk
                 brk
                 brk
                 cpy #$C0
                 cpy #$00
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_83CB           aso (CASINI+1,x)
                 aso (LNFLG,x)
                 brk
                 aso $F33C
                 ins $C5F0,x
                 and (LNFLG),y
                 brk
                 ins $FF00,x
                 brk
                 nop ROWCRS,x
                 brk
                 brk
                 ins $FF00,x
                 cpy #$C5
L_83E6           cmp LNFLG
                 nop L_33CE+1,x
                 ins L_5403,x
                 lse (LNFLG),y
                 brk
                 brk
                 cpy #$F0
                 beq L_83E6
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
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FCFF,x
                 beq L_83CB
                 cpy #$C0
                 cpy #$F0
                 nop LNFLG,x
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
                 rla CASFLG,x
                 aso (CASINI+1,x)
                 aso (APPMHI+1,x)
                 rla $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
L_843B           ins $FFFF,x
L_843E           ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FCFF,x
                 beq L_843B+1
                 beq L_843E
                 nop FPTR2+1,x
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
                 brk
                 aso CASINI+1
                 brk
                 brk
                 brk
                 aso (APPMHI+1,x)
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FCFF,x
                 nop $FCFC,x
                 ins $C0FF,x
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cpy #$00
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
                 brk
                 brk
                 brk
                 brk
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (FPTR2+1,x)
                 ins L_3F3F,x
                 rla $FF3F,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $C0F0,x
                 brk
                 brk
                 brk
                 brk
                 cpy #$F0
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
                 brk
                 brk
                 ins $0F3F,x
L_84F3           aso $0F0F
L_84F6           rla $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FCFF,x
                 beq L_84F3+1
                 beq L_84F6
                 nop FPTR2+1,x
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ins $0F3F,x
                 aso $0F0F
                 rla $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 nop $FCFC,x
                 nop $FFFF,x
                 cpy #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 cpy #$00
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 rla CASFLG,x
                 aso (CASINI+1,x)
                 aso (APPMHI+1,x)
                 rla $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $F0FF,x
                 cpy #$00
                 brk
                 brk
                 brk
                 cpy #$F0
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
                 aso CASINI+1
                 brk
                 brk
                 brk
                 aso (APPMHI+1,x)
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $F0FC,x
                 cpy #$C0
L_85CC           cpy #$C0
                 beq L_85CC
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
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (FPTR2+1,x)
                 ins L_3F3F,x
                 rla $FF3F,x
                 ins $C0F0,x
                 brk
                 brk
                 brk
                 brk
                 cpy #$F0
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (FPTR2+1,x)
                 ins L_3F3F,x
                 rla $FF3F,x
                 ins $F0FC,x
                 cpy #$C0
L_8644           cpy #$C0
                 beq L_8644
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
                 brk
                 brk
L_8676           brk
                 brk
                 ins $0F3F,x
                 aso $0F0F
                 rla $FFFF,x
                 nop $F0F0,x
                 beq L_8676
                 nop FPTR2+1,x
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
                 brk
                 brk
                 brk
                 rla CASFLG,x
                 aso (CASINI+1,x)
                 aso (APPMHI+1,x)
                 rla $FFFF,x
                 nop $FCFC,x
                 nop $FFFF,x
                 cpy #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 cpy #$00
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso CASINI+1
                 brk
                 brk
                 brk
                 aso (APPMHI+1,x)
                 ins $FFFF,x
                 nop $FCFC,x
                 ins $F0FF,x
                 cpy #$00
                 brk
                 brk
                 brk
                 brk
                 ins (LNFLG),y
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
                 aso (FEOF,x)
                 aso CASINI+1
                 brk
                 brk
                 aso (FEOF,x)
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 nop $C0F0,x
                 brk
L_874C           brk
                 brk
                 cpy #$FC
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cpy #$00
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
                 brk
                 brk
                 brk
                 brk
                 aso CASINI+1
                 brk
                 brk
                 brk
                 brk
                 dcm $FFFF
                 ins L_3F3F,x
                 rla $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FCFF,x
                 beq L_874C
                 cpy #$C0
L_878E           beq L_878E+1
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 bmi L_8799
L_8799           brk
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
                 brk
                 brk
                 brk
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 rla (FPTR2+1),y
                 ins $0F3F,x
                 aso L_3F0E+1
                 ins $FFFF,x
                 ins $FFFF,x
L_87BD           ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $F0FC,x
                 beq L_87BD+1
                 nop $C0FF,x
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cpy LNFLG
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
                 nop L_3FFF
                 aso DSTATS
                 aso (APPMHI+1,x)
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 rla L_3F3F,x
                 rla L_3F3F,x
                 brk
                 brk
                 nop $FCFC,x
                 nop $FCFC,x
                 brk
                 brk
                 rla L_3F3F,x
                 rla L_3F3F,x
                 brk
                 brk
                 nop $FCFC,x
                 nop $FCFC,x
                 brk
                 brk
                 ora BUFADR,x
                 ora BUFADR,x
                 ora BUFADR,x
                 brk
                 brk
                 nop ROWCRS,x
                 nop ROWCRS,x
                 nop ROWCRS,x
                 brk
                 brk
                 rol
                 rol
                 rol
                 rol
                 rol
                 rol
                 brk
                 brk
                 tay
                 tay
                 tay
                 tay
                 tay
                 tay
                 brk
                 brk
                 rla L_3F3F,x
                 rla L_3F3F,x
                 brk
                 brk
                 nop $FCFC,x
                 nop $FDFD,x
                 ora LNFLG,x
                 rla L_3F3F,x
                 rla L_3F3F,x
                 ora (LNFLG,x)
                 nop $FDFC,x
                 sbc $FDFD,x
                 eor LNFLG,x
                 rla L_3F3F,x
                 rla L_3F3F,x
                 eor LNFLG,x
                 sbc $FDFD,x
                 sbc $FDFD,x
                 eor COLCRS,x
                 rra L_7F7F,x
                 rra L_7F7F,x
                 eor COLCRS,x
                 sbc $FDFD,x
                 sbc $FDFD,x
                 eor COLCRS,x
                 eor COLCRS,x
                 eor COLCRS,x
                 eor COLCRS,x
                 eor COLCRS,x
                 eor COLCRS,x
                 eor COLCRS,x
                 eor COLCRS,x
                 eor LNFLG,x
                 brk
                 brk
                 brk
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 brk
                 ora COLCRS,x
                 bvc L_88E5
                 lsr
                 rol
                 plp
                 brk
                 nop COLCRS,x
                 ora NGFLAG
                 lda (STINDEX,x)
                 plp
                 brk
                 brk
                 brk
                 brk
                 rti
                 rti
                 rti
                 rti
                 brk
                 eor COLCRS,x
                 brk
                 brk
                 tax
                 tax
                 brk
                 cim
                 cim
                 cim
                 cim
                 brk
                 brk
                 brk
                 brk
                 nop BUFADR,x
                 sta LOMEM
                 ldy #$AA
                 rol
                 brk
                 nop ROWCRS,x
                 cim
                 cim
                 asl
                 tax
                 tay
                 brk
                 nop #$80
                 nop #$80
                 brk
                 brk
                 brk
                 brk
                 brk
                 eor COLCRS,x
                 brk
                 brk
L_88E5           tax
                 tax
                 brk
                 brk
                 rla L_3F3F,x
                 rla L_3F3F,x
                 brk
                 brk
                 nop $FCFC,x
                 nop $FCFC,x
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
                 brk
                 brk
                 brk
                 brk
                 ora (LNFLG,x)
                 ora (RAMLO+1,x)
                 ora RAMLO+1
                 ora LNFLG
                 plp
                 brk
                 plp
                 plp
                 plp
                 plp
                 plp
                 ora LNFLG
                 ora LNFLG
                 ora LNFLG
                 ora LNFLG
                 plp
                 brk
                 plp
                 brk
                 plp
                 brk
                 plp
                 brk
                 ora RAMLO+1
                 ora RAMLO+1
                 ora (LNFLG,x)
                 ora (LNFLG,x)
                 plp
                 plp
                 plp
                 plp
                 plp
                 brk
                 plp
                 brk
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 plp
                 plp
                 plp
                 plp
                 plp
                 plp
                 plp
                 plp
                 brk
                 nop LNFLG,x
                 nop RTCLOK+2,x
                 nop RTCLOK+2,x
                 nop LNFLG,x
                 nop #$00
                 nop #$A0
                 ldy #$A0
                 ldy #$14
                 brk
                 nop LNFLG,x
                 nop LNFLG,x
                 nop LNFLG,x
                 ldy #$00
                 ldy #$00
                 ldy #$00
                 ldy #$00
                 nop RTCLOK+2,x
                 nop RTCLOK+2,x
                 nop LNFLG,x
                 nop LNFLG,x
                 ldy #$A0
                 ldy #$A0
                 nop #$00
                 nop #$00
                 nop RTCLOK+2,x
                 nop RTCLOK+2,x
                 nop RTCLOK+2,x
                 nop RTCLOK+2,x
                 nop #$80
                 nop #$80
                 nop #$80
                 nop #$80
                 ora BUFADR
                 rol
                 brk
                 brk
                 rol
                 rol
                 asl
                 brk
                 nop ICBLLZ,x
                 brk
                 brk
                 plp
                 plp
                 plp
                 bvc L_89F6
                 tay
                 brk
                 brk
                 tay
                 tay
                 ldy #$05
                 ora ICAX1Z,x
                 brk
                 brk
                 rol
                 rol
                 asl
                 brk
                 nop ICBLLZ,x
                 brk
                 brk
                 plp
                 plp
                 plp
                 bvc L_8A0E
                 tay
                 brk
                 brk
                 tay
                 tay
                 ldy #$AA
                 tax
                 tay
                 tay
                 ldx #$00
                 ldx #$A2
                 asl
                 jsr L_8A89+1
                 ldx #$A2
                 php
                 ldy #$A2
                 ldx #$00
                 nop #$80
                 brk
                 brk
                 brk
                 ldy #$02
                 cim
                 asl
                 asl
                 rol
                 jsr $A20A
                 ldx #$00
                 nop #$80
                 brk
                 brk
                 brk
                 ldy #$00
                 cim
                 cim
                 asl
                 asl
                 jsr $AA0A
                 tax
                 tay
                 tay
                 ldx #$00
L_89F6           ldx #$A2
                 asl
                 jsr L_8A89+1
                 ldx #$A2
                 php
                 ldy #$AA
                 tax
                 tay
                 tay
                 ldx #$00
                 ldx #$A2
                 asl
                 jsr L_8A89+1
                 ldx #$A2
L_8A0E           php
                 ldy #$A2
                 ldx #$00
                 nop #$80
                 brk
                 brk
                 brk
                 ldy #$00
                 cim
                 cim
                 asl
                 asl
                 jsr $A20A
                 ldx #$00
                 nop #$80
                 brk
                 brk
                 brk
                 ldy #$08
                 cim
                 cim
                 asl
                 asl
L_8A2E           jsr $AA0A
                 tax
                 tay
                 tay
                 ldx #$00
                 ldx #$A2
                 asl
                 jsr L_8A89+1
                 ldx #$A2
                 php
                 ldy #$0A
                 jsr L_8A89+1
                 ldx #$A2
                 php
                 ldy #$A0
                 lax (DOSINI,x)
                 sax (RUNSTK+1,x)
                 aso CASINI+1
                 brk
                 cmp APPMHI+1
                 cmp TEMPA+1
                 dcm TEMPA+1
                 brk
                 eor FPTR2+1,x
                 eor COLCRS,x
                 ins COLCRS,x
                 brk
                 lse (FCHRFLG),y
                 lse (RMARGN),y
                 ins (RMARGN),y
                 brk
                 cim
                 nop #$30
                 cpy #$F0
                 beq L_8A2E+1
                 brk
                 ldy #$00
                 cim
                 cim
                 asl
                 asl
                 jsr $AA0A
                 tax
                 tay
                 tay
                 ldx #$00
                 ldx #$A2
                 dey
                 cim
                 dey
                 jsr LOMEM
                 nop #$22
L_8A88           php
L_8A89           jsr HIBYTE
                 nop #$22
                 php
                 jsr L_227F+1
                 brk
                 brk
                 nop #$00
                 brk
                 brk
                 nop #$02
                 brk
                 cim
                 php
                 cim
                 brk
                 cim
                 nop #$22
                 brk
                 brk
                 nop #$00
                 brk
                 brk
                 nop #$00
                 brk
                 cim
                 php
                 cim
                 brk
                 cim
                 dey
                 cim
                 dey
                 jsr LOMEM
                 nop #$22
                 php
                 jsr HIBYTE
                 nop #$22
                 php
                 jsr L_2287+1
                 dey
                 jsr LOMEM
                 nop #$22
                 php
                 jsr HIBYTE
                 nop #$22
                 php
                 jsr L_227F+1
                 brk
                 brk
                 nop #$00
                 brk
                 brk
                 nop #$00
                 brk
                 cim
                 php
                 cim
                 brk
                 cim
                 nop #$22
                 brk
                 brk
                 nop #$00
                 brk
                 brk
                 nop #$00
                 brk
                 cim
                 php
                 cim
                 brk
                 cim
                 dey
                 cim
                 dey
                 jsr LOMEM
                 nop #$22
                 php
                 jsr HIBYTE
                 nop #$22
                 php
                 jsr L_1919
                 and STINDEX
                 pla
                 tya
                 nop RTCLOK+2
                 ldy #$00
                 cim
                 cim
                 asl
                 asl
                 jsr $0502
                 ora DOSVEC
                 brk
                 brk
                 brk
                 brk
                 brk
                 ldy #$00
                 cim
                 cim
                 ldx #$52
                 pla
                 lsr TOADR,x
                 eor ICBAHZ,x
                 asl BUFADR+1,x
                 txa
                 rol
                 stx COLCRS+1,y
                 stx FREQ,y
                 brk
                 brk
                 brk
                 brk
                 brk
                 ldy #$00
                 cim
                 cim
                 asl
                 asl
                 jsr DOSVEC
                 nop #$80
                 brk
                 brk
                 brk
                 nop #$80
                 nop #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cim
                 cim
                 ora TRAMSZ
                 asl RAMLO+1
                 ora L_1919,y
                 and ARSTKX
                 ror
                 txs
                 adc BUFADR
                 ldx #$A2
                 brk
                 nop #$80
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop #$80
                 nop #$80
                 rts
                 lda (LOGCOL,x)
                 lax (STINDEX,x)
                 tay
                 tya
                 cli
                 lda (TSLNUM,x)
                 php
                 cim
                 cim
                 asl
                 asl
                 jsr $AA0A
                 tax
                 tay
                 tay
                 ldx #$00
                 ldx #$A2
                 ldx #$A2
                 brk
                 nop #$80
                 brk
                 brk
                 brk
                 tax
                 tax
                 tay
                 tay
                 ldx #$00
                 ldx #$A2
                 brk
                 cim
                 cim
                 ora TRAMSZ
                 asl RAMLO+1
                 ora L_1919,y
                 and ARSTKX
                 ror
                 txs
                 adc BUFADR
                 ldx #$A2
                 brk
                 nop #$80
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop #$80
                 nop #$80
                 rts
                 lda (LOGCOL,x)
                 lax (STINDEX,x)
                 tay
                 tya
                 cli
                 lda (TSLNUM,x)
                 php
                 cim
                 cim
                 asl
                 asl
                 jsr $A20A
                 ldx #$00
                 nop #$80
                 brk
                 brk
                 brk
                 tax
                 tax
                 tay
                 tay
                 ldx #$00
                 ldx #$A2
                 tax
                 tax
                 tay
                 tay
                 ldx #$00
                 ldx #$A2
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
                 brk
L_8BEF           brk
L_8BF0           nop BRKKEY
                 ora (RAMLO),y
                 ora (BRKKEY),y
L_8BF6           nop BRKKEY
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 nop L_5D22,x
                 eor (OLDCHR),y
                 cim
                 nop LNFLG,x
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 asl DOSINI
                 clc
                 bmi L_8C7F
                 cpy #$00
                 php
                 nop L_7F7C+2
                 ror $080C,x
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
L_8C7F           brk
                 brk
                 nop $C6FE,x
                 dec ZTEMP2
                 inc HOLDCH,x
                 sec
                 sec
                 clc
                 clc
                 clc
                 nop NOCKSM,x
                 nop $CEFE,x
                 nop L_7E38,x
                 inc L_7C00,x
                 inc $0CC6,x
                 dec FPTR2
                 nop $C000,x
                 cpy #$CC
                 inc $0C7E,x
                 nop $FE00
                 inc L_7CBF+1,x
                 asl FPTR2
                 nop L_7C00,x
                 inc $FCC0,x
                 dec FPTR2
                 nop $FC00,x
                 inc $0606,x
                 asl TRAMSZ
                 asl LNFLG
                 nop $C6FE,x
                 nop $FEC6,x
                 nop L_7C00,x
                 inc L_7EC5+1,x
                 asl COUNTR
                 nop LNFLG,x
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
                 nop $06FE,x
                 dec $C6C6,x
                 dec LNFLG
                 nop $06FE,x
                 nop $C6C6,x
                 nop $FC00,x
                 inc $C006,x
                 dec FPTR2
                 nop $FC00,x
                 inc $C606,x
                 dec FPTR2
                 nop $FE00,x
                 inc $F000,x
                 cpy #$FE
                 inc $FE00,x
                 inc $F000,x
                 cpy #$C0
                 cpy #$00
                 nop FPTR2,x
                 dec $FEC6
                 nop $C600,x
                 dec TRAMSZ
                 dec $C6C6,x
                 dec LNFLG
                 nop NOCKSM,x
                 clc
                 clc
                 nop NOCKSM,x
                 asl ABUFPT+2,x
                 asl ZTEMP2
                 inc HOLDCH,x
                 dec ZTEMP2
                 nop $CCF8
                 dec ZTEMP2
                 brk
                 cpy #$C0
                 brk
                 cpy #$C0
                 inc FPTR2,x
                 inc L_16FE
                 dec ZTEMP2,x
                 dec ZTEMP2
                 brk
                 nop $06FE,x
                 dec ZTEMP2
                 dec ZTEMP2
                 brk
                 nop $06FE,x
                 dec ZTEMP2
                 inc HOLDCH,x
                 nop $06FE,x
                 dec FLPTR
                 cpx #$E0
                 brk
                 nop $06FE,x
                 dec FPTR2
                 nop APPMHI,x
                 nop $06FE,x
                 inc $CEFC,x
                 dec LNFLG
                 nop FPTR2,x
                 nop $FE06,x
                 nop $FE00,x
                 inc L_3800,x
                 sec
                 sec
                 sec
                 brk
                 dec ZTEMP2
                 asl ZTEMP2
                 dec FPTR2
                 nop $C600,x
                 dec TRAMSZ
                 dec ZTEMP2
                 nop BUFRFL,x
                 dec ZTEMP2
                 asl FR0+2
                 inc $EEFE,x
                 brk
                 dec ZTEMP2
                 jmp (L_6C38)
                 dec ZTEMP2
                 brk
                 dec ZTEMP2
                 asl NSIGN
                 nop L_3838,x
                 brk
                 inc FPTR2,x
                 sec
L_8DD5           bvs L_8DD5
                 inc LNFLG,x
                 brk
                 brk
                 brk
                 brk
                 clc
                 clc
                 brk
                 ror TOADR
                 ror LNFLG
                 brk
                 brk
                 brk
                 brk
                 clc
                 clc
                 clc
                 clc
                 clc
                 brk
                 clc
                 brk
                 nop $C6FE,x
                 asl DOSINI
                 brk
                 nop L_1000
                 bmi L_8E7A+1
                 rra L_1030,x
                 brk
                 lda L_367F
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
                 ldx L_2E01
                 jsr L_8EBD
                 sta L_4409
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
L_8E7A           jsr L_8EA5+2
                 ldx L_2E01
                 lda STRIG0,x
                 sta L_4517
                 lda STICK0,x
L_8E89           cmp #$0B
                 beq L_8E9C
                 cmp #$07
                 bne L_8E99
                 ldx L_4409
                 cpx L_8EA5+1
                 bpl L_8EA4
L_8E99           jmp L_45C0
L_8E9C           ldx L_4409
                 cpx L_8EA5
                 bpl L_8E99
L_8EA4           rts
L_8EA5           asl $A272,x
                 asl L_72A0,x
                 lda L_4A03
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
                 lda L_4A03
                 cmp #$1A
                 beq L_8EE3
                 ldx #$1F
                 ldy #$6C
L_8EE3           stx L_8EA5
                 sty L_8EA5+1
                 rts
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
                 bpl L_8F11+1
                 bpl L_8F14
                 bpl L_8F14+2
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
L_8F10           brk
L_8F11           inc L_31F3+1
L_8F14           lda L_31F3+1
                 cmp #$09
                 bcc L_8F1D
                 lda #$09
L_8F1D           clc
                 adc #$10
                 sta $9F7D
                 lda #$00
                 sta L_4E04
                 sta L_5002
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
                 sta L_5002
                 lda #$01
                 sta L_8F10
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
                 lda L_8BF6+1
                 tay
                 ldx #$07
L_8F6C           lda L_8BEF,x
                 sta L_8BF0,x
                 dex
                 bne L_8F6C
                 tya
                 sta L_8BF0
L_8F79           pla
                 tay
                 pla
                 tax
                 pla
                 jmp XITVBV
L_8F81           brk
                 lda L_8F10
                 beq L_8F8E
                 lda L_4409
                 cmp #$70
                 bpl L_8F91
L_8F8E           jmp L_3800
L_8F91           lda L_3C25
                 beq L_8F91
                 jsr L_283D
                 cmp #$83
                 beq L_8FB5
                 inc L_4409
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
                 sta L_8F10
                 jmp L_3822
                 brk
                 brk
                 brk
                 lsr L_405B
                 sty L_5161+1
                 cim
                 aso ICCOMZ
                 plp
                 pha
                 php
                 pha
                 lse L_4893+1,y
                 lse (BUFRFL,x)
                 and L_1A16+1,y
                 eor (OLDADR),y
                 alr #$42
                 aso (DRKMSK),y
                 rti
                 nop L_5C4E,x
                 and LNFLG
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 tax
                 tax
                 tay
                 tay
                 ldx #$00
                 ldx #$A2
                 asl
                 jsr L_8A89+1
                 ldx #$A2
                 php
                 ldy #$A2
                 ldx #$00
                 nop #$80
                 brk
                 brk
                 brk
                 ldy #$02
                 cim
                 asl
                 asl
                 rol
                 jsr $A20A
                 ldx #$00
                 nop #$80
                 brk
                 brk
                 brk
                 ldy #$00
                 cim
                 cim
                 asl
                 asl
                 jsr $AA0A
                 tax
                 tay
                 tay
L_9034           ldx #$00
                 ldx #$A2
                 asl
                 jsr L_8A89+1
                 ldx #$A2
                 php
                 ldy #$AA
                 tax
                 tay
                 tay
                 ldx #$00
                 ldx #$A2
                 asl
                 jsr L_8A89+1
                 ldx #$A2
                 php
                 ldy #$A2
                 ldx #$00
                 nop #$80
                 brk
                 brk
                 brk
                 ldy #$00
                 cim
                 cim
                 asl
                 asl
                 jsr $A20A
                 ldx #$00
                 nop #$80
                 brk
                 brk
                 brk
                 ldy #$08
L_906A           cim
                 cim
                 asl
                 asl
                 jsr $AA0A
                 tax
                 tay
L_9073           tay
                 ldx #$00
                 ldx #$A2
                 asl
                 jsr L_8A89+1
                 ldx #$A2
                 php
                 ldy #$A8
                 eor BOOT,x
                 ora #$24
                 bit MEOLFLG
                 sta (LNFLG),y
                 nop #$69
                 nop ICDNOZ,x
                 tya
                 lsr TRAMSZ
                 bcc L_90D3+1
                 adc #$14
                 nop #$60
                 ror
                 ora ICBLHZ
                 sty CRITIC,x
                 ora #$24
                 bit TOPSTK
                 rti
                 bit LNFLG
                 bcc L_9034
                 sta (TOPSTK+1),y
                 sta (ICBALZ),y
                 asl DSKFMS
                 clc
                 adc (LOMEM,x)
                 sta (LOMEM,x)
                 rts
                 brk
                 nop SAVADR+1,x
                 nop #$88
                 dey
                 cim
                 cim
                 clc
                 asl FMSZPG+3
                 bcc L_90E1
                 bit TOPSTK
                 bcc L_90E5
                 ora #$09
                 bit TOPSTK
                 rol TRAMSZ
                 asl TMPCHR
                 ldy BOOT
                 cim
                 bvc L_9073
                 asl
                 bpl L_9131
                 clc
                 cli
L_90D3           ldx CASINI
                 cim
                 cim
                 cim
                 bcc L_906A
                 bit ICBALZ
                 eor #$49
L_90DE           nop ADRESS+1
                 clc
L_90E1           clc
                 adc (FKDEF+1,x)
                 rts
L_90E5           rts
                 clc
                 rts
                 nop FMSZPG+5
                 nop #$86
                 clc
                 rts
                 adc (LNFLG,x)
                 rts
                 clc
                 clc
                 clc
                 clc
                 rts
                 stx TOADR
                 bit BOOT
                 ora #$09
                 bit TOPSTK
                 bit ICBALZ
                 ora DSKUTL,x
                 nop !
                 nop !
                 nop !
                 nop !
                 eor LNFLG,x
                 eor ARSTKX,x
                 tax
                 tax
                 tax
                 tax
                 eor LNFLG,x
                 eor (TOPSTK+1),y
                 sta (TOPSTK+1),y
                 sta (TOPSTK),y
                 bvc L_9118
L_9118           eor OPSTKX,x
                 lda #$A9
                 eor POKMSK,x
                 ora LNFLG,x
                 eor ARSTKX,x
                 tax
                 tax
                 tax
                 tax
                 tax
                 lsr TMPCHR,x
                 sta (TOPSTK+1),y
                 sta (TOPSTK),y
                 sta (TOPSTK+1),y
                 sta (ROWCRS),y
L_9131           nop ECSIZE
                 adc ADRESS
                 nop ECSIZE+1
                 nop COLCRS,x
                 ror
                 ror
                 ror
                 ror
                 ror
                 ror
                 eor TRAMSZ,x
                 asl TRAMSZ
                 asl TRAMSZ
                 asl TRAMSZ
                 asl TOPSTK
                 sta (TOPSTK+1),y
                 bcc L_90DE
                 sta (TOPSTK),y
                 bcc L_9151
L_9151           eor RAMTOP,x
                 ror
                 ror
                 ror
                 ror
                 ror
                 brk
                 eor OPSTKX,x
                 lda #$A9
                 lda #$A9
                 lda #$06
                 ora LNFLG
                 ora DSKUTL,x
                 nop !
                 ora LNFLG,x
                 bcc L_91BA
                 brk
                 nop ECSIZE,x
                 ldy ROWCRS
                 brk
                 ror
                 ror
                 ror
                 ror
                 ror RAMTOP
                 eor LNFLG,x
                 lda #$99
                 eor COLCRS,x
                 sta L_55A7+2,y
                 brk
                 brk
                 ora POKMSK,x
                 ora TRAMSZ,x
                 asl TRAMSZ
                 asl LNFLG
                 sta (LOMEM+1,x)
                 sta (LOMEM+1,x)
                 sta (LOMEM+1,x)
                 sta (FREQ,x)
                 bcc L_91B3
                 ldy #$00
                 brk
                 brk
                 brk
                 clc
                 clc
                 clc
                 clc
                 clc
                 clc
                 clc
                 clc
                 asl TRAMSZ
                 asl TRAMSZ
                 asl TRAMSZ
                 ora RAMLO+1
                 sta (LOMEM+1,x)
                 stx ARSTKX,y
                 brk
                 brk
                 bcc L_91C0
                 nop OPSTKX,x
                 asl
L_91B3           brk
                 ora DOSVEC
                 brk
                 ora DSKFMS
                 cli
L_91BA           tay
                 clc
                 cli
                 tay
                 clc
                 cli
L_91C0           eor ARSTKX,x
                 brk
L_91C3           tax
                 brk
                 eor LNFLG,x
                 brk
                 bcc L_91CA
L_91CA           cim
                 ora #$00
                 nop ADRESS
                 ldy #$00
                 brk
                 nop #$60
                 brk
                 ora $0A19,y
                 lda #$0A
                 brk
                 asl DSKFMS,x
                 ora DSKFMS,y
                 ora RAMLO
                 nop RAMLO
                 nop RAMLO
                 nop ROWCRS
                 tax
                 tay
                 and (ICAX1Z,x)
                 ora POKMSK,x
                 ora BUFADR,x
                 tax
                 rol
                 pla
                 tay
                 bvc L_91F6+1
L_91F6           eor COLCRS,x
                 nop RTCLOK+2,x
                 nop ROWCRS,x
                 rti
                 nop FREQ,x
                 eor FPTR2+1,x
                 beq L_91C3
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
                 brk
                 ins $0FFF,x
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (APPMHI+1,x)
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
L_9230           nop $C0F0,x
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cpy #$C0
                 beq L_9230
                 aso CASINI+1
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
                 aso (CASINI+1,x)
                 aso $FFFF
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
L_925E           ins $FFFF,x
                 nop $C0F0,x
                 cpy #$C0
                 cpy #$C0
                 cpy #$C0
                 cpy #$F0
                 beq L_925E
                 nop $03FF,x
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
                 brk
                 aso (CASINI+1,x)
                 aso $FFFF
L_9282           ins L_3F3F,x
                 rla L_3F3F,x
L_9288           rla L_3F3F,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FCFF,x
                 nop $F0FC,x
                 beq L_9288+1
                 nop $FCFC,x
                 nop $FFFF,x
                 ins FPTR2+1,x
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
                 brk
                 aso ($CF,x)
                 ins L_3F3F,x
                 rla $0F3F,x
                 aso $0F0F
                 aso L_3F3F
                 rla $FFFF,x
                 ins $F0FC,x
                 beq L_9282+2
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
                 cpy #$FC
                 ins L_3F3F,x
                 aso CASFLG
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso $0F0F
                 rla $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $C3FF,x
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
                 cpy #$F0
                 ins $FFFF,x
                 rla CASINI+1,x
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
                 dcm (FPTR2+1,x)
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $C0F3,x
                 cpy #$C0
                 cpy #$C0
                 cpy #$C0
                 cpy #$C0
                 cpy #$F0
                 ins $FFFF,x
                 ins ERRSAV,x
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
                 cpy #$FF
                 ins $FFFF,x
L_9342           ins L_3F3F,x
L_9345           rla L_3F3F,x
L_9348           rla L_3F3F,x
L_934B           rla L_3F3F,x
                 ins $FFFF,x
                 nop $F0F0,x
                 beq L_9345+1
                 beq L_9348
                 beq L_9348+2
L_935A           beq L_934B+1
                 beq L_935A
                 ins $FFFF,x
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
                 brk
                 brk
                 ins $FFFF,x
                 ins $0F3F,x
                 aso $0F0F
                 aso $0F0F
                 aso L_3F0E+1
                 ins $FFFF,x
                 beq L_9342
                 cpy #$C0
                 cpy #$C0
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 dcm (FPTR2+1,x)
                 aso DSTATS
                 aso (CASINI+1,x)
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 dcm (FPTR2+1,x)
                 ins $FFFF,x
                 ins $FFFF,x
                 ins L_3F3F,x
                 rla L_3F3F,x
                 rla $FF3F,x
                 ins $F0FC,x
                 cpy #$C0
                 cpy #$C0
                 cpy #$C0
                 cpy #$C0
L_93BA           cpy #$C0
                 beq L_93BA
                 ins L_3FFF,x
                 aso DSTATS
                 aso (CASINI+1,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 dcm (FPTR2+1,x)
                 ins $FFFF,x
                 ins $FFFF,x
L_93D6           ins L_3F3F,x
                 rla L_3F3F,x
                 rla $FF3F,x
                 ins $FFFF,x
                 nop $F0F0,x
L_93E5           beq L_93D6+1
                 beq L_93E5
                 nop $FCFC,x
                 ins $FFFF,x
                 ins $0FFF,x
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 cpy #$F3
                 ins $FFFF,x
                 ins $FFFF,x
L_9406           ins L_3FFF,x
                 aso $0F0F
                 aso $FF3F
                 ins $FFFF,x
                 nop $F0F0,x
                 beq L_9406+1
                 nop $FFFC,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins CASINI+1,x
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
                 cpy #$F0
                 ins $FFFF,x
                 rla $0F0F,x
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso $0F0F
                 aso $FF3F
                 ins $C3FF,x
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cpy #$C0
L_944A           cpy #$C0
                 beq L_944A
                 ins $FFFF,x
                 dcm (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso $FF3F
                 ins $FFFF,x
                 ins L_3F3F,x
                 rla L_3F3F,x
L_9468           ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
L_9471           ins $F0FF,x
                 cpy #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cpy #$F0
                 ins $FFFF,x
                 aso CASINI+1
                 brk
                 brk
                 brk
                 aso (APPMHI+1,x)
                 aso $0F0F
                 rla $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FCFF,x
                 nop $F0FC,x
                 beq L_9468+2
                 cpy #$C0
                 cpy #$F0
                 nop $FFFF,x
                 beq L_9471+2
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (CASINI+1,x)
                 aso $FF3F
                 ins L_3FFF,x
L_94C3           aso $0F0F
                 aso $0F0F
L_94C9           rla $FFFF,x
L_94CC           ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $F0FC,x
                 beq L_94C9+1
                 beq L_94CC
                 nop $FFFF,x
                 ins $C0F0,x
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
                 aso $FFFF
                 ins $0F3F,x
                 aso $0F0F
                 aso $0F0F
                 aso L_3F0E+1
                 ins $FFFF,x
                 ins $F0FC,x
                 beq L_94C3+1
                 cpy #$C0
                 cpy #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ins L_3F3F,x
                 aso $0F0F
                 aso DSTATS
                 aso (CASINI+1,x)
                 brk
                 brk
                 brk
                 brk
                 aso (FPTR2+1,x)
                 ins $FFFF,x
L_9524           ins $FFFF,x
L_9527           ins $FFFF,x
L_952A           ins $FFFF,x
L_952D           ins $FFFF,x
                 nop $F0F0,x
                 beq L_9524+1
                 beq L_9527
                 beq L_9527+2
                 beq L_952A+1
                 cpy #$C0
                 brk
                 brk
                 cpy #$3F
                 rla $0F3F,x
                 aso CASINI+1
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (FPTR2+1,x)
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 rla L_3F3F,x
                 rla $FFFF,x
                 nop $FCFC,x
                 nop $FCFC,x
                 nop $FFFF,x
                 ins $FCFF,x
                 beq L_952D+1
                 cpy #$C0
                 aso DSTATS
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cpy #$00
                 brk
                 brk
                 brk
                 brk
                 ins $FFFF,x
                 ins L_3FFF,x
                 aso L_3F0E+1
                 rla $0F3F,x
                 aso L_3F0E+1
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FCFF,x
                 nop CHLINK+1,x
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
                 cpy #$00
                 brk
                 brk
                 brk
                 ins $FFFF,x
                 rla $0F3F,x
                 aso $0F0F
L_95B9           aso CASFLG
                 aso (CASINI+1,x)
                 aso (APPMHI+1,x)
                 nop $F0F0,x
                 cpy #$C0
                 cpy #$C0
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ins L_3F3F,x
                 aso $0F0F
                 aso DSTATS
                 aso (CASINI+1,x)
                 brk
                 brk
                 brk
                 brk
                 aso (FPTR2+1,x)
                 ins $FFFF,x
L_95E4           ins $FFFF,x
L_95E7           ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FCFF,x
                 beq L_95E4+1
                 cpy #$C0
                 cpy #$C0
                 beq L_95B9+2
                 brk
                 brk
                 brk
                 cpy #$F0
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 brk
                 brk
                 brk
                 brk
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
L_9619           ins $FFFF,x
                 ins L_3F3F,x
                 ins $FFFF,x
                 nop $F0FC,x
                 beq L_95E7
                 cpy #$C0
                 beq L_9619+2
                 cpy #$C0
                 cpy #$F0
                 nop DSTATS,x
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso CASINI+1
                 brk
                 brk
                 brk
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
L_964C           ins $0F3F,x
                 aso $FFFF
                 ins $FFFF,x
                 nop $FCFC,x
                 nop $F0F0,x
                 beq L_964C+1
                 nop $FFFF,x
                 nop $F0F0,x
                 cpy #$C0
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
                 cpy #$FF
                 rla L_3F3F,x
L_9674           rla L_3F3F,x
                 rla L_3FFF,x
L_967A           aso CASFLG
                 aso (APPMHI+1,x)
                 rla $F0FC,x
                 beq L_9674
                 cpy #$C0
                 cpy #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ins L_3F3F,x
                 rla $0F0F,x
                 aso DSTATS
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 ins $FFFF,x
L_96A3           ins $FFFF,x
L_96A6           ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $F0FC,x
                 beq L_96A3+1
                 beq L_96A6
                 beq L_96A6+2
                 beq L_967A
                 cpy #$C0
                 cpy #$C0
                 cpy #$C0
                 rla CASFLG,x
                 aso (LNFLG,x)
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
                 aso (FPTR2+1,x)
                 ins $FFFF,x
                 ins $FFFF,x
                 rla L_3F3F,x
L_96DA           aso $0F0F
L_96DD           aso $FF3F
                 ins $FFFF,x
L_96E3           nop $FCFC,x
                 nop $FCFC,x
                 beq L_96DA+1
                 beq L_96DD
                 cpy #$C0
                 beq L_96F4
                 aso (LNFLG,x)
                 brk
L_96F4           brk
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
                 ins $FFFF,x
                 ins L_3FFF,x
L_9706           rla $0F3F,x
                 aso DSTATS
                 aso (CASINI+1,x)
                 aso $FFFF
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 nop $FCFC,x
                 nop $FFFC,x
                 nop $F0F0,x
                 beq L_96E3+2
                 cpy #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_972F           beq L_972F+1
                 rla L_3F3F,x
                 rla $0F0F,x
                 aso CASFLG
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (FPTR2+1,x)
                 nop $F0FC,x
                 beq L_9706
                 cpy #$00
                 brk
                 brk
                 brk
                 brk
                 cpy #$F0
                 nop $03FF,x
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
L_976C           ins $FFFF,x
                 ins $FFFF,x
                 nop IOCMD,x
                 brk
                 brk
                 brk
                 cpy #$C0
                 beq L_976C
                 beq L_976C+2
                 nop $FFFF,x
                 cpy #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (CASINI+1,x)
                 aso $FF0F
                 rla $0F0F,x
L_9794           aso L_3F0E+1
L_9797           rla L_3F3F,x
                 ins $FFFF,x
                 ins $FFFF,x
                 nop $F0F0,x
                 beq L_9794+1
L_97A5           beq L_9797
                 beq L_97A5
                 nop $FCFC,x
                 nop $FCFC,x
                 ins PUPBT3,x
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
                 aso (APPMHI+1,x)
                 rla $FFFF,x
L_97C1           ins $0F3F,x
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
L_97C8           aso $FF3F
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FCFC,x
                 nop $FCFC,x
                 nop $FCFC,x
                 ins (IOCMD),y
                 cpy #$00
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
                 aso $FFFF
                 ins L_3F3F,x
                 aso CASFLG
                 aso (LNFLG,x)
                 brk
                 brk
                 aso (APPMHI+1,x)
                 ins FPTR2+1,x
                 bmi L_97C1+2
                 brk
                 brk
                 brk
                 beq L_97C8
                 brk
L_9809           cpy #$C0
                 cpy #$00
                 brk
                 brk
                 cpy #$3F
                 aso (LNFLG,x)
                 brk
                 brk
                 aso (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 aso (APPMHI+1,x)
                 nop $FFFF
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $C0FF,x
                 brk
                 brk
                 cpy #$00
                 aso (CASINI+1,x)
L_9837           aso (CASINI+1,x)
                 aso $C000
                 cpy #$F0
                 ins L_19FE+1,x
                 nop LNFLG
                 cpy #$F0
                 beq L_9837+1
                 beq L_9809+1
                 cpy #$00
                 brk
                 brk
L_984E           bmi L_984E+1
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins NOCKSM,x
                 brk
                 aso (APPMHI+1,x)
                 aso CASFLG
                 aso (APPMHI+1,x)
                 brk
                 brk
                 cpy #$F0
                 nop $FCFF,x
                 brk
                 brk
                 cpy #$F0
                 nop $FFFC,x
                 ins $FCFC,x
                 bmi L_98AC+1
                 brk
                 ins (FPTR2+1),y
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
L_988C           ins $FFFF,x
                 ins $03C3,x
                 aso L_3F0E+1
                 ins $FFFF,x
                 ins $0F3F,x
L_989B           aso CASFLG
                 cpy #$F0
L_98A0           aso (IOCMD,x)
                 beq L_98A0
                 ins $FFFF,x
                 ins $FCFF,x
                 beq L_989B+1
L_98AC           cpy $F303
                 dcm $FFFF
L_98B2           ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
L_98BB           ins $FFFF,x
                 ins $C0FF,x
                 cpy $C0F0
                 cpy #$C0
                 nop $C0F0,x
                 beq L_98BB
                 beq L_988C+1
                 cpy #$C0
                 beq L_98DF+1
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
                 brk
                 brk
                 brk
L_98DF           aso (FPTR2+1,x)
                 ins L_3F3F,x
                 rla L_3FFF,x
                 rla L_3F3F,x
                 rla L_3F3F,x
                 ins L_3FFF,x
                 beq L_98B2
                 cpy #$F0
                 cpy #$C0
                 cpy #$C0
                 cpy #$C3
L_98FA           cpy #$F0
                 beq L_98FA
                 ins L_3FFF,x
L_9901           aso (LNFLG,x)
                 brk
                 bmi L_9901+1
                 nop $FCFC,x
                 beq L_993B
                 brk
                 brk
                 brk
                 cpy $FFFF
L_9911           rla L_3F3F,x
                 rla L_3F3F,x
                 rla L_3F3F,x
                 rla L_3F3F,x
                 rla $FF3F,x
                 dcm $C0C0
                 cpy #$C3
                 dcm (ERRSAV,x)
                 cpy #$C0
                 dcm (IOCMD,x)
                 cpy #$F0
                 nop $FFFF,x
L_9930           rla LNFLG,x
                 beq L_9930+1
                 ins $FFFF,x
                 ins L_3FFF,x
L_993B           nop DOSINI
                 nop L_3FFF,x
                 rla L_3F3F,x
                 rla L_3F3F,x
                 ins L_3FFF,x
                 rla L_3F3F,x
                 rla $FFFF,x
                 beq L_9911+1
                 dcm (ERRSAV,x)
                 dcm $FFFF
                 ins $CFFF,x
                 dcm (ERRSAV,x)
L_995C           dcm (IOCMD,x)
                 beq L_995C
                 cpy #$F0
                 nop $FFFF,x
                 ins $FFFF,x
                 ins $FCFF,x
                 nop $C0F3,x
                 nop $FF33,x
                 rla L_3F3F,x
L_9974           ins $FFFF,x
                 ins L_3FFF,x
                 rla L_3F3F,x
L_997D           ins $FFFF,x
                 beq L_9974+1
                 nop $F0F0,x
L_9985           beq L_9985+1
                 nop $FCF0,x
                 nop $F0FC,x
                 beq L_997D+2
                 nop CASINI+1,x
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
                 brk
                 brk
                 brk
                 ins $0F3F,x
                 aso L_3F0E+1
L_99A6           aso $0F0F
L_99A9           aso $0F0F
                 aso $FF3F
L_99AF           dcm $F0FC
                 beq L_99AF+1
                 beq L_99A6
                 beq L_99A6+2
L_99B8           beq L_99A9+1
                 beq L_99B8
                 nop $FFFF,x
                 ins APPMHI+1,x
                 brk
                 brk
                 nop L_3F3F
                 rla $FC3F,x
                 nop LNFLG
                 brk
                 ins (FPTR2+1),y
                 ins $0FCF,x
L_99D3           aso $0F0F
L_99D6           aso $0F0F
L_99D9           aso $0F0F
L_99DC           aso $0F0F
                 ins $F0F3,x
                 beq L_99D3+1
                 beq L_99D6
                 beq L_99D6+2
                 beq L_99D9+1
                 beq L_99DC
                 nop $FFFF,x
                 ins $00CF,x
                 brk
                 nop $FFFF,x
                 ins L_3F3F,x
                 ins CASFLG,x
                 aso (LNFLG,x)
                 dcm $CFFF
                 aso $0F0F
                 aso $CFCF
L_9A07           ins $CFFF,x
                 dcm $0F0F
L_9A0D           aso $FF3F
                 nop $F0F0,x
                 beq L_9A07+1
                 ins $FFFF,x
                 ins $F0F3,x
L_9A1B           beq L_9A0D
                 beq L_9A1B
                 ins L_3C2F+1,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins $FFFF,x
                 ins L_30FB+1,x
                 aso L_3F0C
                 aso $CF0F
                 ins $FFFF,x
                 ins $CFFF,x
                 aso $CF0F
                 rla $FF3F,x
                 nop $FFFC,x
                 nop $FCFC,x
                 ins $FCFF,x
                 ins $FFFF,x
                 nop $FCFC,x
                 ins $C000,x
                 brk
                 brk
                 brk
                 brk
                 cpy #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ins CASFLG,x
                 aso (CASINI+1,x)
                 aso DSTATS
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (APPMHI+1,x)
                 rla $FF33,x
                 nop $FFFC,x
                 nop $FCFC,x
                 nop $FCFC,x
                 nop $FFFF,x
                 ins $FFFF,x
                 aso (LNFLG,x)
                 brk
                 brk
                 aso (APPMHI+1,x)
                 aso $0F0F
                 rla CASINI+1,x
                 brk
                 cpy #$FC
                 ins L_33FF,x
                 aso (CASINI+1,x)
                 aso (ERRSAV,x)
                 dcm (ERRSAV,x)
                 dcm (CASINI+1,x)
                 aso (CASINI+1,x)
                 aso (CASINI+1,x)
                 dcm (FPTR2+1,x)
                 nop $FCFC,x
                 nop $FCFC,x
                 nop $FCFC,x
                 nop $FCFC,x
                 ins $FFFF,x
                 ins INBUFF,x
                 brk
                 aso L_3F3F
                 rla $0F0F,x
                 rla CASINI+1,x
                 brk
                 cpy #$F3
                 ins $03F3,x
                 aso (CASINI+1,x)
                 dcm (INBUFF,x)
                 ins (FPTR2+1),y
                 ins $F3F3,x
                 dcm (ERRSAV,x)
                 aso ($CF,x)
                 ins $FCFF,x
                 nop $FCFC,x
                 ins $FFFF,x
                 ins $FCFC,x
                 nop $FCFC,x
                 ins $0CFF,x
                 aso L_3F3F
                 ins $FFFF,x
                 ins $FFFF,x
                 rla L_3F3F,x
                 nop $C303
                 aso $C303
                 ins (FPTR2+1),y
                 ins $FFFF,x
                 ins $C3F3,x
                 dcm (BUFRHI,x)
                 aso L_3FCF
