
; BLOCK 2 stac.xex

                 org $0400

                 sei
                 ldy TRIG3
L_0404           bne L_0404
                 sty NMIEN
                 sty VNTD+1
                 sty VVTP+1
                 dey
                 sty PORTB
                 sty BASICF
                 lda #$E0
                 ldy #$98
                 ldx #$04
                 jsr L_0464
                 dec PORTB
                 lda #$90
                 ldy #$D8
                 jsr L_0462
                 lda #$90
                 ldy #$C0
                 jsr L_0462
                 lda #$C1
                 sta $FFFA
                 lda #$DA
                 sta $FFFB
                 lda #$40
                 sta NMIEN
                 ldy #$53
                 lda #$AF
                 sec
                 ldx #$50
L_0444           ins $DA0D,x
                 dex
                 bpl L_0444
                 sax STATUS,y
                 lda #$27
                 clc
                 ldx #$3B
L_0451           dcm $DA85,x
                 clc
                 nop STATUS
                 adc $DA85,x
                 dex
                 bpl L_0451
                 sax CHKSUM,y
                 jmp $D825
L_0462           ldx #$10
L_0464           sta VVTP
                 sty STMTAB
                 ldy #$00
L_046A           lda (VNTD+1),y
                 sta (VVTP+1),y
                 lda #$00
                 sta (VNTD+1),y
                 iny
                 bne L_046A
                 inc STMTAB
                 inc VVTP
                 dex
                 bne L_046A
                 rts
                 brk
                 brk
                 brk
