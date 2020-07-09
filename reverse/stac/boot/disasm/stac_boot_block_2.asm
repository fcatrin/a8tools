
; BLOCK 2 stac_boot.xex

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
                 jsr MOVE_MEM         ; Backup charset
                 dec PORTB
                 lda #$90
                 ldy #$D8
                 jsr MOVE_MEM_4K      ; Move $1000 bytes from $9000 -> $D800 ; Loader at $D800 Charset at $E000 again
                 lda #$90
                 ldy #$C0
                 jsr MOVE_MEM_4K      ; Move $1000 bytes from $9000 -> $C000 ; This just clear the original code at $9000
                 lda #$C1
                 sta $FFFA
                 lda #$DA
                 sta $FFFB            ; Set NMI pointer to $DAC1
                 lda #$40
                 sta NMIEN
                 ldy #$53             ; ths is later used to build $30 + $53 = $83
                 lda #$AF
                 sec
                 ldx #$50
UNLOCK1          ins $DA0D,x          ; INC + SBC -- $DA0D,X += (1 - $AF) carry included
                 dex
                 bpl UNLOCK1
                 sax STATUS,y         ; write A & X to $83
                 lda #$27
                 clc
                 ldx #$3B
UNLOCK2          dcm $DA85,x          ; DEC $DAB5,X
                 clc
                 nop STATUS
                 adc $DA85,x
                 dex
                 bpl UNLOCK2
                 sax CHKSUM,y
                 jmp $D825            ; Exec the loader
MOVE_MEM_4K      ldx #$10
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
