
; BLOCK 1 stac_loader.xex

                 org $D800

                 brk
                 ora #$00
                 bcc L_D805
L_D805           nop DSKFMS
                 rts
L_D808           ldx #$F0
                 ldy #$D9
L_D80C           lda #$00
                 sta COLOR2
                 lda #$3A
                 sta COLOR0
                 stx SDLSTL
                 sty SDLSTH
L_D81C           lda #$FD
                 sta RTCLOK+2
L_D820           lda RTCLOK+2
                 bne L_D820
                 rts
                 clc
                 lda #$C0
                 sta RAMTOP
                 lda #$C8
                 sta BPTR
                 sta FTYPE
                 ldy DOSINI
                 sty BFENLO
                 nop #$D0
                 lax DOSINI+1,x
                 tya
                 ins CHLINK,x
                 sta FEOF
                 jsr L_D808
L_D841           jsr L_D921
                 bne L_D887
                 jsr L_D921
                 pha
                 jsr L_D921
                 tay
                 pla
                 bmi L_D857
                 jsr L_D8BA
                 jmp L_D841
L_D857           and #$7F
                 sta VNTP
                 sty LOMEM+1
                 jsr L_D921
                 bne L_D86B
                 clc
                 lda VNTP
                 adc VNTD
                 sta VNTD
                 bcc L_D898
L_D86B           ldy #$00
                 beq L_D876
L_D86F           sta (VNTP+1),y
                 iny
                 bne L_D86F
                 inc VNTD
L_D876           dec VNTP
                 bpl L_D86F
                 cpy LOMEM+1
                 beq L_D898
L_D87E           sta (VNTP+1),y
                 iny
                 cpy LOMEM+1
                 bne L_D87E
                 beq L_D898
L_D887           bpl L_D8A6
                 and #$7F
                 sta LOMEM+1
                 jsr L_D921
                 ldy LOMEM+1
                 dey
L_D893           sta (VNTP+1),y
                 dey
                 bpl L_D893
L_D898           clc
                 lda VNTP+1
                 adc LOMEM+1
                 sta VNTP+1
                 bcc L_D8A3
                 inc VNTD
L_D8A3           jmp L_D841
L_D8A6           sta LOMEM+1
                 ldy #$00
L_D8AA           sty LOMEM
                 jsr L_D921
                 ldy LOMEM
                 sta (VNTP+1),y
                 iny
                 cpy LOMEM+1
                 bne L_D8AA
                 beq L_D898
L_D8BA           sty LOMEM+1
                 sta VNTP
L_D8BE           jsr L_D921
                 ldy #$00
                 sta (VNTP+1),y
                 inc VNTP+1
                 bne L_D8CB
                 inc VNTD
L_D8CB           lda LOMEM+1
                 bne L_D8D1
                 dec VNTP
L_D8D1           dec LOMEM+1
                 lda VNTP
                 ora LOMEM+1
                 bne L_D8BE
                 rts
L_D8DA           lda #$3C
                 sta PACTL
                 ldx #$BC
                 ldy #$D9
                 jsr L_D80C
                 lda #$FD
                 ldx #$00
                 stx B0_ICBLL
                 stx B0_ICBLH
                 ldy #$09
L_D8F2           lda CONSOL
                 lsr
                 bcs L_D8F2
L_D8F8           lda CONSOL
                 lsr
                 bcc L_D8F8
                 lda #$34
                 sta PACTL
                 jsr L_D808
                 jsr L_D81C
                 jsr L_DAF1
                 ldy BFENLO
                 beq L_D8DA
L_D910           jsr L_DB08
                 tya
                 bmi L_D8DA
                 lda $03FF
                 beq L_D8DA
                 cmp BFENLO
                 bcc L_D910
                 bne L_D8DA
L_D921           ldx BPTR
                 cpx FTYPE
                 beq L_D92D
                 inc BPTR
                 lda $0400,x
                 rts
L_D92D           lda FEOF
                 bmi L_D973
                 jsr L_DB08
                 tya
                 bmi L_D8DA
                 ldy #$19
                 ldx #$0F
                 dec L_DA60
                 cpx L_DA60
                 bcc L_D95C
                 sty L_DA60
                 dec L_DA5E+1
                 cpx L_DA5E+1
                 bcc L_D95C
                 sty L_DA5E+1
                 dec L_DA5E
                 cpx L_DA5E
                 bcc L_D95C
                 sty L_DA5E
L_D95C           lda #$00
                 sta BPTR
                 ldx #$C8
                 lda $03FF
                 sta BFENLO
                 bne L_D96E
                 dec FEOF
                 ldx $04C7
L_D96E           stx FTYPE
                 jmp L_D921
L_D973           lda #$3C
                 sta PACTL
                 ldx #$35
L_D97A           lda L_D986,x
                 sta $0400,x
                 dex
                 bpl L_D97A
                 jmp $0400
L_D986           ldy #$01
                 sty BOOT
                 dey
                 sty COLDST
                 inc PORTB
                 cli
                 jsr $0412
                 jmp $1B33
                 ldx #$00
                 ldy #$0C
                 jsr $042D
                 stx B0_ICAX2
                 lda #$0C
                 sta B0_ICAX1
                 lda #$33
                 sta B0_ICBAL
                 lda #$04
                 sta B0_ICBAH
                 ldy #$03
                 sty B0_ICCOM
                 jmp CIOV
                 eor XMTDON
                 shs $7070,y
                 bvs L_DA2E+2
                 lse COLOR
                 cmp $0770,y
                 eor (TRAPLN,x)
                 cmp $E500,y
                 escape #$F2
                 ins CIX
                 ora $3200
                 and ICCOMZ
                 rla $2922
                 rol ICBAHZ
                 and LNFLG,y
                 bmi L_DA11
                 and BUFRHI
                 and #$2F
                 rol ICBAHZ
                 brk
                 brk
                 brk
                 brk
                 ins (INBUFF+1),y
                 sbc (CIX,x)
                 nop LNFLG,x
                 bvs L_DA62
                 bvs L_DA63+1
                 cim
                 ora $70DA
                 asl ROWAC
                 bvs L_D9FE
                 bvs L_DA6C+2
L_D9FE           bvs L_DA70
                 bvs L_DA08+1
                 bvs L_DA74
                 bvs L_DA76
                 bvs L_DA0C+2
L_DA08           bvs L_DA0C
                 eor (FCHRFLG,x)
L_DA0C           cmp LNFLG,y
                 rol ADRESS+1,x
L_DA11           ror $7A65
                 adc ADRESS+1,x
                 jmp (FKDEF+1)
                 cim
                 bpl L_DA35
                 ora LNFLG,x
                 rla (ICDNOZ,x)
                 bmi L_DA4B
                 nop ICDNOZ,x
                 bit $3400
                 adc BUFSTR
                 asl $1900
                 nop RTCLOK,x
L_DA2E           ora $1412
                 clc
                 cim
                 brk
                 brk
L_DA35           brk
                 ins (ESIGN,x)
                 sbc $F5F0
                 ins (FRX,x)
                 sbc FR1+2,x
                 brk
                 ora DOSINI+1
                 adc (ENDPT,x)
                 adc (COLAC,x)
                 adc #$00
                 brk
                 brk
L_DA4B           bmi L_DABD+2
                 adc COLAC+1
                 adc BITMSK
                 nop FKDEF+1,x
                 brk
                 nop ADRESS+1
                 ror $7274
                 rra $6400
                 adc LNFLG
L_DA5E           bpl L_DA79
L_DA60           cim
                 brk
L_DA62           cim
L_DA63           jmp ($716F)
                 adc ADRESS+1,x
                 rra (LNFLG),y
                 adc (LNFLG,x)
L_DA6C           asl $0E0E
                 brk
L_DA70           brk
                 brk
                 brk
                 brk
L_DA74           brk
                 brk
L_DA76           brk
                 rol ICBLHZ,x
L_DA79           rla (ICBLHZ),y
                 rla (ICDNOZ,x)
                 bit ICSTAZ
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 rra (SHFAMT,x)
                 ror $7300
                 adc #$73
                 nop ADRESS+1,x
                 adc FKDEF+1
                 ora $F300
                 nop FR1+1,x
                 ins (LNFLG,x)
                 brk
                 brk
                 rla (BFENLO),y
                 and (ICSTAZ,x)
                 brk
                 php
                 cim
                 ora #$00
                 bvs L_DB15
                 cim
                 brk
                 and #$2C
                 rol
                 rla BUFRLO
                 asl
                 asl
                 brk
                 ora (DSKFMS+1),y
                 clc
                 clc
                 brk
                 and (BUFRLO,x)
                 rla ICBAHZ
                 rol $2934
L_DABD           rol ICDNOZ
                 brk
                 sta NMIRES
                 pha
                 txa
                 pha
                 inc RTCLOK+2
                 lda NOCKSM
                 beq L_DAD1
                 dec NOCKSM
                 bne L_DAD1
L_DAD1           lda SDLSTH
                 sta DLISTH
                 lda SDLSTL
                 sta DLISTL
                 lda #$08
                 sta CONSOL
                 ldx #$04
L_DAE4           lda COLOR0,x
                 sta COLPF0,x
                 dex
                 bpl L_DAE4
                 pla
                 tax
                 pla
                 rti
L_DAF1           lda SKSTAT
                 and #$10
                 beq L_DAF1
                 ldy #$FE
                 sty RTCLOK+2
                 lda #$10
L_DAFE           and SKSTAT
                 beq L_DAF1
                 ldy RTCLOK+2
                 bmi L_DAFE
                 rts
L_DB08           lda #$FF
                 ldy #$03
                 sta BUFRLO
                 sty BUFRHI
                 tsx
                 stx BUFRFL
                 ldy #$B4
L_DB15           sty NOCKSM
                 ldy #$00
                 sty CHKSUM
                 sty CHKSNT
                 iny
                 sty STATUS
                 jsr L_DB2C
                 jmp L_DB79
L_DB26           ldy CHKSNT
                 cpy #$64
                 bne L_DB32
L_DB2C           jsr L_DB86
                 jsr L_DC30
L_DB32           ldy #$8A
                 lda NOCKSM
                 beq L_DB74
                 lda IRQST
                 and #$20
                 bne L_DB32
                 lda #$DF
                 sta IRQEN
                 lda #$20
                 sta IRQEN
                 ldy #$8C
                 lda SKSTAT
                 sta SKRES
                 bpl L_DB74
                 and #$20
                 beq L_DB74
                 lda SERIN
                 ldy CHKSNT
                 inc CHKSNT
                 cpy #$C9
                 bcs L_DB6E
                 sta (BUFRLO),y
                 clc
                 adc CHKSUM
                 adc #$00
                 sta CHKSUM
                 jmp L_DB26
L_DB6E           cmp CHKSUM
                 beq L_DB76
                 ldy #$8F
L_DB74           sty STATUS
L_DB76           rts
L_DB77           sta STATUS
L_DB79           ldx BUFRFL
                 txs
                 jsr L_DC55
                 ldy STATUS
                 rts
L_DB82           lda #$8A
                 bne L_DB77
L_DB86           lda NOCKSM
                 beq L_DB82
                 lda SKSTAT
                 and #$10
                 bne L_DB86
                 sta BFENHI
                 ldx VCOUNT
                 ldy RTCLOK+2
                 stx TIMER1
                 sty TIMER1+1
                 ldy #$13
L_DBA0           lda NOCKSM
                 beq L_DB82
                 lda SKSTAT
                 and #$10
                 cmp BFENHI
                 beq L_DBA0
                 sta BFENHI
                 dey
                 bne L_DBA0
                 lda VCOUNT
                 ldy RTCLOK+2
                 jsr L_DBD1
                 sta AUDF3
                 sty AUDF4
                 lda #$00
                 sta SKCTL
                 lda SSKCTL
                 sta SKCTL
                 rts
L_DBCC           pla
                 pla
                 jmp L_DB86
L_DBD1           sta TIMER2
                 sty TIMER2+1
                 jsr L_DC21
                 sta TIMER2
                 lda TIMER1
                 jsr L_DC21
                 sta TIMER1
                 lda TIMER2
                 sec
                 sbc TIMER1
                 sta FREQ
                 sec
                 lda TIMER2+1
                 sbc TIMER1+1
                 tay
                 ldx PALNTS
                 lda L_DC68,x
L_DBFC           clc
                 adc L_DC68+2,x
                 dey
                 bpl L_DBFC
                 clc
                 adc FREQ
                 sec
                 sbc #$64
                 bcc L_DBCC
                 cmp #$FE
                 bcs L_DBCC
                 sta FREQ
                 ldy #$02
                 ldx #$06
                 lda #$4F
L_DC17           adc FREQ
                 bcc L_DC1D
                 iny
                 clc
L_DC1D           dex
                 bne L_DC17
                 rts
L_DC21           cmp #$7C
                 bmi L_DC29
                 sec
                 sbc #$7C
                 rts
L_DC29           clc
                 ldx PALNTS
                 adc L_DC6B+1,x
                 rts
L_DC30           lda #$13
                 sta SSKCTL
                 sta SKCTL
                 sta SKRES
                 lda #$00
                 sta IRQEN
                 lda #$20
                 sta IRQEN
                 lda #$28
                 sta AUDCTL
                 lda #$A8
                 jsr L_DC5E
                 lda #$A0
                 sta AUDC3
                 rts
L_DC55           lda #$C0
                 sta POKMSK
                 sta IRQEN
                 lda #$00
L_DC5E           ldx #$06
L_DC60           sta AUDC1,x
                 dex
                 dex
                 bpl L_DC60
                 rts
L_DC68           adc $8364,x
L_DC6B           shy $2007,x
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
                 ora (NGFLAG,x)
