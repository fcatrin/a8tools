


   org $B000
   
new_sprite_routine:
                  lda draw_flag
                  cmp #1
                  beq draw
                  rts
draw:                  
                  lda #0
                  sta draw_flag        

         

                 lda #$0F
                 sta $d01a
                 lda #$80
                 sta SHIP_ADDR+1
                 lda #$00
                 sta SHIP_ADDR
                 lda L_4405+4
                 and #$03
                 clc
                 asl
                 asl
                 asl
                 asl
                 asl
                 asl
                 clc
                 adc SHIP_ADDR
                 sta SHIP_ADDR
                 bcc SHIP_ADDR_NOH
                 inc SHIP_ADDR+1
SHIP_ADDR_NOH    ldx #$40
                 ldy #$8a ; or $8a or 12
                 stx DST
                 sty DST+1
                 ldx #$00
DRAW_SHIP1       lda L_43FD+3,x
                 and #$E0
                 lsr
                 lsr
                 lsr
                 lsr
                 lsr
                 clc
                 adc #$88 ; adc #$88 or #$10 
                 sta SRC+1
                 lda L_43FD+3,x
                 and #$1F
                 asl
                 asl
                 asl
                 sta SRC
                 ldy #$00
MASK_SHIP1       lda SHIP_ADDR
                 sta MASK_ADDR
                 lda SHIP_ADDR+1
                 clc
                 adc #$04
                 sta MASK_ADDR+1
                 lda (SRC),y
                 and (MASK_ADDR),y
                 ora (SHIP_ADDR),y
                 sta (DST),y
                 iny
                 cpy #$08
                 bne MASK_SHIP1
                 lda SHIP_ADDR
                 clc
                 adc #$08
                 sta SHIP_ADDR
                 lda DST
                 clc
                 adc #$08
                 sta DST
                 inx
                 cpx #$08
                 bne DRAW_SHIP1
                 lda #00
                 sta $d01a
                 rts
                 
draw_flag .byte 1
