
; BLOCK 2 koala_boot.xex

                 org $0400

                 lda #$60
                 sta DDEVIC
                 lda #$00
                 sta DUNIT
                 lda #$52
                 sta DCOMND
                 lda #$40
                 sta DSTATS
                 lda #$FE
                 sta DBUFLO    ; load block at $6FE
                 lda #$06
                 sta DBUFHI
                 lda #$35
                 sta DTIMLO
                 lda #$2F
                 sta DBYTLO    ; block size is $52F
                 lda #$05
                 sta DBYTHI
                 lda #$80
                 sta DAUX2
                 jsr SIOV
                 jmp L_0700
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $00, $00, $00, $00
