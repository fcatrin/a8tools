
; BLOCK 1 koala_loader.xex

                 org $06FE

                 .byte $55, $55
                 jmp START
RETRY_MSG?       ldy #$00
                 lda #$01
                 sta CDTMV4
L_070A           lda CDTMV4
                 bne L_070A
                 lda #$01
                 sta CDTMV4
                 lda #$00
                 sta DLIST3,y
                 iny
                 cpy #$0C
                 bne L_070A
                 ldy #$00
L_0720           lda CDTMV4
                 bne L_0720
                 lda #$01
                 sta CDTMV4
                 lda #$70
                 sta DLIST3,y
                 iny
                 cpy #$0C
                 bne L_0720
                 lda #$42      ; Set Screen 2
                 sta SDLSTL
                 lda #$08
                 sta SDLSTH
                 ldy #$0C
L_0740           lda CDTMV4
                 bne L_0740
                 lda #$01
                 sta CDTMV4
                 lda #$70
                 sta DLIST2,y
                 iny
                 cpy #$15
                 bne L_0740
                 ldy #$0C
L_0756           lda CDTMV4
                 bne L_0756
                 lda #$01
                 sta CDTMV4
                 lda #$00
                 sta DLIST2,y
                 iny
                 cpy #$15
                 bne L_0756
                 lda #$61      ; Restore Screen 3
                 sta SDLSTL
                 lda #$08
                 sta SDLSTH
                 rts
DLIST1           .byte $70 ; DL 8 scanlines                 ; Display list 1
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $46 ; DL LMS Antic Mode 6
                 .word L_078E
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $06 ; DL Antic Mode 6
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $06 ; DL Antic Mode 6
                 .byte $41 ; DL JMP
                 .word DLIST1
L_078E           .byte $00, $00, $00, $00, $00, $30, $32, $29                 ; Screen text 1
                 .byte $33, $2D, $21, $00, $33, $2F, $26, $34
                 .byte $00, $00, $00, $00, $51, $52, $57, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $57, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $57, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $57, $52, $45, $7C, $00, $7C, $46
                 .byte $47, $46, $47, $46, $47, $46, $47, $46
                 .byte $47, $46, $47, $46, $7C, $30, $32, $25
                 .byte $33, $25, $2E, $34, $21, $7C, $47, $46
                 .byte $47, $46, $47, $46, $47, $46, $47, $46
                 .byte $47, $7C, $00, $7C, $5A, $52, $58, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $58, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $58, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $58, $52, $43, $00, $00, $00, $00
                 .byte $00, $00, $00, $00, $2B, $2F, $21, $2C
                 .byte $21, $00, $00, $00, $00, $00, $00, $00
                 .byte $00, $26, $21, $2C, $34, $21, $2E, $00
L_0836           .byte $10, $16, $16, $00, $22, $2C, $2F, $31
                 .byte $35, $25, $33, $00
DLIST2           .byte $70 ; DL 8 scanlines                 ; Display list 2
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $00 ; DL 1 scanline
                 .byte $00 ; DL 1 scanline
                 .byte $00 ; DL 1 scanline
                 .byte $00 ; DL 1 scanline
                 .byte $00 ; DL 1 scanline
                 .byte $00 ; DL 1 scanline
                 .byte $00 ; DL 1 scanline
                 .byte $00 ; DL 1 scanline
                 .byte $00 ; DL 1 scanline
                 .byte $42 ; DL LMS Antic Mode 2
                 .word L_0877
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $41 ; DL JMP
                 .word DLIST2
DLIST3           .byte $70 ; DL 8 scanlines                 ; Display list 3
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $42 ; DL LMS Antic Mode 2
                 .word L_0877
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $02 ; DL Antic Mode 2
                 .byte $41 ; DL JMP
                 .word DLIST3
L_0877           .byte $51, $52, $52, $52, $52, $52, $52, $52                 ; Screen text 3
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $45
                 .byte $7C, $33, $75, $00, $70, $72, $6F, $67
                 .byte $72, $61, $6D, $61, $00, $73, $65, $00
                 .byte $64, $65, $74, $75, $76, $6F, $0E, $00
                 .byte $70, $6F, $72, $66, $61, $76, $6F, $72
                 .byte $00, $00, $00, $00, $00, $00, $00, $7C
                 .byte $7C, $72, $65, $74, $72, $6F, $63, $65
                 .byte $64, $61, $00, $6C, $61, $00, $63, $69
                 .byte $6E, $74, $61, $00, $13, $00, $76, $75
                 .byte $65, $6C, $74, $61, $73, $00, $79, $00
                 .byte $70, $75, $6C, $73, $65, $00, $00, $7C
                 .byte $7C, $6C, $61, $00, $74, $65, $63, $6C
                 .byte $61, $00, $80, $F3, $F4, $E1, $F2, $F4
                 .byte $80, $0E, $00, $21, $34, $34, $25, $00
                 .byte $30, $72, $69, $73, $6D, $61, $00, $33
                 .byte $6F, $66, $74, $0E, $00, $00, $00, $7C
                 .byte $5A, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $52
                 .byte $52, $52, $52, $52, $52, $52, $52, $43
START            lda #$02
                 sta BOOT
                 lda #$00
                 sta COLDST
                 sta VTYPE
                 jsr SCREEN_SAVE
                 jsr SCREEN_SET
                 jmp L_09E0
SCREEN_SAVE      ldx #$00
L_0955           lda COLOR0,x
                 sta SAVED_COLOR,x
                 inx
                 cpx #$05
                 bne L_0955
                 lda SDLSTL
                 sta SAVED_DL_L
                 lda SDLSTH
                 sta SAVED_DL_H
                 lda SDMCTL
                 sta SAVED_DMA
                 lda CHBAS
                 sta SAVED_CHBAS
                 rts
SCREEN_RESTORE   ldx #$00
L_097B           lda SAVED_COLOR,x
                 sta COLOR0,x
                 inx
                 cpx #$05
                 bne L_097B
                 lda SAVED_DL_L
                 sta SDLSTL
                 lda SAVED_DL_H
                 sta SDLSTH
                 lda SAVED_DMA
                 sta SDMCTL
                 lda SAVED_CHBAS
                 sta CHBAS
                 rts
SCREEN_SET       lda #$75
                 sta SDLSTL
                 sta DLISTL
                 lda #$07
                 sta SDLSTH
                 sta DLISTH
                 ldx #$00
                 lda #$22
                 sta SDMCTL
                 sta DMACTL
                 lda #$E0
                 sta CHBAS
                 sta CHBASE
L_09C1           lda L_09D0,x
                 sta COLOR0,x
                 sta COLPF0,x
                 inx
                 cpx #$05
                 bne L_09C1
                 rts
L_09D0           .byte $FF
                 .byte $0F
                 .byte $92
                 brk
                 brk
L_09D5           lda #$61
                 sta SDLSTL
                 lda #$08
                 sta SDLSTH
                 rts
L_09E0           lda #$2E      ; Write 0C2E at (CB) and (CF)
                 sta $CB
                 sta $CF
                 lda #$0C
                 sta $CC
                 sta $D0
                 lda #$04      ; Write 0004 at (CD)
                 sta $CD
                 lda #$00
                 sta $CE
L_09F4           lda #$00
                 sta $0D3A
                 lda #$60      ; Load Block at $0xC3B size $100
                 sta DDEVIC
                 lda #$00
                 sta DUNIT
                 lda #$52
                 sta DCOMND
                 lda #$40
                 sta DSTATS
                 lda #$3B
                 sta DBUFLO
                 lda #$0C
                 sta DBUFHI
                 lda #$35
                 sta DTIMLO
                 lda #$00
                 sta DBYTLO
                 lda #$01
                 sta DBYTHI
                 lda #$FF
                 sta DAUX2
                 jsr SIOV
                 cpy #$01
                 beq L_0A35
                 jmp L_0A49
L_0A35           lda $0D3A
                 cmp #$3B
                 bne L_0A49
                 lda SAVED_CHBAS+3
                 cmp L_0C2C
                 beq L_0AAC
                 bcc L_0A49
                 jmp L_09F4
L_0A49           jsr L_09D5
                 lda #$3C      ; Stop motor
                 sta PACTL
                 lda #$FD
                 jsr $F2B0
                 jsr RETRY_MSG?
L_0A59           lda CONSOL    ; Is START pressed?
                 cmp #$06
                 bne L_0A59
L_0A60           lda CONSOL
                 cmp #$07
                 bne L_0A60
                 lda #$08
                 sta CONSOL
                 sei
                 lda #$34
                 sta PACTL
                 lda #$FF
                 sta RTCLOK+1
                 lda #$C0
                 sta RTCLOK+2
L_0A7A           lda RTCLOK+1
                 bne L_0A7A
L_0A7E           lda SKSTAT
                 cmp #$7F
                 bne L_0A7E
                 lda #$F0
                 sta L_0C2C+1
L_0A8A           lda SKSTAT
                 cmp #$7F
                 bne L_0A7E
                 dec L_0C2C+1
                 lda L_0C2C+1
                 cmp #$00
                 bne L_0A8A
                 lda #$13      ; Reset keyboard
                 sta SSKCTL
                 lda #$FF
                 sta SKCTL
                 cli
                 jsr SCREEN_SET
                 jmp L_09F4
L_0AAC           lda L_0836+2
                 cmp #$10
                 beq L_0AB9
                 dec L_0836+2
                 jmp L_0AD3
L_0AB9           lda #$19
                 sta L_0836+2
                 lda L_0836+1
                 cmp #$10
                 beq L_0ACB
                 dec L_0836+1
                 jmp L_0AD3
L_0ACB           lda #$19
                 sta L_0836+1
                 dec L_0836
L_0AD3           ldy #$03
                 dec L_0C2C
L_0AD8           ldx #$00
                 stx ATRACT
                 lda SAVED_CHBAS+1,y
                 sta ($CB,x)
                 iny
                 dec $CD
                 lda $CD
                 cmp #$FF
                 bne L_0AEC
                 dec $CE
L_0AEC           inc $CB
                 lda $CB
                 bne L_0AF4
                 inc $CC
L_0AF4           lda $CD
                 bne L_0AFC
                 lda $CE
                 beq L_0AFF
L_0AFC           jmp L_0BD2
L_0AFF           lda $CF
                 cmp #$2E
                 bne L_0B3B
                 lda $D0
                 cmp #$0C
                 bne L_0B3B
                 lda L_0C2C+2
                 cmp #$FF
                 bne L_0B38
                 lda L_0C2C+3
                 cmp #$FF
                 bne L_0B38
                 lda #$02
                 sta $CD
                 lda #$00
                 sta $CE
                 lda L_0C2C+4
                 sta L_0C2C+2
                 lda L_0C2C+5
                 sta L_0C2C+3
                 lda #$30
                 sta $CB
                 lda #$0C
                 sta $CC
                 jmp L_0BD2
L_0B38           jmp L_0BA8
L_0B3B           lda $D0
                 cmp #$02
                 bne L_0B7B
                 lda $CF
                 cmp #$E0
                 bne L_0B4B
                 lda #$01
                 sta VTYPE
L_0B4B           lda $CF
                 cmp #$E2
                 beq L_0B58
                 lda L_0C2C+4
                 cmp #$E3
                 bne L_0B7B
L_0B58           sty $D1
                 jsr SCREEN_RESTORE
                 jsr L_0B6B
                 jsr SCREEN_SAVE
                 jsr SCREEN_SET
                 ldy $D1
                 jmp L_0B7B
L_0B6B           lda INITAD+1
                 cmp #$01
                 beq L_0B7A
                 lda #$3C
                 sta PACTL
                 jmp (INITAD)
L_0B7A           rts
L_0B7B           jsr L_0C00
                 lda #$04
                 sta $CD
                 lda #$00
                 sta $CE
                 lda #$2E
                 sta $CB
                 sta $CF
                 lda #$0C
                 sta $CC
                 sta $D0
                 lda VTYPE
                 bne L_0BD2
                 lda $CF
                 sta RUNAD
                 lda $CF
                 sta RUNAD
                 lda $D0
                 sta RUNAD+1
                 jmp L_0BD2
L_0BA8           jsr L_0BEC
                 lda L_0C2C+2
                 sta $CB
                 sta $CF
                 lda L_0C2C+3
                 sta $CC
                 sta $D0
                 sec
                 lda L_0C2C+4
                 sbc L_0C2C+2
                 sta $CD
                 lda L_0C2C+5
                 sbc L_0C2C+3
                 sta $CE
                 inc $CD
                 lda $CD
                 bne L_0BD2
                 inc $CE
L_0BD2           cpy #$FF
                 beq L_0BD9
                 jmp L_0AD8
L_0BD9           lda L_0C2C
                 beq L_0BE1
                 jmp L_09F4
L_0BE1           lda #$3C      ; Stop motor
                 sta PACTL
                 jsr SCREEN_RESTORE
                 jmp (RUNAD)   ; Execute
L_0BEC           lda L_0C2C+2
                 cmp #$FE
                 bne L_0BFF
                 lda L_0C2C+3
                 cmp #$FE
                 bne L_0BFF
                 pla
                 pla
                 jmp L_0BE1
L_0BFF           rts
L_0C00           ldx #$00
L_0C02           lda COLOR0,x
                 cmp L_09D0,x
                 beq L_0C11
L_0C0A           jsr SCREEN_SAVE
                 jsr SCREEN_SET
                 rts
L_0C11           inx
                 cpx #$05
                 bne L_0C02
                 lda SDLSTL
                 cmp #$75
                 bne L_0C0A
                 lda SDLSTH
                 cmp #$07
                 bne L_0C0A
                 lda SDMCTL
                 cmp #$22
                 bne L_0C0A
                 rts
L_0C2C           .byte $42