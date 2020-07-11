
; BLOCK 1 stac_loader.xex

                 org $D800

                 .byte $00, $09, $00, $90, $00, $04
                 clc
                 rts
SET_SCREEN0      ldx #$F0             ; Set Display List at $D9F0
                 ldy #$D9
SET_SCREEN       lda #$00
                 sta COLOR2
                 lda #$3A
                 sta COLOR0
                 stx SDLSTL
                 sty SDLSTH
WAIT_3FRAMES     lda #$FD             ; Wait 3 frames
                 sta FRAMECOUNT
WAIT_FRAME       lda FRAMECOUNT
                 bne WAIT_FRAME
                 rts

START            clc                  ; This is the Entry Point
                 lda #$C0
                 sta RAMTOP
                 lda #$C8             ; Set Buffer Index at Buffer End to force a block read
                 sta BUF_INDEX
                 sta BUF_LEN
                 ldy DOSINI
                 sty BLOCK_NUMBER
                 nop #$D0
                 lax DOSINI+1,x
                 tya
                 ins CHLINK,x
                 sta EOF_FLAG
                 jsr SET_SCREEN0
NEXT_CHUNK       jsr READ_BYTE
                 bne CHECK_IS_RAW
                 jsr READ_BYTE
                 pha
                 jsr READ_BYTE
                 tay
                 pla
                 bmi CHUNK_RLE_LONG
                 jsr LOAD_RAW_LONG
                 jmp NEXT_CHUNK

;  RLE long block compression. Size comes as H, L
;  Bit 8 in H = 1
;  Size in Y, A

CHUNK_RLE_LONG   and #$7F
                 sta DST_SIZE+1
                 sty DST_SIZE
                 jsr READ_BYTE
                 bne NONZ_RLE_LONG
                 clc                  ; Just skip bytes if data is 0
                 lda DST_SIZE+1
                 adc DST_ADDR+1
                 sta DST_ADDR+1
                 bcc UPDATE_DST_ADDR
NONZ_RLE_LONG    ldy #$00
                 beq L_D876
COPY_RLE_LONG    sta (DST_ADDR),y
                 iny
                 bne COPY_RLE_LONG
                 inc DST_ADDR+1
L_D876           dec DST_SIZE+1
                 bpl COPY_RLE_LONG
                 cpy DST_SIZE
                 beq UPDATE_DST_ADDR
L_D87E           sta (DST_ADDR),y
                 iny
                 cpy DST_SIZE
                 bne L_D87E
                 beq UPDATE_DST_ADDR
CHECK_IS_RAW     bpl LOAD_RAW_CHUNK   ; Bit 8 = 0 => Raw bytes. Size in A

;  Bit 8 = 1 indicates RLE short block compression
;  bits 6-0 = size
;  Next byte = content

LOAD_RLE_SHORT   and #$7F
                 sta DST_SIZE
                 jsr READ_BYTE
                 ldy DST_SIZE
                 dey
COPY_RLE_SHORT   sta (DST_ADDR),y
                 dey
                 bpl COPY_RLE_SHORT
UPDATE_DST_ADDR  clc
                 lda DST_ADDR
                 adc DST_SIZE
                 sta DST_ADDR
                 bcc L_D8A3
                 inc DST_ADDR+1
L_D8A3           jmp NEXT_CHUNK

;  Read short block of raw bytes where size < 128

LOAD_RAW_CHUNK   sta DST_SIZE
                 ldy #$00
LOAD_RAW_BYTE    sty DST_INDEX
                 jsr READ_BYTE
                 ldy DST_INDEX
                 sta (DST_ADDR),y
                 iny
                 cpy DST_SIZE
                 bne LOAD_RAW_BYTE
                 beq UPDATE_DST_ADDR

;  Read long block of raw bytes. Size in Y, A

LOAD_RAW_LONG    sty DST_SIZE
                 sta DST_SIZE+1
READ_NEXT_BYTE   jsr READ_BYTE
                 ldy #$00
                 sta (DST_ADDR),y
                 inc DST_ADDR
                 bne L_D8CB
                 inc DST_ADDR+1
L_D8CB           lda DST_SIZE
                 bne L_D8D1
                 dec DST_SIZE+1
L_D8D1           dec DST_SIZE
                 lda DST_SIZE+1
                 ora DST_SIZE
                 bne READ_NEXT_BYTE
                 rts

;  Stop tape and display error message

DISPLAY_ERROR    lda #$3C             ; Motor off
                 sta PACTL
                 ldx #$BC
                 ldy #$D9
                 jsr SET_SCREEN
                 lda #$FD
                 ldx #$00
                 stx B0_ICBLL
                 stx B0_ICBLH
                 ldy #$09
WAIT_START_DN    lda CONSOL
                 lsr
                 bcs WAIT_START_DN
WAIT_START_UP    lda CONSOL
                 lsr
                 bcc WAIT_START_UP
                 lda #$34             ; Motor on
                 sta PACTL
                 jsr SET_SCREEN0
                 jsr WAIT_3FRAMES
                 jsr WAIT_SIO_BIT
                 ldy BLOCK_NUMBER
                 beq DISPLAY_ERROR
L_D910           jsr L_DB08
                 tya
                 bmi DISPLAY_ERROR
                 lda $03FF
                 beq DISPLAY_ERROR
                 cmp BLOCK_NUMBER
                 bcc L_D910
                 bne DISPLAY_ERROR
READ_BYTE        ldx BUF_INDEX
                 cpx BUF_LEN
                 beq READ_BLOCK
                 inc BUF_INDEX
                 lda BUFFER,x
                 rts

READ_BLOCK       lda EOF_FLAG
                 bmi START_GAME
                 jsr L_DB08
                 tya
                 bmi DISPLAY_ERROR

;  Successful read. Decrement block counter on the screen

                 ldy #$19             ; This is the numbner 9 to wrap the counter
                 ldx #$0F             ; This is used to check if we passed below 0
                 dec COUNTER+3
                 cpx COUNTER+3
                 bcc SET_BLOCK_VARS
                 sty COUNTER+3
                 dec COUNTER+2
                 cpx COUNTER+2
                 bcc SET_BLOCK_VARS
                 sty COUNTER+2
                 dec COUNTER+1
                 cpx COUNTER+1
                 bcc SET_BLOCK_VARS
                 sty COUNTER+1

;  Set EOF flag, buffer length and block read number

SET_BLOCK_VARS   lda #$00
                 sta BUF_INDEX
                 ldx #$C8
                 lda $03FF
                 sta BLOCK_NUMBER
                 bne NOT_EOF
                 dec EOF_FLAG
                 ldx $04C7            ; Contains the partial block size
NOT_EOF          stx BUF_LEN
                 jmp READ_BYTE
START_GAME       lda #$3C             ; Motor off
                 sta PACTL
                 ldx #$35
COPY_BOOT_CODE   lda BOOT_GAME_CODE,x
                 sta BUFFER,x
                 dex
                 bpl COPY_BOOT_CODE
                 jmp BUFFER

;  This code is copied to $400 and it is ran to start the game

BOOT_GAME_CODE   ldy #$01
                 sty BOOT
                 dey
                 sty COLDST
                 inc PORTB
                 cli
                 jsr $0412            ; This calls the relocated subroutine at REL_0412
                 jmp $1B33            ; Looks like a hardcoded execution address per game, skipping standard XEX variables
REL_0412         ldx #$00             ; Close Channel 0
                 ldy #$0C
                 jsr $042D            ; This calls the relocated subroutine at REL_042D

;  Open channel 0 as E:

                 stx B0_ICAX2
                 lda #$0C
                 sta B0_ICAX1
                 lda #$33             ; Buffer at REL_0433
                 sta B0_ICBAL
                 lda #$04
                 sta B0_ICBAH
                 ldy #$03             ; Open command
REL_042D         sty B0_ICCOM
                 jmp CIOV

REL_0433         .byte $45, $3A, $9B  ; E:

DLIST_ERROR      .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $47 ; DL LMS Antic Mode 7
                 .word ERROR_MSG
                 .byte $70 ; DL 8 scanlines
                 .byte $07 ; DL Antic Mode 7
                 .byte $41 ; DL JMP
                 .word DLIST_ERROR

;  [error] - REBOBINE Y PRESIONE [START]

ERROR_MSG        .byte $00, $E5, $F2, $F2, $EF, $F2, $00, $0D
                 .byte $00, $32, $25, $22, $2F, $22, $29, $2E
                 .byte $25, $00, $39, $00, $00, $30, $32, $25
                 .byte $33, $29, $2F, $2E, $25, $00, $00, $00
                 .byte $00, $00, $F3, $F4, $E1, $F2, $F4, $00

DLIST_MAIN       .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $42 ; DL LMS Antic Mode 2
                 .word SCREEN_DATA
                 .byte $70 ; DL 8 scanlines
                 .byte $06 ; DL Antic Mode 6
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $02 ; DL Antic Mode 2
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $07 ; DL Antic Mode 7
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $70 ; DL 8 scanlines
                 .byte $06 ; DL Antic Mode 6
                 .byte $70 ; DL 8 scanlines
                 .byte $02 ; DL Antic Mode 2
                 .byte $41 ; DL JMP
                 .word DLIST_MAIN
SCREEN_DATA      .byte $00, $00, $36, $65, $6E, $65, $7A, $75
                 .byte $65, $6C, $61, $00, $12, $10, $19, $15
                 .byte $00, $23, $21, $30, $29, $34, $21, $2C
                 .byte $00, $34, $65, $6C, $0E, $00, $19, $14
                 .byte $12, $0D, $12, $14, $18, $12, $00, $00
                 .byte $00, $E3, $EF, $ED, $F0, $F5, $E3, $EC
                 .byte $F5, $E2, $00, $0D, $0D, $00, $61, $74
                 .byte $61, $72, $69, $00, $00, $00, $30, $72
                 .byte $65, $73, $65, $6E, $74, $61, $00, $64
                 .byte $65, $6E, $74, $72, $6F, $00, $64, $65
COUNTER          .byte $00, $10, $19, $12, $00, $62, $6C, $6F
                 .byte $71, $75, $65, $73, $00, $61, $00, $0E
                 .byte $0E, $0E, $00, $00, $00, $00, $00, $00
                 .byte $00, $00, $36, $29, $33, $29, $23, $21
                 .byte $2C, $23, $00, $00, $00, $00, $00, $00
                 .byte $00, $63, $6F, $6E, $00, $73, $69, $73
                 .byte $74, $65, $6D, $61, $00, $0D, $00, $F3
                 .byte $F4, $E1, $E3, $00, $00, $00, $33, $34
                 .byte $21, $23, $00, $08, $32, $09, $00, $70
                 .byte $6F, $72, $00, $29, $2C, $2A, $2F, $32
                 .byte $00, $0A, $0A, $00, $11, $19, $18, $18
                 .byte $00, $21, $32, $27, $25, $2E, $34, $29
                 .byte $2E, $21, $00, $00

;  Interrupt service routine (set from boot EOF)
;  Increments Frame Counter
;  Decrements Frame Timer
;  Copy shadow values for Display List and Colors

NMI              sta NMIRES
                 pha
                 txa
                 pha
                 inc FRAMECOUNT
                 lda FRAME_TIMER
                 beq SHADOW_DL
                 dec FRAME_TIMER
                 bne SHADOW_DL
SHADOW_DL        lda SDLSTH
                 sta DLISTH
                 lda SDLSTL
                 sta DLISTL
                 lda #$08
                 sta CONSOL
                 ldx #$04
SHADOW_COLOR     lda COLOR0,x
                 sta COLPF0,x
                 dex
                 bpl SHADOW_COLOR
                 pla
                 tax
                 pla
                 rti

;  Wait for bit 1 and then 2 frames with the same bit

WAIT_SIO_BIT     lda SKSTAT
                 and #$10
                 beq WAIT_SIO_BIT
                 ldy #$FE
                 sty FRAMECOUNT
                 lda #$10
SIO_BIT_HOLD     and SKSTAT
                 beq WAIT_SIO_BIT
                 ldy FRAMECOUNT
                 bmi SIO_BIT_HOLD
                 rts

L_DB08           lda #$FF
                 ldy #$03
                 sta BUFRLO
                 sty BUFRHI
                 tsx
                 stx BUFRFL
                 ldy #$B4
                 sty FRAME_TIMER
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
                 lda FRAME_TIMER
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
L_DB86           lda FRAME_TIMER
                 beq L_DB82
                 lda SKSTAT
                 and #$10
                 bne L_DB86
                 sta BFENHI
                 ldx VCOUNT
                 ldy FRAMECOUNT
                 stx TIMER1
                 sty TIMER1+1
                 ldy #$13
L_DBA0           lda FRAME_TIMER
                 beq L_DB82
                 lda SKSTAT
                 and #$10
                 cmp BFENHI
                 beq L_DBA0
                 sta BFENHI
                 dey
                 bne L_DBA0
                 lda VCOUNT
                 ldy FRAMECOUNT
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
                 adc L_DC68+4,x
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
                 jsr SET_VOL_A
                 lda #$A0
                 sta AUDC3
                 rts
L_DC55           lda #$C0
                 sta POKMSK
                 sta IRQEN
                 lda #$00             ; Mute all sound
SET_VOL_A        ldx #$06
NEXT_CHANNEL     sta AUDC1,x
                 dex
                 dex
                 bpl NEXT_CHANNEL
                 rts
L_DC68           .byte $7D, $64, $83, $9C, $07, $20, $01, $01
                 .byte $01, $01, $01, $01, $01, $01, $01, $01
                 .byte $01, $01, $01, $01, $01, $01, $01, $01
