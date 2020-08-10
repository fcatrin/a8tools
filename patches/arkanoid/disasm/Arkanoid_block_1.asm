
; BLOCK 1 Arkanoid.xex

                 org $1000

                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_100A           brk
                 brk
                 ora (NGFLAG,x)
                 ora CMCMD
L_1010           brk
                 brk
                 ora COLCRS
                 bvs $0FF6
                 nop #$80
                 brk
                 eor ESIGN,x
                 eor FR2+4,x
                 brk
                 brk
                 brk
                 brk
L_1021           eor FPTR2+1,x
                 eor ARSTKX,x
                 brk
                 brk
                 brk
                 rti
                 nop OLDADR,x
L_102B           lse DSKFMS+1,x
                 brk
                 brk
                 brk
                 ora NGFLAG
                 rts
                 cli
                 eor TOPSTK+1,x
                 brk
                 brk
                 cli
                 adc BITMSK,x
                 nop !
                 asl RAMLO+1,x
                 brk
                 brk
                 sei
                 sei
                 sei
                 adc $7979,y
                 adc KEYDEF,y
                 brk
                 brk
                 rti
                 bvc L_1021+1
L_104E           cpx ADRESS
                 bpl L_10A5+1
                 adc MVFA
                 ldx OPSTKX
                 tax
                 nop !
                 asl ABUFPT+2
                 ora L_342B+1,y
                 nop POKMSK,x
                 brk
                 brk
                 brk
                 brk
                 cim
                 cim
                 cim
                 cim
                 cim
                 and POKADR
                 lda BUFADR+1
                 eor $5A2A,y
                 rol
L_1070           eor COLCRS,x
                 sta $AB66,y
                 ins $FFBF
                 eor COLCRS,x
                 sta $A966,y
                 inc $FEFF,x
                 nop COLCRS,x
                 stx ADRESS+1,y
                 sta OPSTKX,x
                 lda OPSTKX
                 brk
                 brk
                 brk
                 nop #$80
                 rts
                 jsr $6860
                 cli
                 lsr L_1E1E,x
                 asl ICCOMT,x
                 aso LNFLG
                 brk
                 brk
                 brk
                 cim
                 cim
                 cim
                 cim
                 brk
                 rol
                 tax
                 ldy #$80
L_10A5           sta BUFADR
                 nop LNFLG,x
                 tay
                 tax
                 asl
                 cim
                 cim
                 nop RTCLOK+2,x
                 brk
                 brk
                 brk
                 brk
                 nop #$80
                 nop #$80
                 brk
                 tax
                 tax
                 brk
                 brk
                 eor COLCRS,x
                 brk
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 brk
                 brk
                 brk
                 brk
                 plp
                 rol
                 lsr
                 rti
                 bvc L_1121+2
                 ora LNFLG,x
                 plp
                 tay
                 lda (NGFLAG,x)
                 ora COLCRS
                 nop LNFLG,x
                 rti
                 rti
                 rti
                 rti
                 brk
                 brk
                 brk
                 brk
                 brk
                 tax
                 tax
                 brk
                 brk
                 eor COLCRS,x
                 brk
                 pla
                 cli
                 asl L_1E1E,x
                 asl ICCOMT,x
                 aso BPTR
                 and #$14
                 brk
                 brk
                 rti
                 rti
                 nop BRKKEY
                 nop HOLD1
                 sty TOADR,x
                 sta $AA66,y
L_1100           ora HOLD1,x
                 asl SAVMSC+1,x
                 ror MVFA
                 ror
                 tax
                 ora COLCRS
                 ror MVFA
                 ror ARSTKX
                 ldx $99BA
                 lsr HOLD1
                 nop ICBAHZ
                 asl
                 brk
                 brk
                 ldx $AE6B
                 arr #$9E
                 rra COLCRS
                 ora NSIGN
L_1121           las $FFFF,y
                 ins $6BBE,x
                 eor NSIGN,x
                 las $FFFF,y
                 ins $A9FF,x
                 eor FR2+4,x
                 lda $B9EA,y
                 nop
                 sta $5055,y
                 ror TOPSTK+1
                 eor MEOLFLG,x
                 pha
                 ldy #$00
                 brk
                 and L_1429,x
                 brk
                 ora BUFADR
                 eor ENDPT,x
                 brk
                 brk
                 brk
                 ora (NGFLAG,x)
                 ora CMCMD
                 brk
                 brk
                 brk
                 ora DINDEX
                 ldx $506A,y
                 brk
                 ora DINDEX
                 adc $95EA,x
                 nop LNFLG,x
                 ora COLCRS+1
                 sbc $A956,y
                 bvc L_116C
                 brk
                 sty ROWCRS,x
                 eor (FMSZPG+2),y
L_116C           asl SAVADR+1,x
                 nop #$00
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
                 nop RTCLOK+2,x
                 nop RTCLOK+2,x
                 nop RTCLOK+2,x
                 nop RTCLOK+2,x
                 plp
                 plp
                 plp
                 plp
                 plp
                 plp
                 plp
                 plp
                 rti
                 rti
                 rti
                 rti
                 rti
                 rti
                 rti
                 rti
                 nop $0C09
                 ora #$0C
                 ora #$0C
                 nop $6A5A
                 nop !
                 ror
                 eor BUFADR
                 lsr SAVADR,x
                 lax CARTAD+1,y
                 inc $6AAA,x
                 ldy #$00
                 ins $FFFE,x
                 ldx $A9AA
                 asl
                 brk
                 lda OPSTKX
                 lda OPSTKX
                 eor (ROWCRS),y
                 sta ICBLHZ,x
                 rts
                 ldy #$A0
                 jsr L_201F+1
                 ldy #$60
                 and #$29
                 nop LNFLG,x
                 nop #$68
                 sty FREQ,x
                 lda #$69
                 sta $5964,y
                 clc
                 ora RAMLO,x
                 ldx COLCRS+1
                 ldx DIRFLG
                 eor LMARGN,x
                 ora (COLCRS+1,x)
                 ora L_1500,y
                 brk
                 cim
                 ora $0106,y
                 brk
                 and BRKKEY
                 ora L_1100,y
                 ora (DSKFMS+1),y
                 php
                 brk
                 ora (LNFLG,x)
                 ora RAMLO+1
                 brk
                 php
                 brk
                 brk
                 txs
                 brk
                 txs
                 txs
                 brk
                 brk
                 brk
                 brk
                 bvc L_11FC
L_11FC           nop ADRESS
                 brk
                 brk
L_1200           brk
                 brk
                 brk
                 brk
L_1204           brk
                 nop ICBLHZ,x
                 ora RAMLO,x
                 ora DSKFMS,x
                 eor $9964,y
                 adc #$A9
                 lsr RAMLO+1,x
                 eor COLCRS+1,x
                 lda COLCRS+1
                 ldx DIRFLG
                 ora L_1500,y
                 brk
                 cim
                 ora $0106,y
                 ldx #$A2
                 brk
                 nop #$80
                 brk
                 brk
                 brk
                 ldy #$08
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
                 asl
                 jsr $8A8A
                 ldx #$A2
                 php
                 ldy #$29
                 and #$14
                 brk
                 nop #$68
                 sty FREQ,x
                 tay
                 rra (STARP,x)
                 lse (COLRSH,x)
                 aso $0413
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
                 and #$C9
                 and (IOCMD),y
                 sbc (FCHRFLG),y
                 cmp RAMLO
                 ldx COLCRS+1
                 ldx DIRFLG
                 eor LMARGN,x
                 ora (COLCRS+1,x)
                 ora L_1500,y
                 brk
                 cim
                 ora $0106,y
                 asl TRAMSZ
                 asl NGFLAG
                 ora (NGFLAG,x)
                 brk
                 brk
                 lsr HOLD1
                 eor (TOPSTK+1),y
                 sta (COX),y
                 nop ADRESS
                 ora $0E0A
                 php
                 nop L_2A27+1
                 and LOMEM
                 brk
                 brk
                 brk
                 brk
                 tay
                 lsr COLCRS,x
                 brk
                 brk
                 brk
                 ora (RAMLO+1,x)
                 asl VNTD+1
                 ror LNFLG
                 brk
                 brk
                 rti
                 bvc L_12FE
                 cim
                 sta CASINI,y
                 brk
                 brk
                 brk
                 rol
                 sta COLCRS,x
                 rts
                 ldy #$A0
                 jsr L_201F+1
                 tay
                 pla
                 nop L_4756+2
                 sha (FMSZPG+4),y
                 sta (TOADR),y
                 sty CHKSUM,x
                 and BUFRLO,x
                 and BUFRLO,x
                 and BUFRLO,x
                 and TOADR,x
                 txs
                 las $BFAF,y
L_12D5           lax $AFBF
                 sbc FR2+1
                 inc FR0+3
                 nop !
                 lse OLDCOL,x
                 rts
                 nop !
                 shs $97DB,y
                 sbc FR1+5,x
                 sbc BOOT
                 ror ERRNUM
                 nop
                 sbc $FEFA,x
                 nop !
                 inc $5C5C,x
                 jmp L_4C9C
                 shy $9C4C,x
                 nop BRKKEY
                 ora (RAMLO),y
                 ora (RAMLO),y
L_12FE           ora (BRKKEY),y
                 and L_1429,x
                 brk
                 ora BUFADR
                 eor L_3175,x
                 rol BFENHI,x
                 and NOCKSM,x
                 ora #$09
                 anc #$BF
L_1311           lax $AFBF
                 rra $6FAB,x
                 aso $8040,y
                 brk
                 brk
                 brk
                 aso SWPFLG
                 ror VDSLST+1
                 brk
                 brk
                 brk
                 bne L_1393+1
                 lda $FEFA,y
                 nop !
                 inc $E6E9,x
                 sta L_4CA5,y
                 shy L_4C5C,x
                 jsr L_205F+1
                 ldy #$64
                 eor BUFADR,x
                 ora LNFLG
                 nop ICBLHZ,x
                 ora ROWCRS,x
                 bcc L_1311+2
                 bne L_12D5
                 bcc L_12D5+2
                 nop CASINI,x
                 cim
                 cim
                 cim
                 asl
                 asl
                 ora #$09
                 ror
                 asl L_1A56,x
                 lsr COLCRS
                 stx POKADR+1
L_1358           lda #$A0
                 nop #$80
                 ldy #$E0
                 cpx STOPLN
                 ror
                 asl
                 cim
                 cim
                 asl
                 anc #$1B
                 ldy $6499
                 sta (ADRESS),y
                 sta PALNTS,x
                 stx MEOLFLG,y
                 nop #$C0
                 nop #$C0
                 ldy #$70
                 rts
                 bvs L_13DD
                 eor BUFADR,x
                 ora LNFLG
                 nop ICBLHZ,x
                 ora DOSINI+1,x
                 ora L_3838+1
L_1384           and BFENLO,x
L_1386           and BFENLO,x
                 lda TOADR
                 lda #$6E
                 tax
                 rra $6FAB
                 shs $A466,y
L_1393           adc #$5A
                 stx FR2+4,y
                 tsx
                 inc MVFA+1
                 ora $A96A,y
                 stx ARSTKX,y
                 anx #$56
                 nop !
                 eor $B96A,y
                 tax
                 sbc $70EA,y
                 bvs L_141B
                 jmp ($5C1C)
                 nop L_3D5B+1,x
                 and #$14
                 brk
                 ora BUFADR
                 eor L_2573+1,x
                 php
                 ora #$02
                 cim
                 ora (BOOT,x)
                 plp
                 lse $596B,x
L_13C3           eor MVFA,x
                 stx ICDNOZ
                 nop NSIGN
                 ins CARTAD+1,x
                 ldx $996A
                 adc ESIGN
                 ins $FEFF,x
                 sbc #$E6
                 sta $F966,y
                 sbc COX
                 adc TOPSTK+1
L_13DD           lsr FMSZPG+5,x
                 ora (DSKFMS),y
                 rts
                 rts
                 nop #$80
                 rti
                 rts
                 pla
                 nop COLCRS
                 ora RAMLO+1,x
                 brk
                 nop ICBLHZ,x
                 ora ROWCRS,x
                 bcc L_13C3
                 bne L_1384+1
                 bcc L_1386+1
                 nop ICDNOZ,x
                 and $D1
                 dec POKADR
                 lsr FR0+5
                 lsr LNFLG
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_1408           ldy $A6EB
                 sbc #$FA
                 ldx $9A6A,y
                 nop !
                 nop
                 shs $AB6A,y
                 ldx $A9AA,y
                 lda $ABEC,x
L_141B           nop
                 nop !
                 ldx $9A6A,y
                 ror $FB3A
                 tax
                 anx #$BE
                 tax
                 lda #$A9
L_1429           ldy #$80
                 tay
                 ldx LELNUM,y
                 ldy $6AAB
                 asl
                 cim
                 nop !
                 tax
                 tsx
                 nop !
                 nop
                 lda #$A0
                 nop #$80
                 ldy #$A4
                 tsx
                 lda $0A6A
                 cim
                 cim
                 asl
                 nop !
                 ldx $A97E
                 ldy #$80
                 nop #$A0
                 cpx #$E4
L_144F           tsx
                 ror
                 asl
                 cim
                 cim
                 asl
                 anc #$1B
                 ldy LNFLG
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 sta (VNTP,x)
                 sax (VNTD,x)
                 sta VVTP
                 sax STMTAB
                 nop #$C0
                 ane #$0C
                 ora $0F0E
                 bpl L_1482
                 cim
                 sta $809E,x
                 cim
                 rla (BFENLO),y
                 and LTEMP,x
                 rla LOMEM,x
                 bne L_144F
                 nop #$52
                 lse (ROWCRS),y
L_1482           eor COLCRS+1,x
                 lse LOMEM,x
                 nop #$EF
                 nop #$59
                 nop !
                 lse $5D5C,y
                 lsr $8080,x
                 cpx #$80
                 adc (PALNTS,x)
                 rra (ADRESS,x)
                 adc TOADR
                 nop #$80
                 inx
                 nop #$69
                 ror
                 arr #$6C
                 adc $806E
                 nop #$EF
                 nop #$70
                 adc (COLAC),y
                 rra (ENDPT),y
                 adc LOMEM,x
                 nop #$F6
                 nop #$77
                 sei
                 adc $7B7A,y
                 nop $8080,x
                 inc $7F80,x
                 asl
                 aso L_211F+1,x
                 cli
                 nop #$80
                 ins L_227F+1
                 rla (ICBALZ,x)
                 and ICPTLZ
                 rla LOMEM
                 nop #$A8
                 nop #$80
                 nop #$80
                 nop #$A9
                 tax
                 anx #$AC
L_14D7           lda $0C0C
                 nop $0C0C
                 nop $0C0C
L_14E0           nop $0C0C
L_14E3           nop $0C0C
                 nop $0C0C
                 nop $0C0C
                 nop $0C0C
                 nop $0C0C
                 nop $0C0C
                 nop $0C0C
L_14F8           nop $0C0C
                 nop LNFLG
                 brk
                 brk
L_1500           jsr L_4018
L_1503           ldx #$00
L_1505           lda L_1408,x
                 sta L_1358,x
                 inx
                 cpx #$10
                 bne L_1505
                 ldx #$D8
                 ldy #$14
                 stx L_3C22
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
                 sta L_14D7+1,x
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
                 nop #$DD
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
                 sta L_1700
                 lda #$00
                 sta L_1701
                 sta L_1A66
                 sta L_1A67
                 sta L_1B00
                 sta L_1B00+1
                 lda #$08
                 sta L_1702
                 lda #$14
                 sta L_1703
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
                 sta L_1703+1
                 sta L_1705
                 sta L_1706
L_165A           sta L_1769,x
                 inx
                 cpx #$1A
                 bne L_165A
                 ldx #$00
                 ldy #$38
L_1666           tya
                 sta L_4400,x
                 sta L_4403+1,x
                 inx
                 iny
                 cpx #$04
                 bne L_1666
                 lda #$00
                 sta $5070
                 lda #$B4
                 sta $5071
                 jmp $5113
L_1680           jsr L_2C07+1
                 jmp $5003
                 bvs L_16D7+1
                 lda #$B4
                 sta $5071
                 jmp L_1CE4
L_1690           lda L_3C24
                 cmp #$1C
                 bmi L_16A4
                 jsr L_46FC+1
                 lda L_3C24
                 cmp #$2A
                 bmi L_16A4
                 jsr L_1783
L_16A4           lda L_3C25
                 beq L_1690
                 jsr L_44CB
                 jsr L_44F1
                 jsr L_46FC+1
L_16B2           jsr $FFFF
                 jsr L_1CD0
                 jsr L_1680
                 lda L_1A66
                 cmp #$10
                 bpl L_16DA
                 lda L_460B
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
L_16DD           lda L_4409
                 clc
                 adc #$2E
                 cmp L_1772,x
                 bcs L_16D2
                 clc
                 adc #$18
                 cmp L_1772,x
                 bcc L_16D2
L_16F0           lda #$8A
                 sta L_443F+1
                 lda #$88
                 sta L_4452+1
                 jmp L_3000
                 brk
                 brk
                 brk
L_1700           brk
L_1701           brk
L_1702           cli
L_1703           nop LNFLG,x
L_1705           brk
L_1706           brk
L_1707           bmi L_1781
                 nop $907C,x
                 pla
L_170D           bmi L_170F
L_170F           rts
                 sed
                 ldy $5C7C,x
                 jsr ABUFPT
                 rts
L_1718           beq L_16D2
                 cli
                 nop L_102B+1,x
                 brk
                 cpy #$60
                 beq L_1752+1
                 cli
                 bit POKMSK
                 brk
                 nop #$C0
                 rts
                 bmi L_1744+1
                 php
                 brk
L_172F           brk
                 nop #$60
                 bcs L_178B+1
                 plp
                 nop WARMST,x
                 brk
                 rts
                 bcc L_179A+1
L_173B           beq L_17B3+2
                 sei
                 bmi L_179E+2
                 bcc L_17A8+2
                 beq L_173B+1
L_1744           beq L_17B6
                 brk
L_1747           cim
                 ora (POKMSK),y
                 aso $0D0E
                 asl
                 asl
                 asl
                 ora #$08
L_1752           aso TRAMSZ
                 ora NGFLAG
                 aso (CASINI,x)
                 ora (LNFLG,x)
                 ora (CASINI,x)
                 aso (RAMLO,x)
                 ora TRAMSZ
                 aso WARMST
                 ora #$0A
                 anc #$0C
                 ora $0F0E
L_1769           sta (LNFLG,x)
                 brk
L_176C           rra LNFLG,x
L_176F           ora (LNFLG,x)
L_1771           brk
L_1772           sta (LNFLG,x)
                 brk
L_1775           rol LNFLG,x
L_1778           ora (LNFLG,x)
                 brk
L_177B           ora LNFLG,x
                 brk
L_177E           ora LNFLG
                 brk
L_1781           ora (CASINI,x)
L_1783           ldx L_1781
                 lda #$01
                 sta GPRIOR
L_178B           lda L_176F,x
                 beq L_17A1
                 cmp #$02
                 beq L_1797
                 jmp L_18C8
L_1797           ldy #$00
L_1799           iny
L_179A           cpy #$1E
                 bne L_1799
L_179E           jmp L_1992
L_17A1           lda L_1702
                 cmp #$58
                 beq L_17F4
L_17A8           lda L_1700
                 beq L_17B3
                 dec L_1700
                 jmp L_1992
L_17B3           lda L_176F
L_17B6           bne L_17F4
                 inc L_1701
                 lda L_1701
                 cmp #$14
                 bcs L_17C8
                 inc L_1701
                 jmp L_1992
L_17C8           lda #$00
                 sta L_1701
                 lda L_1702
                 sta FRE+2
                 lda L_1703
                 sta FRE+3
                 ldy #$00
L_17D9           lda (FRE+2),y
                 sta L_1358,y
                 iny
                 cpy #$10
                 bne L_17D9
                 lda L_1702
                 clc
                 adc #$10
                 sta L_1702
                 bcc L_17F1
                 inc L_1703
L_17F1           jmp L_1992
L_17F4           cpx #$00
                 beq L_1809
                 stx L_1781+1
                 dex
                 lda L_1775,x
L_17FF           cmp #$41
                 bcs L_1806
                 jmp L_1797
L_1806           ldx L_1781+1
L_1809           lda L_4409
                 lsr
                 lsr
                 stx L_1781+1
                 tax
                 lda L_1747,x
                 sta FRE+4
                 sta FRE+2
                 stx FRE+3
                 ldx L_1781+1
                 lda #$0B
                 sta FRE+5
                 lda #$01
                 sta L_1769,x
                 sta L_176C,x
                 sta L_176F,x
                 lda FRE+4
                 bne L_183E
                 lda #$7F
                 sta L_176C,x
                 lda #$01
                 sta L_1769,x
                 jmp L_1877
L_183E           cmp FRE+5
                 bpl L_185A
L_1842           lda FRE+5
                 sec
                 sbc FRE+4
                 sta FRE+5
                 inc L_176C,x
                 lda FRE+5
                 cmp FRE+4
                 bpl L_1842
                 lda #$01
                 sta L_1769,x
                 jmp L_1877
L_185A           lda FRE+5
                 sta L_1781+1
L_185F           lda L_1781+1
                 clc
                 adc FRE+5
                 sta L_1781+1
                 inc L_1769,x
                 lda FRE+4
                 cmp L_1781+1
                 bpl L_185F
                 lda #$01
                 sta L_176C,x
L_1877           lda FRE+3
                 cmp #$12
                 bmi L_1885
                 lda L_1769,x
                 ora #$80
                 sta L_1769,x
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
                 sta L_1772,x
                 lda #$0F
                 sta PCOLR1,x
                 ldy #$34
                 tya
                 sta L_1775,x
                 ldx #$00
L_18B7           lda L_1707,x
                 sta (FRE+2),y
                 iny
                 inx
                 cpx #$08
                 bne L_18B7
                 ldx L_1781+1
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
                 sta L_1772,x
                 sta HPOSP1,x
                 inc L_176F,x
                 lda L_1775,x
                 tay
                 stx L_1781+1
                 ldx #$00
                 txa
L_1901           sta (FRE+2),y
                 iny
                 inx
                 cpx #$08
                 bne L_1901
                 ldx L_1781+1
                 cpx #$02
                 beq L_1913
                 jmp L_1992
L_1913           jmp L_19E8
L_1916           lda L_176C,x
                 cmp L_177B,x
                 beq L_1926
L_191E           bmi L_1926
                 inc L_177B,x
                 jmp L_193B
L_1926           lda #$00
                 sta L_177B,x
                 lda L_1769,x
                 and #$80
                 bne L_1938
                 dec L_1772,x
                 jmp L_193B
L_1938           inc L_1772,x
L_193B           lda L_1772,x
                 sta HPOSP1,x
                 lda L_1769,x
                 and #$7F
                 beq L_1955
                 cmp L_1778,x
                 beq L_1955
                 bmi L_1955
                 inc L_1778,x
                 jmp L_1992
L_1955           lda #$00
                 sta L_1778,x
                 lda L_1775,x
                 tay
                 lda #$00
                 sta (FRE+2),y
                 iny
                 tya
                 sta L_1775,x
                 stx L_1781+1
                 lda #$07
                 sta L_1987+1
                 lda #$17
                 sta L_1987+2
                 lda L_177E,x
                 clc
                 asl
                 asl
                 asl
                 clc
                 adc L_1987+1
                 sta L_1987+1
                 jsr L_1A13
                 ldx #$00
L_1987           lda L_172F,x
                 sta (FRE+2),y
                 iny
                 inx
                 cpx #$08
                 bne L_1987
L_1992           ldx L_1781
                 cpx #$02
                 bne L_199B
                 ldx #$FF
L_199B           inx
                 stx L_1781
                 lda L_1771
                 bne L_19A5
L_19A4           rts
L_19A5           lda L_1775+2
                 cmp #$3A
                 bcc L_19A4
                 lda L_1702
                 cmp #$08
                 beq L_19A4
                 lda L_1701
                 cmp #$0F
                 bcs L_19BE
                 inc L_1701
                 rts
L_19BE           lda #$00
                 sta L_1701
                 lda L_1702
                 sec
                 sbc #$10
                 sta L_1702
                 bcs L_19D1
                 dec L_1703
L_19D1           lda L_1702
                 sta FRE+2
                 lda L_1703
                 sta FRE+3
                 ldy #$00
L_19DD           lda (FRE+2),y
                 sta L_1358,y
                 iny
                 cpy #$10
                 bne L_19DD
                 rts
L_19E8           lda #$00
                 sta L_1701
                 ldy #$00
L_19EF           sta L_176F,y
                 sta L_1703+1,y
                 sta L_177B,y
                 sta L_1778,y
                 sta L_1772,y
                 sta L_1775,y
                 iny
                 cpy #$03
                 bne L_19EF
                 lda #$08
                 sta L_1702
                 lda #$14
                 sta L_1703
                 jmp L_1992
L_1A13           lda L_1A34,x
                 cmp #$01
                 bcs L_1A1E
                 inc L_1A34,x
                 rts
L_1A1E           lda #$00
                 sta L_1A34,x
                 lda L_177E,x
                 cmp #$07
                 beq L_1A2E
                 inc L_177E,x
                 rts
L_1A2E           lda #$00
                 sta L_177E,x
                 rts
L_1A34           ora (NGFLAG,x)
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_1A56           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
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
                 jsr L_3BB3+1
                 inc L_1A67
                 inc L_1A66
                 jmp L_1A94
L_1AB6           rts
L_1AB7           stx L_1A6A
                 lda L_4000
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
                 lda L_4000
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
L_1B19           lda #$00
L_1B1B           sta L_1B00
                 lda L_1A66
                 cmp #$0F
                 bpl L_1B58+1
                 ldx L_1B00+1
                 cpx #$03
                 beq L_1B3E
                 lda L_1B47,x
L_1B2F           ldx #$00
L_1B31           sta L_14D7+1,x
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
L_1B47           rol $0C3A,x
L_1B4A           beq L_1B3E
                 nop ZTEMP1+1,x
                 sed
                 nop !
                 nop $FEFE,x
                 nop $F8FA,x
                 inc INBUFF+1,x
L_1B58           escape #$AE
                 ora (DSKUTL+1,x)
                 cpx #$0F
                 bpl L_1B66
                 lda L_1B4A,x
                 jmp L_1B2F
L_1B66           lda #$1D
                 sta L_1B00
                 jmp L_1B3E
                 lda #$1D
                 sta L_1B00
                 jmp L_1B36+1
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
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
L_1BC0           sta $6F00,x
                 inx
                 bne L_1BBD
                 stx GRACTL
                 lda #$FF
                 sta SIZEP0
                 lda #$09
                 jsr L_2500
                 lda #$0C
L_1BD5           sta L_14D7+1,x
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
                 lda L_14E3+1,x
                 beq L_1BF8
                 dec L_14E3+1,x
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
L_1C1D           bne L_1BE7
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
                 sta L_31F3+1
                 lda #$8A
                 sta L_443F+1
                 lda #$88
                 sta L_4452+1
                 jmp L_3353
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_1D1F           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_1E1E           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_1EF5           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
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
                 eor COLCRS+1,x
                 lse ROWCRS,x
                 eor COLCRS+1,x
                 lse ROWCRS,x
                 eor COLCRS+1,x
                 lse ROWCRS,x
                 eor COLCRS+1,x
                 lse ROWCRS,x
                 eor COLCRS+1,x
                 lse ROWCRS,x
L_2014           eor COLCRS+1,x
                 lse ROWCRS,x
                 eor COLCRS+1,x
                 cim
                 aso ICPTLZ
                 ora TSLNUM
L_201F           sax COLDST
                 aso ICBALZ
                 ora LNFLG
                 and $594E,y
                 cim
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
L_2032           lse (FREQ,x)
                 eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 brk
                 ror CASINI,x
                 aso ICBAHZ
                 rol $6D06,x
                 nop #$02
                 asl ICPTLZ
                 asl FRE+2
                 eor L_4745+1,x
                 nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr FMSZPG+4
L_205F           nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr SVDISP
                 cim
                 asl ICPTHZ
                 asl FRE+5
                 ldy $0702,x
                 bit FTYPE
                 php
                 brk
                 dec HOLD1
                 nop !
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 rti
                 asl FRE+4
                 rla FR1+4,x
                 cim
                 nop BUFRHI
                 inc $0702
                 and #$3E
                 php
                 ora (CASINI,x)
                 ora (CASINI,x)
                 ora (CASINI,x)
                 ora (CASINI,x)
                 ora (CASINI,x)
                 ora (CASINI,x)
                 ora (CASINI,x)
                 ora (CASINI,x)
                 ora (CASINI,x)
                 ora (CASINI,x)
                 ora (CASINI,x)
                 ora (CASINI,x)
                 ora (CASINI,x)
                 jsr $0603
                 bvc L_20C4+1
                 nop $032A,x
                 aso FMSZPG+1
L_20C4           nop #$4D
                 and (BFENLO),y
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (TRAMSZ,x)
                 bvc L_20EB+1
                 dec B2_ICPTL,x
                 aso FMSZPG+1
L_20EB           nop #$4D
                 cim
                 bvs L_20F2+1
                 aso (RAMLO,x)
L_20F2           aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 tya
                 aso (WARMST,x)
L_210D           sta (DSTAT,x)
                 and (LOMEM+1,x)
                 jmp B6_ICCOM
                 nop L_4683
                 eor #$03
                 nop CASINI+1
                 nop CASINI+1
                 nop CASINI+1
L_211F           nop CASINI+1
                 nop CASINI+1
                 nop CASINI+1
                 nop CASINI+1
                 nop CASINI+1
                 nop CASINI+1
                 nop CASINI+1
                 nop CASINI+1
                 nop CASINI+1
                 nop ICHIDZ
                 jsr L_201F+1
                 lse (COLRSH,x)
                 nop FMSZPG+2
                 nop ICHIDZ
                 cim
                 eor L_4D20,y
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 bvc L_2165+2
                 php
                 brk
                 asl $0D01
                 stx FMSZPG+1
                 eor COLCRS+1
L_2165           lsr L_4D54+1
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
L_217C           aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (RAMLO,x)
                 aso (LTEMP,x)
                 ora (DOSVEC+1,x)
                 bvc L_210D+1
                 nop FMSZPG+2
                 lsr ROWCRS,x
                 eor L_404F+1,y
                 ora (OLDCHR,x)
                 lsr $5C5F,x
                 eor $5F5E,x
                 nop $5E5D,x
                 lse $5D5C,x
                 lsr $5C5F,x
                 eor $5F5E,x
                 nop $5E5D,x
                 lse $5D5C,x
                 lsr $0727,x
                 and (CASINI),y
                 pla
                 ora (CMCMD,x)
                 bit FTYPE
                 asl $CE
                 cim
                 ora (CMCMD,x)
                 eor (XMTDON),y
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 ora (CMCMD,x)
                 bvc L_21DB
                 brk
                 bne L_217C+1
                 ora (CMCMD,x)
L_21DB           bvc L_21E2
                 ora ($D0,x)
                 ldx L_3E54+1
L_21E2           rla L_3D3C,x
                 rol L_3C3E+1,x
                 and L_3F3D+1,x
                 nop L_3E3D,x
                 rla L_3D3C,x
                 rol L_3C3E+1,x
                 and L_3F3D+1,x
                 nop L_3E3D,x
                 cim
                 dec NGFLAG,x
                 aso HOLD1
L_21FF           rol $0F08,x
                 cpx #$01
                 aso TMPCHR
                 aso TEMPA
                 eor L_4341+1,y
                 rti
L_220C           eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 aso ICBALZ
                 rol WARMST,x
                 cim
                 cim
                 asl
                 nop #$50
                 nop HOLD1,x
                 rol $5D08,x
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr CASINI
                 php
                 bvc L_2253
                 rti
                 sha L_4439,y
                 cim
L_2253           nop BUFRLO
                 lsr $0702
                 eor (XMTDON),y
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 rla L_3937+1,y
                 nop !
                 eor SAVMSC
                 nop DELTAR,x
                 cim
                 anc #$25
                 rol $8435,x
                 nop FMSZPG+2,x
                 cli
L_227F           nop COLCRS,x
                 rol L_3C3E+1,x
                 and L_3F3D+1,x
                 nop L_3E3D,x
                 rla L_3D3C,x
                 rol L_3C3E+1,x
                 and L_3F3D+1,x
                 nop L_3E3D,x
                 rla L_3D3C,x
                 rol TABMAP+5,x
                 asl ICPTLZ
                 asl FRE+4
                 cim
                 cim
                 asl ICPTHZ
                 asl FRE+5
                 ldy $5902,x
                 cim
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 lse (FREQ,x)
                 eor (CRITIC,x)
                 cim
                 aso ICHIDZ
                 ora OLDCOL+1
                 cpx FR1+4
                 cim
                 anc #$83
                 bvc L_2321+1
                 cim
                 and OLDCHR
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr FMSZPG+4
                 nop FMSZPG+2
                 lsr VNTD
                 lsr $5745
                 nop DOSINI,x
                 aso (CMCMD,x)
                 cim
                 rol $0B08,x
                 asl CASINI+1,x
                 ora #$46
                 sty FMSZPG
                 lse $544E
                 jsr $0803
                 bvc L_2343+1
                 asl FRE+4
                 rla ICAX1Z,x
                 aso (RAMLO,x)
                 rla (BFENLO),y
                 aso (WARMST,x)
                 and (VNTP+1,x)
                 jmp $5345
                 rol $0903,x
                 sty DRKMSK
                 eor DINDEX
                 nop BUFRHI,x
                 pha
                 aso (RAMLO,x)
                 lse (LMARGN,x)
L_2321           aso (RAMLO,x)
L_2323           bit B1_ICAX3
                 asl COLRSH
                 asl FRE+2
                 ror CASINI+1
                 asl TMPCHR
                 asl FRE+2
                 bvs L_2334+1
                 aso FMSZPG+1
L_2334           nop #$50
                 lse (KEYDEF+1),y
                 aso (TRAMSZ,x)
                 rla (TRAMSZ,x)
                 cmp B4_ICBAL,x
                 ora #$82
                 bvc L_2395+1
L_2343           eor (TRAMSZ),y
                 dec B4_ICAX5,x
                 nop ICSPRZ
                 tya
                 aso (CMCMD,x)
                 lse $083E
                 plp
                 ldx #$03
                 asl TMPCHR
                 asl FRE+4
                 ldy $0703
                 nop VNTP
                 eor #$4D
                 ldx CASINI+1,y
                 asl ICSTAZ
                 asl FRE+5
                 cpy #$03
                 anc #$82
                 eor #$4D
                 and (VNTP+1,x)
                 bvc L_23C1+1
                 cim
                 dex
                 aso (DOSINI,x)
                 sty FMSZPG
                 lse $544E
                 eor (FTYPE),y
                 php
                 nop FR0
                 aso (CMCMD,x)
                 bvc L_2385
                 nop CPC,x
                 dec $0703,x
L_2385           eor (FTYPE),y
                 php
                 rol SUPERF
                 aso TMPCHR
                 aso CIOCHR
L_238F           cim
                 escape #$03
                 nop L_4C84
L_2395           lse $504F
                 eor (RAMLO+1),y
                 anc #$D4
                 nop $0703,x
                 eor $083E
                 aso (TRAMSZ,x)
                 nop RAMLO
                 rol $0410,x
                 ora #$51
                 sax (FMSZPG,x)
                 lse L_394B+1
                 nop !
                 nop CMCMD
                 bvc L_23BA
                 asl
                 nop ICBALZ,x
                 nop CMCMD
L_23BA           bvc L_23C3
                 cmp CASINI
                 rol $0704
L_23C1           bvc L_23C8
L_23C3           aso $D0,x
                 sec
                 nop CMCMD
L_23C8           eor (CMCMD),y
                 aso L_42D0,x
                 nop CMCMD
                 cim
                 rol $0608,x
                 jmp $0804
                 pha
                 sax (DRKMSK,x)
                 lse (CHKSUM),y
                 lsr RAMLO,x
                 asl
                 and (VNTD+1,x)
                 lse (ROWCRS),y
                 eor (LMARGN,x)
                 nop FKDEF,x
                 nop DOSVEC+1
                 sax (DRKMSK,x)
                 lse (CHKSUM),y
                 eor (CMCMD),y
                 sty CASINI
L_23F0           nop LNFLG
L_23F2           brk
L_23F3           brk
                 sty DSTAT
L_23F6           lse L_104E+1
                 bpl L_240A+1
                 bpl L_240C+1
                 bpl L_2452
                 nop SOUNDR,x
                 cim
                 nop COUNTR,x
                 nop WARMST
                 sax (LMARGN,x)
                 eor (RMARGN,x)
L_240A           and STMTAB,x
L_240C           nop RAMLO
                 eor (MEOLFLG,x)
                 nop RAMLO
                 and MVTA+1,x
                 nop RAMLO
                 lse (DIRFLG,x)
                 nop RAMLO
                 and COMCNT,x
                 nop DOSVEC+1
                 sax (ZCHAIN+1,x)
                 eor SAVMSC+1
                 bit FTYPE
                 php
                 brk
                 tsx
                 nop CMCMD
                 and FTYPE
                 php
                 brk
                 cpy RAMLO
L_242F           aso HOLD1
                 aso FLPTR
                 cim
                 dec $0604
                 bvc L_243F
                 ins $04D8,x
                 aso L_4B81+1
L_243F           cim
                 eor (VVTP),y
                 alr #$45
                 eor L_4143+1,y
                 nop BUFRFL,x
                 nop #$04
                 asl LMARGN
L_244D           asl FPTR2+1
                 cpx $0804
L_2452           lsr VNTP+1
                 eor (LMARGN,x)
                 bvc L_244D+1
                 nop RAMLO
                 rla (LNFLG),y
                 ora RAMLO
                 rla (DOSVEC),y
                 ora RAMLO
                 rla (RTCLOK+2),y
                 ora RAMLO
                 cim
                 asl $0705,x
                 plp
                 rol $0508,x
                 plp
                 ora CMCMD
                 pha
                 nop #$4B
                 cim
                 cim
                 ora DOSVEC+1
                 sax (COLRSH,x)
                 eor ROWCRS,x
                 eor (FTYPE),y
                 php
                 ins $053C,x
                 aso TMPCHR
                 aso FLPTR
                 cim
                 lsr RAMLO+1
                 nop LTEMP+1
                 bvc L_2492
                 nop FEOF
                 nop !
                 ora RAMLO
L_2492           rla ADRESS,x
                 ora RAMLO
                 rol $056E,x
                 nop LTEMP+1
                 sei
                 ora CMCMD
                 and (RAMLO+1,x)
                 cim
                 cpx VNTP
                 ora RTCLOK+1
                 sax (SOUNDR,x)
                 cim
                 bvc L_24FB
                 stx ZCHAIN+1
                 eor SAVMSC+1
                 nop SOUNDR
                 nop RTCLOK,x
                 php
                 ora (BUFRFL,x)
                 sty $0605
                 bvc L_24C0
                 cpx $0596
                 aso $8651
L_24C0           alr #$45
                 eor L_4143+1,y
                 nop RTCLOK,x
                 php
                 cim
                 sec
                 ldy #$05
                 asl TMPCHR
                 asl EEXP
                 tax
                 ora TRAMSZ
                 rla TRAMSZ
                 inc $05B4
                 ora #$25
                 sty DSTAT
                 eor (RMARGN,x)
                 nop SAVCUR,x
                 ora APPMHI+1
                 eor (VVTP),y
                 alr #$45
                 eor L_4143+1,y
                 nop RTCLOK,x
                 php
                 ora (BUFRFL,x)
                 iny
                 ora TRAMSZ
                 bvc L_24F9
                 nop
                 escrts #$05
                 aso $8651
L_24F9           alr #$45
L_24FB           eor L_4143+1,y
                 nop RTCLOK,x
L_2500           stx L_254F+1
                 sty L_2551
                 clc
                 asl
                 tax
                 lda L_253A,x
                 sta L_2553+1
                 lda L_253A+1,x
                 sta L_2553+2
                 lda #$06
                 ldy #$56
                 ldx #$25
                 jsr L_1F00
                 lda #$00
                 sta L_2553
                 lda #$00
                 sta AUDCTL
                 lda #$03
                 sta L_2552
                 sta SKCTL
                 sta SSKCTL
                 ldx L_254F+1
L_2536           ldy L_2551
                 rts
L_253A           ldx $E225,y
                 and TRAMSZ
                 rol ICAX1Z
                 rol DRKMSK
                 rol LOGCOL
                 rol ENDPT+1
                 rol ECSIZE+1
                 rol DATALN
                 rol PTABW
                 rol BUFCNT
L_254F           rla LNFLG
L_2551           brk
L_2552           brk
L_2553           ins L_25DF,x
                 pha
                 txa
                 pha
                 tya
                 pha
                 lda L_2552
                 bne L_2563
                 jmp L_2586
L_2563           ldx L_2553+1
                 ldy L_2553+2
                 stx FKDEF
                 sty FKDEF+1
                 ldy #$01
                 lda (FKDEF),y
                 cmp #$FF
L_2573           beq L_25B0
                 sta AUDF1,y
                 dey
                 lda (FKDEF),y
                 sta AUDF1,y
                 lda L_2553
                 beq L_258E
                 dec L_2553
L_2586           pla
                 tay
                 pla
                 tax
                 pla
                 jmp SYSVBV
L_258E           lda L_2553+1
                 clc
                 adc #$03
                 sta L_2553+1
                 bcc L_259C
                 inc L_2553+2
L_259C           ldx L_2553+1
                 ldy L_2553+2
                 stx FKDEF
                 sty FKDEF+1
                 ldy #$02
                 lda (FKDEF),y
                 sta L_2553
                 jmp L_2586
L_25B0           lda #$00
                 sta L_2552
                 sta AUDF1
                 sta AUDC1
                 jmp L_2586
                 brk
                 brk
                 brk
                 nop STENUM,x
                 rla LELNUM,y
                 rla STMLBD,y
                 nop ECSIZE+1,x
                 rla ECSIZE+1,y
                 nop ECSIZE,x
                 nop MVLNG+1,x
                 nop TSLNUM+1,x
                 nop TSLNUM,x
                 nop TSLNUM+1,x
L_25DF           ins $FFFF,x
                 brk
                 brk
                 brk
                 cim
                 lax L_3100
                 lda L_3100
                 lax LNFLG
                 cim
                 lda LNFLG
                 and (ECSIZE+1),y
                 brk
                 cim
                 ldy LNFLG
                 cim
                 lax (LNFLG,x)
                 cim
                 lda (LNFLG,x)
                 cim
                 ldy #$00
                 cim
                 lda (LNFLG,x)
                 ins $FFFF,x
                 brk
                 brk
                 brk
L_2609           ora STENUM,y
                 clc
                 lda L_17FF+1
                 lax LNFLG
                 ora ECSIZE+1,y
                 clc
                 lda LNFLG
                 ora ECSIZE,y
                 ora MVLNG+1,y
                 ora TSLNUM+1,y
                 ora TSLNUM,y
                 ora TSLNUM+1,y
                 ins $FFFF,x
                 brk
                 brk
                 brk
                 aso (STENUM),y
                 brk
                 cim
                 lda L_1200
                 lax LNFLG
                 aso (ECSIZE+1),y
                 brk
                 cim
                 lda LNFLG
                 cim
                 ldy LNFLG
                 cim
                 lax (LNFLG,x)
                 cim
                 lda (LNFLG,x)
                 cim
                 ldy #$00
                 cim
                 lda (LNFLG,x)
                 ins $FFFF,x
                 brk
                 brk
                 brk
                 ora (ICPTHZ,x)
                 brk
                 cim
                 and #$00
                 nop ICAX1Z
                 brk
                 ora ICBLLZ
                 brk
                 nop ICBAHZ
                 brk
                 ins $FFFF,x
                 brk
                 brk
                 brk
                 asl $048A,x
                 jsr $0188
                 bit VNTD+1
                 ora (ICSPRZ,x)
                 sty NGFLAG
                 ins $FFFF,x
                 nop ICBLHZ,x
                 aso (POKMSK,x)
                 bit L_1204
                 anc #$02
                 nop ICPTHZ,x
                 aso (POKMSK,x)
                 rol
                 nop RTCLOK
                 and #$02
                 nop ICBAHZ,x
                 aso (POKMSK,x)
                 plp
                 nop RTCLOK
                 rla CASINI
                 nop ICSTAZ,x
                 aso (POKMSK,x)
                 rol RAMLO
                 cim
                 and CASINI
                 nop ICCOMZ,x
                 aso (POKMSK,x)
                 and RAMLO
                 cim
                 bit CASINI
                 ins $FFFF,x
                 brk
                 brk
                 brk
                 ins B6_ICAX3,x
                 sbc LELNUM,x
                 aso (FR2+5,x)
                 ldx $E102
                 lax $FF02
                 ins FPTR2+1,x
                 brk
                 brk
                 rla TABMAP+9
                 rla (EXSVPR),y
                 cim
                 rla B6_ICAX5
                 rla (LELNUM+1),y
                 aso (FPTR2+1,x)
                 ins FPTR2+1,x
                 brk
                 brk
                 aso (ICCOMZ,x)
                 aso (RAMLO+1,x)
                 cim
                 aso (RAMLO,x)
                 cim
                 aso (CASINI+1,x)
                 cim
                 aso (CASINI+1,x)
                 bit CASINI+1
                 ora ICBALZ
                 aso (RAMLO,x)
                 bit CASINI+1
                 aso (ICBALZ,x)
                 aso (CASINI+1,x)
                 rol CASINI+1
                 ora ICPTLZ
                 aso (RAMLO,x)
                 rol CASINI+1
                 aso (ICPTLZ,x)
                 aso (CASINI+1,x)
                 plp
                 aso (RAMLO+1,x)
                 plp
                 aso (RAMLO,x)
                 plp
                 aso (CASINI+1,x)
                 plp
                 aso (CASINI+1,x)
                 rol
                 aso (RAMLO+1,x)
                 rol
                 aso (RAMLO,x)
                 rol
                 aso (CASINI+1,x)
                 rol
                 aso (CASINI+1,x)
                 bit $0503
L_270C           bit $0403
                 bit DSTATS
                 bit DSTATS
                 rol $0503
                 rol $0403
                 rol DSTATS
                 rol DSTATS
                 bit $0503
                 bit $0403
                 bit DSTATS
                 bit DSTATS
                 rol
                 aso (RAMLO+1,x)
                 rol
                 aso (RAMLO,x)
                 rol
                 aso (CASINI+1,x)
                 rol
                 aso (CASINI+1,x)
                 plp
                 aso (RAMLO+1,x)
                 plp
                 aso (RAMLO,x)
                 plp
                 aso (CASINI+1,x)
                 plp
                 aso (CASINI+1,x)
                 rol CASINI+1
                 ora ICPTLZ
                 aso (RAMLO,x)
                 rol CASINI+1
                 aso (ICPTLZ,x)
                 aso (CASINI+1,x)
                 bit CASINI+1
                 ora ICBALZ
                 aso (RAMLO,x)
                 bit CASINI+1
                 aso (ICBALZ,x)
                 aso (CASINI+1,x)
                 cim
                 aso (RAMLO+1,x)
                 cim
                 aso (RAMLO,x)
                 cim
                 aso (CASINI+1,x)
                 cim
                 aso (FPTR2+1,x)
                 ins FPTR2+1,x
                 brk
                 brk
                 aso $072F,x
                 and (ICSPRZ+1,x)
                 aso ICSTAZ
                 anc #$07
                 and ICBLHZ
                 aso ICPTHZ
                 rla TRAMSZ
                 and #$25
                 asl ICAX2Z
                 rla (TRAMSZ,x)
                 ins $FFFF,x
                 ins $65FF,x
                 cmp (NGFLAG,x)
                 cmp (NGFLAG,x)
                 ora (IODVC,x)
                 ora #$C1
                 ora (NGFLAG,x)
                 cmp (BOOT,x)
                 cmp (NGFLAG,x)
                 ora ($CB,x)
                 ora (DOSINI+1,x)
                 ora $0DFF
                 ora $0D0D
                 adc $0D6D
                 cim
                 cmp (NGFLAG,x)
                 cmp (LOGCOL,x)
                 cmp (NGFLAG,x)
                 cmp (PALNTS,x)
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
                 ora $6D6D
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
L_2800           sta L_46C6,x
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
L_2824           jsr L_3BB3+1
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
L_2847           lda L_4409
                 rts
                 sta $507D
                 lda #$07
                 jsr L_2A0F+1
                 rts
L_2854           bvs L_2856+1
L_2856           sta L_2854
                 jsr L_3D02+1
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
                 sta L_46F3
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
                 sta L_2DFE+2
                 lda #$00
                 sta L_2E01
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
                 jmp L_4519+2
L_28CC           lda L_46D8
                 cmp #$01
                 beq L_28D6
                 jmp L_4911
L_28D6           lda L_4608,x
                 and #$03
                 cmp #$03
                 beq L_28E2
                 jmp L_4918
L_28E2           jmp L_491D
L_28E5           lda L_46D8
                 cmp #$08
                 beq L_28EF
                 jmp L_493C
L_28EF           lda L_460B,x
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
L_292C           ldx #$00
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
                 lda L_4A00
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
                 eor ICHIDZ
                 nop COLRSH,x
                 jsr L_4E55
                 jmp L_434E+1
                 alr #$3F
L_2A0F           shs $52AD,y
                 and $D0
                 ora OPSTKX
                 aso ICHIDZ
                 brk
                 and FKDEF
                 brk
                 brk
                 brk
                 brk
L_2A1F           brk
L_2A20           ldy #$00
                 ldx #$00
L_2A24           lda L_4C41,y
L_2A27           beq L_2A47
                 sta FRE+5
                 lda L_4C40,y
                 sta FRE+4
                 lda L_4C43,y
                 sta FRE+2
                 sty L_2A1F
                 ldy #$00
                 lda FRE+2
                 sta (FRE+4),y
                 iny
                 clc
                 adc #$01
                 sta (FRE+4),y
                 ldy L_2A1F
L_2A47           inx
                 iny
                 iny
                 iny
                 iny
                 cpx #$0F
                 bne L_2A24
                 jmp L_282D
L_2A53           jsr L_2812
                 jmp L_2C65
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
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
                 lda L_46F3
                 cmp #$02
L_2A9A           bcc L_2A9F
                 dec L_46F3
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
                 lda L_4608
                 rts
L_2AB8           sec
                 sbc #$17
                 sta FR2+4
                 lda L_4608
                 sec
                 sbc FR2+4
                 sta L_4608
                 rts
L_2AC7           jsr L_3BB3+1
                 lda #$05
                 jmp L_2500
                 brk
L_2AD0           sta COLOR4
                 lda #$40
                 sta POKMSK
                 sta IRQEN
                 rts
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_2AE2           brk
                 brk
                 brk
                 lda L_2AE2,x
                 cmp #$14
                 bpl L_2AEF
                 inc L_2AE2,x
L_2AEF           rts
                 lda #$00
                 sta L_2AE2,x
                 brk
                 brk
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_2C00           bpl L_2C13
                 cim
                 aso RTCLOK,x
                 bpl L_2C17
L_2C07           bpl L_2C29
                 adc (OLDCOL+1),y
                 ldx #$00
L_2C0D           lda $9F67,x
                 cmp L_2C00,x
L_2C13           beq L_2C19
                 bmi L_2C2E
L_2C17           bcs L_2C1E
L_2C19           inx
                 cpx #$06
                 bne L_2C0D
L_2C1E           ldx #$00
L_2C20           lda $9F67,x
                 sta $9F71,x
                 sta L_2C00,x
L_2C29           inx
                 cpx #$06
L_2C2C           bne L_2C20
L_2C2E           rts
L_2C2F           ldx L_367F
                 stx L_3535+1
                 lda L_3527+1,x
                 sta FRE+2
                 lda L_3527+2,x
                 sta FRE+3
                 ldy #$00
                 lda #$04
                 sta (FRE+2),y
                 lda L_367F+1
                 clc
                 adc #$11
                 sta $9DB6
                 lda L_28A3
                 clc
                 adc #$11
                 sta $9E06
                 rts
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_2C60           brk
L_2C61           brk
L_2C62           brk
                 brk
                 brk
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_2CAB           lda FR2+4
                 jmp L_2856
                 lda L_4E03
                 cmp #$01
                 bne L_2CC2
                 lda #$04
                 sta L_46F3
                 sta L_46F3+1
                 sta L_46F5
L_2CC2           lda $7FFE
                 sta L_4E03
                 rts
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_2CD0           jsr L_2CF6
                 cmp #$20
                 beq L_2CE0
                 jsr L_2CAB
                 ldx L_46D4
                 jmp L_494D
L_2CE0           jmp L_4930
L_2CE3           jsr L_2CF6
                 cmp #$20
                 beq L_2CF3
                 jsr L_2CAB
                 ldx L_46D4
                 jmp L_4920
L_2CF3           jmp L_4905
L_2CF6           sta FR2+4
                 lda L_4000
                 rts
                 brk
                 brk
                 brk
                 brk
L_2D00           lda #$04
                 sta L_23F0
                 lda #$00
                 sta L_2E04
                 sta L_23F0+1
                 sta L_23F2
                 sta L_23F3
                 sta L_2E02
                 sta L_2E03
                 lda L_4000
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
L_2D62           sta L_23F6+2,x
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
                 jmp L_31EF+1
L_2D8A           dec L_1F0A
L_2D8D           ldx #$2C
                 lda #$7D
                 jsr L_31AF+1
                 jsr L_3037
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
                 bit L_238F
                 bvc L_2DC3
                 lda #$B2
                 ldy #$23
L_2DC3           sta B0_ICBAL,x
                 tya
                 sta B0_ICBAH,x
                 jsr L_31E8+1
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
                 sta L_2E02,x
                 jmp L_2E05
                 aso (ERRNUM,x)
                 pha
                 aso (CPC,x)
                 pha
                 aso (ERRNUM,x)
                 eor #$03
                 sta B0_ICBLH,x
                 jsr L_2609+1
L_2DFB           and IOCMD
L_2DFE           ins FMSZPG+4,x
L_2E01           brk
L_2E02           brk
L_2E03           brk
L_2E04           brk
L_2E05           lda L_2E02
                 clc
                 adc L_2E03
                 beq L_2E13
                 lda #$00
                 sta L_2DFE+2
L_2E13           cmp #$02
                 bne L_2E1A
                 jmp L_2FFD
L_2E1A           lda L_2E04
                 eor #$01
                 tax
                 stx L_2E04
                 lda L_367F+1
                 beq L_2E30
                 lda L_2E01
                 eor #$01
                 sta L_2E01
L_2E30           ldx #$00
                 ldy #$20
L_2E34           stx FRE+2
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
                 ldx L_31F3+1
                 ldy L_23F0
                 sty L_31F3+1
                 stx L_23F0
                 ldx L_4000
                 ldy L_23F0+1
                 sty L_4000
                 stx L_23F0+1
                 ldx L_3900
                 ldy L_23F2
                 sty L_3900
                 stx L_23F2
                 ldx #$00
L_2EA2           lda L_23F6+2,x
                 sta FPTR2+1
                 lda $9F67,x
                 sta L_23F6+2,x
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
                 lda L_4000
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
                 lda L_4000
                 cmp #$20
                 bne L_2F24
                 ldx #$00
                 jsr L_401A
L_2F21           jsr L_1503
L_2F24           jsr L_43D5
                 lda #$03
                 sta GRACTL
                 lda #$2E
                 sta SDMCTL
L_2F31           jsr L_2B03
                 jmp L_3A4C
L_2F37           jsr L_2C65
                 jmp L_2809
                 brk
                 brk
                 brk
                 brk
                 cpy #$30
                 ins L_4945+1,x
                 lsr L_220C
                 rol L_39BF+1
                 ins L_4E4F,x
                 eor FMSZPG+1
                 eor COLCRS+1
                 ora #$34
                 rol L_4EBE+2
                 brk
                 cim
                 cim
                 cim
                 php
                 rol ICIDNO,x
                 cpy #$00
                 ins $5242,x
                 php
                 lsr ICIDNO,x
                 cpy #$56
                 ins $5753,x
                 ora #$94
                 rol $67C0
                 brk
                 eor (FMSZPG+5,x)
                 and (BOOT),y
                 stx ICIDNO,y
                 cpy #$00
                 ins L_4840+1,x
                 cim
                 php
                 tax
                 rol $78C0
                 brk
                 eor $0831
                 lda ICIDNO,x
                 cpy #$00
                 ins L_324D,x
                 aso STOPLN
                 rol $80C0
                 ins DSTAT,x
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_2FA0           sta SIZEP0
                 sta L_2C60
                 sta L_2C61
                 sta L_2C62
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
L_2FE0           lda L_4000
                 cmp #$20
                 bne L_2FE8
                 rts
L_2FE8           ldx #$C0
                 ldy #$89
                 jmp L_2B07
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_2FFD           jmp L_33C7
L_3000           jmp L_2A20
                 brk
                 brk
                 brk
                 brk
                 brk
L_3008           brk
                 brk
                 bvc L_3070
L_300C           nop #$7F
                 sbc FR1+4
L_3010           rts
                 rol LNFLG
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 dey
                 cpy $FC82
                 rol L_4C2E
                 dey
                 brk
                 brk
                 brk
                 brk
L_3025           brk
                 brk
                 brk
                 aso DSKUTL+1,x
                 ora LNFLG,x
                 nop !
                 aso L_1D1F,y
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_3037           bvs L_3069
                 bvs L_303B
L_303B           bne L_300C+1
                 bcs L_30AE+1
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 jsr $8060
L_3049           cpx #$E1
                 nop ICHIDZ
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 php
                 nop VSEROC
                 asl L_4C2E
                 dey
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora (ICCOMT,x)
                 aso DSKUTL+1,x
                 adc L_1C1D,x
L_3069           aso L_191E+1,y
                 brk
                 brk
                 brk
                 brk
L_3070           brk
                 brk
                 rts
L_3073           bvs L_3025
                 beq L_3073
                 bne L_3049
                 bcs L_30EA+1
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 cim
                 rts
                 nop #$E0
                 cpx #$64
                 nop ICPTLZ
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 php
                 nop $060E
                 asl
                 rol $8C4E
                 php
                 brk
                 brk
                 brk
                 ora (CASINI+1,x)
                 aso BUFADR+1,x
                 bpl L_30BE+1
                 adc L_1B1B+2,x
                 aso L_1B19,y
                 brk
                 brk
                 brk
                 jsr $7060
L_30AE           jsr $7030
                 sei
                 eor $D0,x
                 bcc L_30E6
                 bvs L_30B8
L_30B8           brk
                 cpy #$C0
                 nop #$00
                 rti
L_30BE           cpy #$80
                 rti
                 cmp (IODVC,x)
                 bcc L_30C5
L_30C5           brk
                 brk
                 brk
                 php
                 nop RAMLO
                 php
                 nop RAMLO
                 php
                 bit $040C
                 brk
                 aso $080F
                 brk
                 brk
                 and (ICDNOZ,x)
                 ora (DSKFMS),y
                 asl L_1C1D+1,x
                 brk
                 brk
                 brk
                 brk
                 rts
L_30E6           bvs L_3118
                 bmi L_30F8+2
L_30EA           nop #$B0
                 cim
                 escape #$92
                 cim
                 cim
                 brk
                 brk
                 bmi L_3125
                 jsr L_3010
L_30F8           jsr L_403F+1
                 jsr L_405E+2
                 brk
                 brk
L_3100           brk
                 brk
                 brk
                 brk
                 php
                 nop RAMLO
                 sty $6428
                 cpy #$08
                 plp
                 php
                 nop RAMLO
                 brk
                 asl CMCMD
                 brk
                 rti
                 eor (LNFLG,x)
L_3118           nop TRAMSZ
                 aso CMCMD
                 cim
                 brk
                 brk
                 brk
                 brk
                 rti
                 ldy L_1070
L_3125           brk
                 brk
                 nop LNFLG
                 brk
                 brk
                 brk
                 nop RTCLOK+2
                 jsr $0800
                 bpl L_3133
L_3133           bpl L_313D
                 bpl L_3137
L_3137           rti
                 jsr L_403F+1
                 brk
                 brk
L_313D           brk
                 brk
                 nop RAMLO
                 cim
                 brk
                 nop LNFLG
                 cim
                 brk
                 nop TRAMSZ
                 brk
                 cim
                 brk
                 brk
                 nop LNFLG
                 brk
                 brk
                 nop TRAMSZ
                 brk
                 cim
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ldy #$80
                 plp
                 dey
                 nop #$40
                 bpl L_3194
                 brk
                 nop #$80
                 bpl L_3169
L_3169           brk
                 brk
                 brk
                 brk
                 jsr FREQ
                 bpl L_3191+1
                 brk
                 rti
                 rti
L_3175           nop #$00
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 php
                 brk
                 php
                 brk
                 bpl L_3184
L_3184           brk
                 php
                 brk
                 nop LNFLG
                 asl
                 brk
                 brk
                 cim
                 php
                 nop LNFLG
                 brk
L_3191           nop LNFLG
                 brk
L_3194           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 bvc L_319E
L_319E           brk
                 brk
                 jsr LNFLG
                 bpl L_31A5
L_31A5           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 php
                 brk
                 brk
L_31AF           nop LNFLG
                 brk
                 bpl L_31B4
L_31B4           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 php
                 brk
                 brk
                 bpl L_31C2
L_31C2           brk
                 php
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
                 brk
                 ora (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 bpl L_321C
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_31E2           bpl L_320A+1
                 and (ICSPRZ+1,x)
                 and LNFLG
L_31E8           rla L_2536
                 cim
                 brk
                 bmi L_3219+2
L_31EF           and (RECVDN,x)
                 and BUFRLO
L_31F3           ora (RAMLO,x)
                 brk
                 pha
                 lda #$01
                 sta L_31F3
                 pla
                 jmp XITVBV
L_3200           lda #$0F
                 sta GRACTL
                 ldx #$00
                 stx L_31F3
L_320A           stx HPOSP0
                 stx HPOSP1
                 stx HPOSP2
                 stx HPOSP3
                 stx HPOSM0
L_3219           stx HPOSM1
L_321C           stx HPOSM2
                 stx HPOSM3
                 txa
L_3223           sta $6C00,x
                 sta $6D00,x
                 sta $6E00,x
                 sta $6F00,x
                 inx
                 bne L_3223
                 lda #$01
L_3234           sta GPRIOR
                 ldx #$3E
                 ldy #$03
                 lda #$68
                 sta PMBASE
                 stx SDMCTL
                 sty GRACTL
                 lda #$00
                 sta FPTR2+1
L_324A           sta L_31F3
L_324D           lda #$07
                 ldy #$F6
L_3251           ldx #$31
                 jsr L_1F00
L_3256           lda L_31F3
                 beq L_3256
                 lda L_4409
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
                 sta L_4409
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
L_3303           sta $57B2
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
L_3325           ldy #$9B
                 stx FRE+4
                 sty FRE+5
                 ldx #$00
L_332D           ldy #$00
L_332F           lda (FRE+2),y
L_3331           sta (FRE+4),y
                 iny
                 cpy #$1A
                 bne L_332F
L_3338           lda FRE+4
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
L_3353           lda L_31F3+1
                 beq L_33C7
                 dec L_31F3+1
                 lda #$00
                 sta SDMCTL
                 lda #$DE
                 sta L_332F+1
                 lda #$DC
                 sta L_3331+1
                 jsr L_331B
                 lda L_2DFE+2
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
                 lda L_4000
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
L_33D6           lda L_31E2+1,x
                 sta $9F6C,x
                 inx
                 cpx #$10
                 bne L_33D6
                 lda L_2E04
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
                 lda L_2DFE+2
                 bne L_3409
                 jmp L_3500
L_3409           jmp L_2DDF+1
                 brk
                 brk
                 brk
                 brk
                 nop L_1BC0,x
                 ora (BOOT,x)
                 ora #$44
                 nop #$00
                 ins L_4358,x
                 lse $8108
                 rol IOCMD,x
                 ora #$FF
                 eor TMPCHR
L_3425           php
                 aso (BFENHI,x)
                 cpy #$42
                 brk
L_342B           nop DSTAT
                 ora #$23
L_342F           and IOCMD,x
                 sax LNFLG
                 lse (COLRSH,x)
                 jmp L_270C
                 and IOCMD,x
                 ldx LNFLG,y
                 alr #$45
                 eor L_4143+1,y
                 nop DOSVEC,x
                 rol BFENHI,x
                 cpy #$74
                 brk
                 jmp $5341
                 nop DOSVEC,x
                 rla BFENHI,x
                 cpy #$38
                 ins L_4552+2,x
                 cli
                 nop DOSINI,x
                 rra $C036,x
                 lsr L_4400
                 eor COLCRS+1
                 nop SAVMSC+1,x
                 bvc L_346F
                 nop #$36
                 cpy #$D9
                 brk
                 nop FMSZPG+2
                 lsr DRKMSK,x
                 eor ATRACT,x
                 php
L_346F           nop #$36
                 cpy #$6B
                 brk
                 bvc L_34C9+1
                 ora #$47
                 rla IOCMD,x
                 cim
                 ins L_4151+1,x
                 lse (BOOT),y
                 sbc (LTEMP),y
                 cpy #$91
                 brk
                 bvc L_34DB
                 cim
                 ora #$F3
                 rol IOCMD,x
                 lda (LNFLG,x)
                 jmp $5345
                 asl
                 aso (LTEMP+1,x)
                 cpy #$7D
                 ins L_454C+2,x
                 lse ROWCRS,x
                 asl
                 nop $C037,x
                 lsr L_43FF
                 lse $544E
                 php
                 asl $C037
                 nop #$00
                 bvc L_3500
                 php
                 ora $C037,y
                 sta L_49FF,y
                 eor L_2609+1
                 rla IOCMD,x
                 inc FPTR2+1,x
                 jmp L_4F4E+1
                 bvc L_34CB
                 ldx LTEMP+1,y
                 cpy #$AB
                 ins $5453,x
                 eor (LMARGN,x)
L_34C9           nop BOOT,x
L_34CB           jmp $C037
                 lax L_4AFF+1,y
                 eor SAVMSC+1
                 php
                 eor LTEMP+1,x
                 cpy #$45
                 ins L_324A+1,x
L_34DB           ora #$71
                 rla IOCMD,x
                 dcm FPTR2+1
                 eor (LMARGN,x)
                 bvc L_34EE
                 nop LTEMP+1
                 cpy #$D0
                 ins $554F,x
                 nop BOOT,x
L_34EE           anx #$37
                 cpy #$0A
                 ins L_4544,x
                 lsr WARMST,x
                 dcm (LTEMP+1),y
                 cpy #$4E
                 ins $5050,x
                 nop #$DA
L_3500           jmp L_2AA0
                 bvs L_3573+2
                 bvs L_3549
                 rti
                 shy VPRCED,x
                 cim
                 cim
                 cim
                 cim
                 cim
                 cim
L_3511           cim
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
                 eor (CASINI+1,x)
L_3522           and TRAMSZ,x
                 nop $080A
L_3527           rla $9CC4,x
                 ora (RTCLOK+2,x)
                 sta $6405,x
L_352F           sta $B412,x
                 sta $040A,x
L_3535           shx CASINI+1,y
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 rla (ICBAHZ),y
                 bit L_2323+2
                 nop LNFLG,x
                 and L_352F,y
L_3549           cim
                 brk
                 and #$2E
                 bmi L_3584
                 nop LNFLG,x
                 bit ICBAHZ
                 rol ICBLHZ,x
                 rla (ICBAHZ,x)
                 rla $0A0A,y
                 asl
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 and (BFENLO,x)
                 and (BUFRLO,x)
                 and #$00
                 bmi L_3592
                 bit ICBALZ
L_3573           bit L_3325
                 rla $0A0A,y
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_3584           brk
                 brk
                 brk
                 rol
                 rla L_3338+1
                 nop ICBLHZ,x
                 rla (ICAX2Z,x)
                 rla $0A0A,y
L_3592           brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 anc #$25
                 and L_2F21+1,y
                 and (BUFRLO,x)
                 bit CHKSNT
                 asl
                 asl
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora (LNFLG),y
                 rla (CIOCHR,x)
                 rol L_3234
                 rla L_2C2C
                 and BUFRLO
                 rla $0A0A,y
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora (LNFLG),y
                 bmi L_3605+1
                 and (RECVDN,x)
                 and BUFRLO
                 brk
                 and L_242F
                 and CHKSNT
                 asl
                 asl
                 asl
                 brk
                 brk
                 brk
                 brk
                 rla (ICBAHZ),y
                 bit L_2323+2
                 nop LNFLG,x
                 rla L_342F+1
                 and #$2F
                 rol L_3500
                 rla (ICBLHZ),y
                 rol ICPTHZ
                 rol ICBLHZ
                 cim
                 rla (BFENLO),y
                 brk
L_3605           bit L_3425
                 nop ICBAHZ,x
                 cim
                 rla $0A0A,y
                 brk
                 brk
                 brk
                 brk
                 rol ICBLHZ
                 cim
                 and LNFLG
                 cim
                 and BFENLO,x
                 nop CIOCHR,x
                 rol L_3303
                 nop ICDNOZ,x
                 cim
                 nop LNFLG,x
                 anc #$25
                 and L_21FF+1,y
                 and ICPTHZ
                 and #$2E
                 rla (LNFLG),y
                 rla ICDNOZ
                 and L_3B23+2
                 asl
                 asl
                 asl
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 ora (LNFLG,x)
                 nop ICDNOZ,x
                 and #$34
                 rla L_1100
                 ora L_1718,y
                 brk
                 ora (LNFLG,x)
                 and #$2D
                 and (ICPTHZ,x)
                 and #$2E
                 and LNFLG
                 ora (DSKFMS+1),y
                 clc
                 aso CHKSNT,x
                 asl
                 asl
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 rla (CIOCHR,x)
                 bit ICBAHZ
                 bit LNFLG
                 cim
                 and L_2D00,y
                 and #$2B
                 and LNFLG
                 plp
                 and BFENLO,x
                 rla (ICBLLZ,x)
                 and #$2E
                 rla (CIOCHR),y
                 rol $0B3B
L_367F           aso (LNFLG,x)
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
                 sta L_3535+1
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
                 lda L_3522+1,x
                 sta WSYNC
                 sta COLOR1
                 sta COLPF1
                 jmp L_2A60
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 pha
                 txa
                 pha
                 tya
                 pha
                 ldx #$00
                 ldy #$00
                 lda CH
                 sta FPTR2+1
L_3758           lda L_3527,y
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
L_3774           lda L_3527+1,y
                 sta FRX
                 lda L_3527+2,y
                 sta EEXP
                 sty NSIGN
                 ldy L_3535+1
                 lda L_3527+1,y
                 sta FR2+4
                 lda L_3527+2,y
                 sta FR2+5
                 lda NSIGN
                 sta L_3535+1
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
                 sty L_367F
                 jmp L_3767
L_37AE           cmp #$0A
                 bne L_37BD
                 lda L_28A3
                 eor #$01
                 sta L_28A3
                 jmp L_37C5
L_37BD           lda L_367F+1
                 eor #$01
                 sta L_367F+1
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
                 stx L_3900
                 stx L_4000
                 lda #$10
L_37ED           sta $8F00,x
                 inx
                 cpx #$06
                 bne L_37ED
                 lda #$04
                 sta ATRACT
                 sta L_31F3+1
                 jmp L_28A4
                 brk
                 lda $5076
                 bne L_3814
                 lda $5077
                 bne L_3814
                 lda L_460B
                 cmp #$6A
                 bcc L_3814
                 jmp L_3000
L_3814           ldx L_4000
                 lda L_3900
                 cmp $8FC0,x
                 beq L_3822
                 jmp L_4519+2
L_3822           inc L_4000
                 lda #$00
                 sta L_3900
                 sta FRE+3
L_382C           ldx #$00
L_382E           ldy #$00
L_3830           iny
                 bne L_3830
                 inx
                 bne L_382E
                 inc FRE+3
L_3838           lda FRE+3
                 cmp #$02
                 bne L_382C
                 ldx #$00
L_3840           lda $9F67,x
                 sta $8F00,x
                 inx
                 cpx #$06
                 bne L_3840
                 jmp L_2894
                 eor L_424E+1,y
                 php
                 nop !
                 lse (IOCMD),y
                 nop $5301
                 pha
                 php
                 sha (ROWCRS),y
                 cpy #$14
                 ora (RMARGN,x)
                 nop BOOT,x
                 and $C053
                 rol $5301
                 lse $094E
                 cim
                 lse (IOCMD),y
                 rol NGFLAG
                 lse (FMSZPG+5,x)
                 alr #$08
                 rla $C053,x
                 lse (NGFLAG),y
                 lse (DSTAT,x)
                 asl
                 ror $C053
                 lse $5301,y
                 eor FMSZPG+2
                 lsr $7308
                 lse (IOCMD),y
                 sec
                 ins L_4748+1,x
                 ora #$9F
                 lse (IOCMD),y
                 adc NGFLAG
                 cim
                 eor ATRACT
                 asl
                 adc $C053,y
                 adc L_4200+1
                 eor (FMSZPG,x)
                 alr #$08
                 sty RMARGN,x
                 cpy #$25
                 cim
                 lse (FMSZPG+5,x)
                 asl
                 sta RMARGN,x
                 cpy #$BD
                 ora (RMARGN,x)
                 nop COLRSH,x
                 bvc L_38BB
                 tax
                 lse (IOCMD),y
                 pha
                 ins L_3251+1,x
                 php
L_38BB           lda (RMARGN),y
                 cpy #$7F
                 ora (CRITIC,x)
                 and (DOSVEC),y
                 lax ROWCRS,x
                 cpy #$75
                 ins L_4C47,x
                 eor #$53
                 php
                 clv
                 lse (IOCMD),y
                 sax NGFLAG
                 cim
                 cim
                 php
                 lax $C053,y
                 sax L_4200+1
                 rla (WARMST),y
                 dec RMARGN
                 cpy #$97
                 ora (CRITIC,x)
                 nop DOSVEC,x
                 asl ROWCRS
                 cpy #$13
                 cim
                 cim
                 lse L_4D4E+1
                 anc #$DB
                 lse (IOCMD),y
                 nop CASINI,x
                 brk
                 eor (ROWCRS,x)
                 pha
                 php
                 cld
                 lse (IOCMD),y
                 ldy $55FF
L_3900           brk
L_3901           brk
L_3902           plp
L_3903           ldy #$0B
                 bcs L_3912
                 cpy #$0B
                 bne L_3916
                 bvc L_3912
                 rts
                 aso ROWAC
                 aso LOMEM
L_3912           aso FR1
                 ora #$F0
L_3916           ora #$10
                 php
                 jsr L_3008
                 php
                 rti
                 ora TOPSTK
                 nop $0A00
L_3923           sta L_39B0
                 stx L_3901
                 sty L_3902
                 lda CASINI+1
                 clc
                 asl
L_3930           tax
                 lda (FRE+4),y
                 cmp #$05
                 beq L_3985
L_3937           cmp #$06
                 beq L_3985
                 cmp #$07
                 beq L_398B
                 cmp #$08
                 beq L_398B
                 and #$80
                 beq L_3948
                 inx
L_3948           lda L_3C22
L_394B           sta L_3954+1
                 lda L_3C23
                 sta L_3954+2
L_3954           lda $7B4C,x
L_3957           and #$F0
                 ldx #$00
L_395B           cmp L_3903,x
                 beq L_3969
                 inx
                 inx
                 cpx #$20
                 bne L_395B
                 jmp L_397B
L_3969           inx
                 lda L_3903,x
                 tay
L_396E           cpy #$00
                 beq L_397B
                 ldx #$01
                 jsr L_3BB3+1
                 dey
                 jmp L_396E
L_397B           lda L_39B0
                 ldx L_3901
                 jsr L_39A9
                 rts
L_3985           lda COLOR0
                 jmp L_3957
L_398B           lda COLOR1
                 jmp L_3957
                 sta L_39B0
                 stx L_3901
                 sty L_3902
                 lda $507B,x
                 and #$FC
                 lsr
                 lsr
                 clc
                 asl
                 sec
                 sbc #$06
                 jmp L_3930
L_39A9           ldy L_3902
                 inc L_3900
                 rts
L_39B0           nop CASINI
                 ins $504C,x
                 nop WARMST,x
                 lse (BUFRHI),y
                 cpy #$39
                 ins $5243,x
                 asl
L_39BF           aso $C033,y
L_39C2           bvc L_39C2+1
                 cim
                 cim
                 eor #$4B
                 ora #$2D
                 rla (IOCMD),y
                 cpy #$FF
                 cim
                 eor BUFRLO
                 ora #$2F
                 rla (IOCMD),y
                 lda $5300,x
                 nop CHKSUM,x
                 ora #$31
                 rla (IOCMD),y
                 cpy #$FF
                 lse (ROWCRS),y
                 cim
                 php
                 lse (BUFRHI,x)
                 cpy #$E0
                 brk
                 eor (CRITIC,x)
                 ora #$4D
                 rla (IOCMD),y
                 sbc (LNFLG),y
                 lse (SOUNDR,x)
                 cim
                 ora #$B2
                 rla (IOCMD),y
                 brk
                 brk
                 eor DRKMSK
                 nop BOOT
L_39FE           rra L_2032+1
                 jsr L_201F+1
                 jsr L_2F31+1
                 and ICIDNO,x
                 bit ICHIDZ
                 jsr L_201F+1
                 cim
                 and ICDNOZ
                 bit RECVDN
L_3A13           rla L_3511,y
                 bmi L_3A38
                 bpl L_3A28+2
                 bpl L_3A2B+1
                 bpl L_3A2D+1
                 jsr L_2926+2
                 jsr L_1010
                 bpl L_3A36
                 bpl L_3A38
L_3A28           jsr L_292C
L_3A2B           rol ICBAHZ
L_3A2D           jsr L_2014
                 cim
                 rla L_2E34+1
                 bit ICHIDZ
L_3A36           ora (ICHIDZ),y
L_3A38           jsr $0411
L_3A3B           brk
L_3A3C           jsr L_3B67
                 cmp #$20
                 bne L_3A49
                 jsr L_1503
                 jmp L_3A4C
L_3A49           jsr L_400F
L_3A4C           ldx #$00
L_3A4E           lda L_39FE+2,x
                 sta $9F6A,x
                 inx
                 cpx #$0E
                 bne L_3A4E
                 lda L_4000
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
L_3AC2           lda L_39FE+2,y
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
L_3AE6           lda L_3A13+1,x
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
                 sta L_4A02
L_3B23           sta L_3A3B
                 lda #$02
                 sta L_4E03
                 ldx #$00
L_3B2D           lda $8F00,x
                 sta $9F67,x
                 lda L_2C00,x
                 sta $9F71,x
                 inx
                 cpx #$06
                 bne L_3B2D
                 lda L_31F3+1
                 clc
                 adc #$10
                 sta $9F7D
                 lda L_2E04
                 clc
                 adc #$11
                 sta $9F63
                 lda L_4000
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
                 lda L_4000
                 rts
                 eor DINDEX
                 nop FMSZPG+2
                 lsr DOSVEC
                 bpl L_3BC8+2
                 cpy #$41
                 ins L_454C+2,x
                 lse FMSZPG+3,x
                 asl
                 nop !
                 cim
                 cpy #$04
                 aso (FMSZPG+3,x)
                 cim
                 eor FMSZPG+1
                 php
                 brk
                 lse IOCMD,x
                 ror FPTR2+1,x
                 lsr LMARGN
                 php
                 nop DINDEX,x
                 cpy #$09
                 ins $5442,x
                 ora #$19
                 lse IOCMD,x
                 nop FPTR2+1,x
                 lse FMSZPG+2
                 lse $6508
                 lse IOCMD,x
                 dcm $53FF,x
                 eor $8109
                 lse IOCMD,x
L_3BAE           rol $0503
L_3BB1           ora (NGFLAG,x)
L_3BB3           ora (STARP+1,x)
                 bcs L_3BF2
                 stx L_3BB1
                 sty L_3BB1+1
                 txa
                 sta L_3BB3
                 lda #$06
                 sec
                 sbc L_3BB3
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
L_3BE9           ldx L_3BB1
                 ldy L_3BB1+1
                 lda L_3BAE+2
L_3BF2           rts
                 rla (DOSVEC),y
                 asl $C03E
                 arr #$02
                 eor TMPCHR,x
                 lse (FMSZPG+5,x)
                 nop $C44F
                 brk
                 shs $8484,y
                 sty VNTD
                 sty VNTD
                 sty VNTD
                 sty VNTD
                 sty VNTD
                 sty VNTD
                 sty VNTD
                 sty VNTD
                 sty VNTD
                 sty VNTD
                 sty VNTD
                 sty RAMLO
                 sty CASINI
                 eor (LNFLG,x)
                 cim
L_3C22           brk
L_3C23           brk
L_3C24           brk
L_3C25           brk
L_3C26           lda SDLSTH
                 cmp #$3C
                 beq L_3C66
                 ldx #$00
                 ldy #$3C
                 stx SDLSTL
                 sty SDLSTH
                 ldx #$00
                 ldy #$7B
                 stx L_3C22
L_3C3E           sty L_3C23
                 stx L_3C24
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
L_3C78           lda L_3C24
                 tay
                 clc
                 adc #$02
                 sta L_3C24
                 ldx L_3C22
                 lda L_3C23
                 stx FRE
                 sta FRE+1
                 cpy #$30
                 beq L_3CC5
                 cpy #$34
L_3C92           beq L_3CD8
                 lda (FRE),y
                 sta COLPF2
                 iny
                 lda (FRE),y
                 sta COLPF3
                 dey
                 cpy #$00
                 bne L_3CA7
                 sty L_3C25
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
                 inc L_3C25
                 jmp L_3CAB
L_3CD0           lda #$00
                 sta COLPF2
                 jmp L_3CAB
L_3CD8           lda #$0F
                 sta COLPF0
                 sta COLPF1
                 lda #$00
                 sta L_3C24
                 lda #$8C
                 sta CHBASE
                 jmp L_3CAB
                 jmp L_3CAB
                 nop LNFLG,x
L_3CF3           lda #$00
                 sta SHFLOK
                 lda SKSTAT
                 rts
                 brk
                 brk
                 brk
                 brk
L_3D00           nop ICBLLZ
L_3D02           bvs L_3C92
                 brk
                 and $018C,x
                 and JVECK+1,x
                 and $69C9,x
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
L_3D25           ldx L_3D00
                 ldy L_3D00+1
                 lda L_3D02
                 rts
                 lda $57B0,x
                 and #$02
                 lsr
                 sta $57E4
                 lda $57B0,x
                 clc
L_3D3C           asl
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
L_3D5B           inc $57E4
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
L_3DAB           brk
                 brk
                 brk
L_3DAE           brk
                 brk
                 brk
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
                 sta L_3DAE,x
                 lda $5C6F
                 sta FRE+4
                 jsr L_3F93
                 lda FRE+4
                 sta $5C6F
                 lda L_4000
                 and #$03
                 tay
                 lda L_3DE9,y
                 sta $57BC,x
                 rts
L_3DE9           cim
                 aso (NGFLAG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
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
L_3E3D           lda FRE+3
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
L_3F3D           and #$03
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_4000           brk
L_4001           ora LNFLG
L_4004           brk
                 aso RAMLO+1
                 aso (LNFLG,x)
                 sax (CPC,x)
                 ora (ICHIDZ,x)
                 clc
                 rti
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
                 sta L_46F3
                 sta L_46F3+1
                 sta L_46F5
                 lda #$1A
L_403F           sta L_4A03
                 ldx #$40
                 lda #$00
                 jsr L_4697
                 sta $5C70
                 sta L_4E04
L_404F           sta $5002
                 sta $5072
                 sta $5073
                 sta $5074
                 sta L_440B
L_405E           sta $5277
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
                 stx L_46C3+1
                 sty L_46C0+1
                 sty L_46C3
                 sty L_46C3+2
                 ldx #$09
                 stx L_46C6
                 stx L_46C6+1
                 stx L_46C8
                 ldx #$0E
                 ldy #$17
                 stx L_46F5+1
                 stx L_46F7
                 stx L_46F7+1
                 sty L_46F7+2
                 sty L_46FA
                 sty L_46FA+1
                 ldx #$01
                 stx L_46C8+1
                 stx L_46CA
                 stx L_46CA+1
                 stx $5075
                 dex
                 stx $5076
                 stx $5077
                 stx L_4608+1
                 stx L_460A
                 stx L_460B+1
                 stx L_460D
                 stx L_46D8+1
                 stx L_46DA
                 stx L_46DB
                 stx L_46DC
                 stx L_46DD
                 stx L_46DE
                 stx L_46DF
                 lda #$04
                 sta STICK0
                 ldx #$83
                 ldy #$62
                 stx L_4608
                 sty L_460B
                 ldx #$00
                 ldy #$03
                 jsr L_460E
                 ldx #$00
                 ldy #$02
                 jsr L_460E
                 lda #$88
                 sta CHBAS
                 jsr L_3C26
                 lda L_4000
                 and #$03
                 sta L_4001
                 ldx #$00
                 ldy #$90
                 stx FRE+2
                 sty FRE+3
L_412D           cpx L_4001
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
L_4151           stx FRE+2
                 sty FRE+3
                 lda #$38
                 sta FRE+4
                 ldx #$00
L_415B           ldy #$00
L_415D           stx L_4001
                 sty L_4001+1
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
                 ldx L_4001
                 ldy L_4001+1
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
                 lda L_4000
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
L_4200           sta (FRE+2),y
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
L_424E           sta FRE+2
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
                 sta L_4400,x
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
L_42D0           lda #$48
                 sta L_4406+2
                 sta L_4409
                 jsr L_287A
                 lda VCOUNT
                 and #$07
                 clc
                 adc #$03
                 sta L_4E00
                 lda L_4000
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
L_4309           cpx L_4000
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
L_431F           cpx L_4000
                 beq L_4344
                 ldy #$00
L_4326           lda (FRE+4),y
                 cmp #$FF
                 beq L_4330
                 iny
                 jmp L_4326
L_4330           iny
                 sty L_4001
                 lda FRE+4
                 clc
                 adc L_4001
                 sta FRE+4
                 bcc L_4340
                 inc FRE+5
L_4340           inx
L_4341           jmp L_431F
L_4344           ldx FRE+2
                 ldy FRE+3
                 stx L_3C22
                 sty L_3C23
L_434E           ldx #$30
                 ldy #$9B
                 stx FRE+2
                 sty FRE+3
                 ldx #$00
L_4358           stx L_4001+2
L_435B           ldy #$00
                 lda (FRE+4),y
                 cmp #$FF
                 beq L_43D4
                 sta L_4001
                 and #$1F
                 sta L_4001+1
                 tax
                 lda L_4001
                 and #$E0
                 lsr
                 lsr
                 lsr
                 lsr
                 lsr
                 tay
                 lda L_4004,y
                 sta L_4001+1
L_437D           ldy #$00
                 lda L_4001
                 and #$E0
                 beq L_4397
                 lda L_4001+1
                 sta (FRE+2),y
                 inc L_4001+1
                 iny
                 lda L_4001+1
                 sta (FRE+2),y
                 dec L_4001+1
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
                 lda L_4001
                 and #$1F
                 clc
                 adc L_4001+2
                 sta L_4001+2
                 cmp #$0D
                 bne L_435B
                 lda #$00
                 sta L_4001+2
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
L_43E5           cim
                 aso (NGFLAG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
L_43FF           brk
L_4400           rla L_3D3C,x
L_4403           rol L_3C3E+1,x
L_4406           and L_483D+1,x
L_4409           pha
L_440A           nop !
L_440B           brk
                 brk
                 brk
L_440E           and #$FC
                 lsr
                 lsr
                 lda L_440B
                 clc
                 adc #$80
                 sta FRE+3
                 lda L_440B
                 and #$07
                 clc
                 asl
                 asl
                 asl
                 asl
                 lda #$00
                 sta FRE+2
                 lda L_4409
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
L_4439           bcc L_443D
                 inc FRE+3
L_443D           ldx #$40
L_443F           ldy #$8A
                 stx LNFLG
                 sty NGFLAG
                 ldx #$00
L_4447           lda L_4400,x
                 and #$E0
                 lsr
                 lsr
                 lsr
                 lsr
                 lsr
                 clc
L_4452           adc #$88
                 sta CASINI+1
                 lda L_4400,x
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
L_448E           lda L_4409
                 sta L_4406+2
                 and #$FC
                 lsr
                 lsr
                 sta L_440A
                 ldx #$E8
                 ldy #$9E
                 stx FRE+4
                 sty FRE+5
                 lda FRE+4
                 clc
                 adc L_440A
                 sta FRE+4
                 bcc L_44AF
                 inc FRE+5
L_44AF           rts
L_44B0           ldy #$00
L_44B2           lda L_4406+2
                 cmp #$08
                 bcc L_44C2
                 cmp #$22
                 bcs L_44C2
                 lda L_4400,y
                 sta (FRE+4),y
L_44C2           inc L_4406+2
                 iny
                 cpy #$08
                 bne L_44B2
                 rts
L_44CB           lda L_4406+2
                 and #$FC
                 lsr
                 lsr
                 sta L_4406+2
                 ldx #$E8
                 ldy #$9E
                 stx FRE+4
                 sty FRE+5
                 lda FRE+4
                 clc
                 adc L_4406+2
                 sta FRE+4
                 bcc L_44E9
                 inc FRE+5
L_44E9           lda L_3C25
                 nop
                 nop
                 jmp L_44B0
L_44F1           jsr L_448E
                 ldy #$00
L_44F6           lda L_440A
                 cmp #$08
                 bcc L_450C
                 cmp #$22
                 bcs L_450C
                 lda (FRE+4),y
                 sta L_4400,y
                 tya
                 clc
                 adc #$48
                 sta (FRE+4),y
L_450C           inc L_440A
                 iny
                 cpy #$08
                 bne L_44F6
                 jmp L_454F
L_4517           ora (ICHIDZ,x)
L_4519           nop $AD40
                 bit NOCKSM
                 cmp #$1C
                 bmi L_4525
                 jsr L_46FC+1
L_4525           lda L_3C25
                 beq L_4519+2
                 jsr L_44CB
                 jsr $59C7
                 jsr L_44F1
                 jsr L_4EFA
                 jsr $5DE5
                 lda #$00
                 jsr L_4CD5+2
L_453E           jsr $8E7A
                 jsr $5003
L_4544           jsr L_2C07+1
                 jmp L_28BF
L_454A           inx
L_454B           php
L_454C           lse L_100A
L_454F           stx L_454A
L_4552           sty L_454B
                 sta L_454C
                 ldy #$0F
                 lda L_4A03
                 cmp #$1A
                 bne L_4563
                 ldy #$0A
L_4563           sty L_454C+1
                 ldy #$10
                 lda L_4A03
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
                 cmp L_4409
                 bcc L_45AE
                 lda $57B0,x
                 sec
                 sbc L_454C+2
                 cmp L_4409
                 bcs L_45AE
                 lda #$06
                 sta $5C69,x
                 ldx #$02
                 jsr L_3BB3+1
                 jsr L_2AC7
L_45AE           ldx L_454A
                 ldy L_454B
                 lda L_454C
                 jmp L_440E
                 lda STICK0
                 sta L_4517
                 cmp #$0B
                 bne L_45D0
                 dec L_4409
                 dec L_4409
                 dec L_4409
                 jmp L_45DD
L_45D0           cmp #$07
                 bne L_45DD
                 inc L_4409
                 inc L_4409
                 inc L_4409
L_45DD           rts
                 brk
                 brk
L_45E0           lda $5C69,x
                 cmp #$05
                 bne L_45FC
                 lda L_3D02
                 lda #$06
                 sta $5C69,x
                 lda #$04
                 sta $57BC,x
                 ldx #$02
                 jsr L_2824
                 jsr L_3BB3+1
L_45FC           jmp L_3D25
                 brk
L_4600           brk
                 brk
                 rti
                 ldy #$40
                 brk
                 brk
L_4607           brk
L_4608           sty LNFLG
L_460A           brk
L_460B           rra (LNFLG,x)
L_460D           brk
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
                 lda L_460B,x
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
                 sta L_460B,x
                 ldx #$00
L_464A           lda L_4600,x
L_464D           sta (FRE+4),y
                 iny
                 inx
                 cpx #$06
                 bne L_464A
                 rts
L_4656           ldx L_4607
                 jsr L_4670
                 sta HPOSP0,x
                 inc L_4608,x
                 rts
L_4663           ldx L_4607
                 jsr L_4670
                 sta HPOSP0,x
                 dec L_4608,x
                 rts
L_4670           lda L_4608,x
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
L_4683           nop
                 lda L_4000
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
                 lda L_4608
                 sec
                 sbc #$2C
                 sec
                 sbc L_4409
                 cmp #$0A
                 bpl L_46BD
                 sta FR2+4
                 lda #$0A
                 sec
                 sbc FR2+4
                 adc L_4608
                 sta L_4608
                 lda L_4608
                 rts
L_46BD           jmp L_2AB0
L_46C0           ldy $AC9E
L_46C3           shx $9EAC,y
L_46C6           ora #$09
L_46C8           ora #$01
L_46CA           ora (NGFLAG,x)
                 ora (LNFLG,x)
                 brk
                 brk
                 brk
                 ora (LNFLG,x)
                 cim
L_46D4           brk
L_46D5           brk
L_46D6           adc (CPC+1,x)
L_46D8           ora (LNFLG,x)
L_46DA           brk
L_46DB           brk
L_46DC           brk
L_46DD           brk
L_46DE           brk
L_46DF           brk
L_46E0           brk
                 cim
                 brk
                 ora (LNFLG,x)
                 brk
                 ora (LNFLG,x)
                 ora (LNFLG,x)
                 brk
                 brk
                 brk
                 ora (LNFLG,x)
                 cim
L_46F0           brk
                 brk
                 brk
L_46F3           asl TRAMSZ
L_46F5           asl APPMHI
L_46F7           asl L_170D+1
L_46FA           aso ICCOMT,x
L_46FC           ora (LELNUM+1,x)
                 nop $BD46,x
                 adc TMPCHR,x
                 bne L_4708
                 jmp L_48F7
L_4708           lda L_46F0,x
                 cmp L_46F3,x
                 bcs L_4716
                 inc L_46F0,x
                 jmp L_48F7
L_4716           lda #$00
                 sta L_46F0,x
                 lda L_3C25
                 txa
                 clc
                 asl
                 sta L_46D5
                 stx L_46D4
                 jsr L_4A04
                 jsr L_495D
                 beq L_474B
                 jmp L_4964
L_4732           and #$F3
                 ora #$08
                 jsr L_2FB0
                 lda L_4A02
                 cmp #$02
                 bne L_474B
                 lda L_46C6,x
                 and #$FC
L_4745           ora L_4A00+1
L_4748           sta L_46C6,x
L_474B           lda L_46C8+1,x
                 clc
                 asl
                 sta L_46DF
                 ldy L_46D5
L_4756           lda L_46C0,y
                 sta FRE+4
                 sta L_46D6
                 iny
                 lda L_46C0,y
                 sta FRE+5
                 sta L_46D6+1
                 ldy L_46DF
                 iny
                 lda L_46D8+1,x
                 cmp L_46E0,y
                 bcs L_4779
                 inc L_46D8+1,x
                 jmp L_4824
L_4779           lda #$00
                 sta L_46D8+1,x
                 lda L_46C6,x
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
                 ldx L_46D4
                 jsr L_460E
                 ldx L_46D4
                 ldy L_46D5
                 lda L_46D8
                 cmp #$08
                 beq L_4807
                 lda L_460B,x
                 and #$03
                 bne L_4824
                 inc L_46F7+2,x
                 ldx L_46D5
                 lda L_46D6
                 clc
                 adc #$28
                 sta L_46D6
                 bcc L_4824
                 inc L_46D6+1
                 jmp L_4824
L_4807           lda L_460B,x
                 and #$03
                 cmp #$03
                 bne L_4824
                 dec L_46F7+2,x
                 ldx L_46D5
                 lda L_46D6
                 sec
                 sbc #$28
                 sta L_46D6
                 bcs L_4824
                 dec L_46D6+1
L_4824           ldy L_46DF
                 ldx L_46D4
                 lda L_46DC,x
                 cmp L_46E0,y
                 bcs L_4838
                 inc L_46DC,x
                 jmp L_48E4
L_4838           lda #$00
                 sta L_46DC,x
L_483D           ldy L_46D5
L_4840           ldx L_46D4
                 lda L_46D6
                 sta FRE+4
                 iny
                 lda L_46D6+1
                 sta FRE+5
                 ldx L_46D4
                 lda L_46C6,x
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
                 ldx L_46D4
                 jsr L_460E
                 ldx L_46D4
                 lda L_46D8
                 cmp #$02
                 beq L_48CD
                 lda L_4608,x
                 and #$03
                 bne L_48E4
                 inc L_46F5+1,x
                 lda L_46D6
                 cmp #$FF
                 bne L_48C7
                 inc L_46D6+1
L_48C7           inc L_46D6
                 jmp L_48E4
L_48CD           lda L_4608,x
                 and #$03
                 cmp #$03
                 bne L_48E4
                 dec L_46F5+1,x
                 lda L_46D6
                 bne L_48E1
                 dec L_46D6+1
L_48E1           dec L_46D6
L_48E4           ldx L_46D4
                 ldy L_46D5
                 lda L_46D6
                 sta L_46C0,y
                 iny
                 lda L_46D6+1
                 sta L_46C0,y
L_48F7           ldx L_46FC
                 cpx #$02
                 bne L_4900
                 ldx #$FF
L_4900           inx
                 stx L_46FC
                 rts
L_4905           stx FRE+2
                 ldx L_46D4
                 jmp L_28CC
                 cmp #$02
                 bne L_491D
L_4911           lda L_4608,x
                 and #$03
                 beq L_491D
L_4918           ldx FRE+2
                 jmp L_48A1
L_491D           jmp L_1A60
L_4920           lda L_46C6,x
                 eor #$03
                 sta L_46C6,x
                 lda #$00
                 sta L_46DC,x
                 jmp L_48E4
L_4930           stx FRE+2
                 ldx L_46D4
                 jmp L_28E5
                 cmp #$04
                 bne L_494A
L_493C           lda L_460B,x
                 and #$03
                 cmp #$03
                 beq L_494A
L_4945           ldx FRE+2
                 jmp L_47D4
L_494A           jmp L_1A63
L_494D           lda L_46C6,x
                 eor #$0C
                 sta L_46C6,x
                 lda #$00
                 sta L_46DC,x
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
                 lda L_3A3B
                 bne L_499F
                 jmp L_4999
L_4992           ldx L_46D4
                 ldy L_46D5
                 rts
L_4999           lda L_46C6,x
                 jmp L_4732
L_499F           lda #$00
                 sta $5002
                 sta L_4E03
                 sta L_3A3B
                 jmp L_4999
L_49AD           lda L_3A3B
                 bne L_49B6
                 lda L_4A02
                 rts
L_49B6           lda #$01
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
L_49FF           brk
L_4A00           aso (FMSZPG,x)
L_4A02           brk
L_4A03           nop !
L_4A04           lda #$00
                 sta L_4A02
                 lda L_46C6,x
                 and #$0C
                 cmp #$08
                 beq L_4A1F
                 lda L_4608,x
                 sec
                 sbc #$2C
                 cmp L_4409
                 beq L_4A20
                 bpl L_4A20
L_4A1F           rts
L_4A20           sec
                 sbc L_4409
                 cmp L_4A03
                 beq L_4A2C
                 bmi L_4A2C
                 rts
L_4A2C           sta L_4A00
                 lda L_460B,x
                 cmp #$63
                 bmi L_4A1F
                 cmp #$66
                 bpl L_4A1F
                 lda L_4A03
                 cmp #$1E
                 beq L_4A4A
                 lda L_4A00
                 cmp #$06
                 beq L_4A4A
                 bmi L_4A1F
L_4A4A           ldy #$02
                 lda L_4A00
                 cmp #$11
                 beq L_4A56
                 bmi L_4A56
                 dey
L_4A56           sty L_4A02
                 lda L_46C6,x
                 and #$03
                 tay
                 lda #$01
                 cpy L_4A02
                 beq L_4A68
                 lda #$02
L_4A68           sta L_4A02
                 lda L_4A00
                 and #$FC
                 lsr
                 lsr
                 sta L_46C8+1,x
                 lda #$00
                 sta L_46D8+1,x
                 sta L_46D8+1,x
                 ldy #$01
                 lda L_4A00
                 cmp #$11
                 beq L_4A89
                 bpl L_4A89
                 iny
L_4A89           sty L_4A00+1
L_4A8C           rts
L_4A8D           sta L_4A00
                 sty L_4A02
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
L_4ACF           lda L_4A00+1
                 sta (FRE+4),y
                 iny
                 lda FPTR2+1
                 sta (FRE+4),y
                 jsr L_2F37
                 ldy L_4A02
                 rts
L_4AE0           lda #$00
                 sta CASINI+1
                 sta L_4A00+1
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
L_4AFF           bne L_4B0A
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
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
                 sty L_4CD5+1
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
                 sta $6F80,y
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
                 sta $7FFE
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
                 sta $6D80,y
                 iny
                 inx
                 cpx L_4E72
                 bne L_4ED8
                 ldx $7FFE
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
                 lda $5002
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
                 lda $7FFE
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
                 sta $6F80,y
                 cpx #$06
                 bcs L_4F61
L_4F5B           lda L_4E0D,x
                 sta $6D80,y
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
                 sta $6D80,y
                 sta $6F80,y
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
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
