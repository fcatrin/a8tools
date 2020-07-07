
; BLOCK 2 koala_boot.xex

                 org $0400

/* 0400: A9 60    */                   lda #$60
/* 0402: 8D 00 03 */                   sta DDEVIC
/* 0405: A9 00    */                   lda #$00
/* 0407: 8D 01 03 */                   sta DUNIT
/* 040A: A9 52    */                   lda #$52
/* 040C: 8D 02 03 */                   sta DCOMND
/* 040F: A9 40    */                   lda #$40
/* 0411: 8D 03 03 */                   sta DSTATS
/* 0414: A9 FE    */                   lda #$FE
/* 0416: 8D 04 03 */                   sta DBUFLO|          ; load block at $6FE
/* 0419: A9 06    */                   lda #$06
/* 041B: 8D 05 03 */                   sta DBUFHI
/* 041E: A9 35    */                   lda #$35
/* 0420: 8D 06 03 */                   sta DTIMLO
/* 0423: A9 2F    */                   lda #$2F
/* 0425: 8D 08 03 */                   sta DBYTLO|          ; block size is $52F
/* 0428: A9 05    */                   lda #$05
/* 042A: 8D 09 03 */                   sta DBYTHI
/* 042D: A9 80    */                   lda #$80
/* 042F: 8D 0B 03 */                   sta DAUX2
/* 0432: 20 59 E4 */                   jsr SIOV
/* 0435: 4C 00 07 */                   jmp L_0700
/* 0438: 00       */                   .byte $00, $00, $00, $00, $00, $00, $00, $00
/* 0440: 00       */                   .byte $00, $00, $00, $00, $00, $00, $00, $00
/* 0448: 00       */                   .byte $00, $00, $00, $00, $00, $00, $00, $00
/* 0450: 00       */                   .byte $00, $00, $00, $00, $00, $00, $00, $00
/* 0458: 00       */                   .byte $00, $00, $00, $00, $00, $00, $00, $00
/* 0460: 00       */                   .byte $00, $00, $00, $00, $00, $00, $00, $00
/* 0468: 00       */                   .byte $00, $00, $00, $00, $00, $00, $00, $00
/* 0470: 00       */                   .byte $00, $00, $00, $00, $00, $00, $00, $00
/* 0478: 00       */                   .byte $00, $00, $00, $00, $00, $00, $00, $00
