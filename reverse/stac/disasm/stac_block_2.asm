
; BLOCK 2 stac.xex

                 org $0400

                 sei
                 ldy TRIG3
WAIT             bne WAIT
                 sty NMIEN
                 sty SRC
                 sty DST
                 dey
                 sty PORTB
                 sty BASICF
                 lda #$E0
                 ldy #$98
                 ldx #$04
                 jsr MOVE_MEM         ; Move $400 bytes from $E000 to $9800
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
MOVE_MEM         sta SRC+1
                 sty DST+1
                 ldy #$00
MOVE_NEXT        lda (SRC),y
                 sta (DST),y
                 lda #$00
                 sta (SRC),y
                 iny
                 bne MOVE_NEXT
                 inc DST+1
                 inc SRC+1
                 dex
                 bne MOVE_NEXT
                 rts
                 brk
                 brk
                 brk
