
; BLOCK 1 koala_loader.xex

                 org $06FE

                 .byte $55, $55
                 jmp L_093F
L_0703           ldy #$00
                 lda #$01
                 sta CDTMV4
L_070A           lda CDTMV4
                 bne L_070A
                 lda #$01
                 sta CDTMV4
                 lda #$00
                 sta L_0861,y
                 iny
                 cpy #$0C
                 bne L_070A
                 ldy #$00
L_0720           lda CDTMV4
                 bne L_0720
                 lda #$01
                 sta CDTMV4
                 lda #$70
                 sta L_0861,y
                 iny
                 cpy #$0C
                 bne L_0720
                 lda #$42
                 sta SDLSTL
                 lda #$08
                 sta SDLSTH
                 ldy #$0C
L_0740           lda CDTMV4
                 bne L_0740
                 lda #$01
                 sta CDTMV4
                 lda #$70
                 sta L_0842,y
                 iny
                 cpy #$15
                 bne L_0740
                 ldy #$0C
L_0756           lda CDTMV4
                 bne L_0756
                 lda #$01
                 sta CDTMV4
                 lda #$00
                 sta L_0842,y
                 iny
                 cpy #$15
                 bne L_0756
                 lda #$61
                 sta SDLSTL
                 lda #$08
                 sta SDLSTH
                 rts
                 bvs L_07E7
                 bvs L_07E9
                 lsr RUNSTK
                 .byte $07
                 bvs L_07ED+1
                 .byte $02
                 .byte $02
                 .byte $02
                 bvs L_07F3
                 bvs L_07F5
                 asl ROWAC
                 bvs L_07F9
                 bvs L_0791
                 eor (ENDPT+1,x)
                 .byte $07
                 brk
                 brk
                 brk
L_0791           brk
                 brk
                 bmi L_07C7
                 and #$33
                 and ICDNOZ
                 .byte $33
                 .byte $2F
                 rol BFENLO
                 brk
                 brk
                 brk
                 brk
                 eor (LMARGN),y
                 .byte $57
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $57
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $57
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
L_07C7           .byte $57
                 .byte $52
                 eor HOLDCH
                 brk
                 .byte $7C
                 lsr FMSZPG+4
                 lsr FMSZPG+4
                 lsr FMSZPG+4
                 lsr FMSZPG+4
                 lsr FMSZPG+4
                 lsr FMSZPG+4
                 lsr HOLDCH
                 bmi L_080F
                 and BUFRHI
                 and ICIDNO
                 .byte $34
                 and (HOLDCH,x)
                 .byte $47
                 lsr FMSZPG+4
L_07E7           lsr FMSZPG+4
L_07E9           lsr FMSZPG+4
                 lsr FMSZPG+4
L_07ED           lsr FMSZPG+4
                 .byte $7C
                 brk
                 .byte $7C
                 .byte $5A
L_07F3           .byte $52
                 cli
L_07F5           .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
L_07F9           .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 cli
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 cli
                 .byte $52
                 .byte $52
                 .byte $52
L_080F           .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 cli
                 .byte $52
                 .byte $43
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 .byte $2B
                 .byte $2F
                 and (ICSPRZ,x)
                 and (LNFLG,x)
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 rol ICDNOZ
                 bit $2134
L_0834           rol $1000
L_0837           asl BUFADR+1,x
                 brk
                 .byte $22
                 bit $312F
                 and ICBAHZ,x
                 .byte $33
                 brk
L_0842           bvs L_08B4
                 bvs L_08B5+1
                 bvs L_08B8
                 bvs L_08BA
                 bvs L_08BC
                 bvs L_08BE
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 .byte $42
                 .byte $77
                 php
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 eor (CRITIC,x)
                 php
L_0861           bvs L_08D2+1
                 bvs L_08D5
                 bvs L_08D6+1
                 bvs L_08D9
                 bvs L_08DB
                 bvs L_08DD
                 .byte $42
                 .byte $77
                 php
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 eor (FKDEF+1,x)
                 php
                 eor (LMARGN),y
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 eor HOLDCH
                 .byte $33
                 adc LNFLG,x
                 bvs L_0917
                 .byte $6F
                 .byte $67
                 .byte $72
                 adc (BUFSTR+1,x)
                 adc (LNFLG,x)
                 .byte $73
                 adc LNFLG
                 .byte $64
                 adc ENDPT
                 adc DELTAR,x
L_08B4           .byte $6F
L_08B5           asl $7000
L_08B8           .byte $6F
                 .byte $72
L_08BA           ror FKDEF+1
L_08BC           ror SHFAMT,x
L_08BE           .byte $72
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 .byte $7C
                 .byte $7C
                 .byte $72
                 adc ENDPT
                 .byte $72
                 .byte $6F
                 .byte $63
                 adc ADRESS
                 adc (LNFLG,x)
L_08D2           jmp (FKDEF+1)
L_08D5           .byte $63
L_08D6           adc #$6E
                 .byte $74
L_08D9           adc (LNFLG,x)
L_08DB           .byte $13
                 brk
L_08DD           ror ENDPT+1,x
                 adc BUFSTR
                 .byte $74
                 adc (COLAC+1,x)
                 brk
                 adc $7000,y
                 adc BUFSTR,x
                 .byte $73
                 adc LNFLG
                 brk
                 .byte $7C
                 .byte $7C
                 jmp (FKDEF+1)
                 .byte $74
                 adc LOGCOL
                 jmp (FKDEF+1)
                 .byte $80
                 .byte $F3
                 .byte $F4
                 sbc (CIX,x)
                 .byte $F4
                 .byte $80
                 asl $2100
                 .byte $34
                 .byte $34
                 and LNFLG
                 bmi L_097B
                 adc #$73
                 adc FKDEF+1
                 .byte $33
                 .byte $6F
                 ror ENDPT
                 asl LNFLG
                 brk
                 .byte $7C
L_0917           .byte $5A
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $43
L_093F           lda #$02
                 sta BOOT
                 lda #$00
                 sta COLDST
                 sta VTYPE
                 jsr L_0953
                 jsr L_099F
                 jmp L_09E0
L_0953           ldx #$00
L_0955           lda COLOR0,x
                 sta L_0C2C+6,x
                 inx
                 cpx #$05
                 bne L_0955
                 lda SDLSTL
                 sta $0C37
                 lda SDLSTH
                 sta $0C38
                 lda SDMCTL
                 sta $0C39
                 lda CHBAS
                 sta $0C3A
                 rts
L_0979           ldx #$00
L_097B           lda L_0C2C+6,x
                 sta COLOR0,x
                 inx
                 cpx #$05
                 bne L_097B
                 lda $0C37
                 sta SDLSTL
                 lda $0C38
                 sta SDLSTH
                 lda $0C39
                 sta SDMCTL
                 lda $0C3A
                 sta CHBAS
                 rts
L_099F           lda #$75
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
L_09E0           lda #$2E
                 sta $CB
                 sta $CF
                 lda #$0C
                 sta $CC
                 sta $D0
                 lda #$04
                 sta $CD
                 lda #$00
                 sta $CE
L_09F4           lda #$00
                 sta $0D3A
                 lda #$60
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
                 lda $0C3D
                 cmp L_0C2C
                 beq L_0AAC
                 bcc L_0A49
                 jmp L_09F4
L_0A49           jsr L_09D5
                 lda #$3C
                 sta PACTL
                 lda #$FD
                 jsr $F2B0
                 jsr L_0703
L_0A59           lda CONSOL
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
                 lda #$13
                 sta SSKCTL
                 lda #$FF
                 sta SKCTL
                 cli
                 jsr L_099F
                 jmp L_09F4
L_0AAC           lda L_0837+1
                 cmp #$10
                 beq L_0AB9
                 dec L_0837+1
                 jmp L_0AD3
L_0AB9           lda #$19
                 sta L_0837+1
                 lda L_0837
                 cmp #$10
                 beq L_0ACB
                 dec L_0837
                 jmp L_0AD3
L_0ACB           lda #$19
                 sta L_0837
                 dec L_0834+2
L_0AD3           ldy #$03
                 dec L_0C2C
L_0AD8           ldx #$00
                 stx ATRACT
                 lda $0C3B,y
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
                 jsr L_0979
                 jsr L_0B6B
                 jsr L_0953
                 jsr L_099F
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
L_0BE1           lda #$3C
                 sta PACTL
                 jsr L_0979
                 jmp (RUNAD)
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
L_0C0A           jsr L_0953
                 jsr L_099F
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
