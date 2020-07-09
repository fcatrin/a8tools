
; BLOCK 1 stac.xex

                 org $9000

                 clc
                 rts
                 ldx #$F0
                 ldy #$D9
                 lda #$00
                 sta COLOR2
                 lda #$3A
                 sta COLOR0
                 stx SDLSTL
                 sty SDLSTH
                 lda #$FD
                 sta RTCLOK+2
L_901A           lda RTCLOK+2
                 bne L_901A
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
                 jsr PDIRQV
                 jsr $D921
                 bne $9081
                 jsr $D921
                 pha
                 jsr $D921
                 tay
                 pla
                 bmi L_9051
                 jsr $D8BA
                 jmp $D841
L_9051           and #$7F
                 sta VNTP
                 sty LOMEM+1
                 jsr $D921
                 bne L_9065
                 clc
                 lda VNTP
                 adc VNTD
                 sta VNTD
                 bcc $9092
L_9065           ldy #$00
                 beq L_9070
L_9069           sta (VNTP+1),y
                 iny
                 bne L_9069
                 inc VNTD
L_9070           dec VNTP
                 bpl L_9069
                 cpy LOMEM+1
                 beq $9092
                 sta (VNTP+1),y
