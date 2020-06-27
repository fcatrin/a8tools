
; BLOCK 3 patched_screaming_wings.xex

                 org $B700

START            ldy #$00
                 tya
                 clc
                 tax
L_B705           txa
                 adc L_B776,y
                 tax
                 iny
                 cpy #$50
                 bne L_B705
                 cpx #$5B
                 beq L_B716
                 jsr COLDSV
L_B716           jmp $4380
