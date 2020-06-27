
; patch to improve the big enemy

                 org $5E96

                 lda $5E92,x

                 org ENEMY_SETS1
                 
                 .byte $01, $02, $0b
                 
                 
                 org $33F0
                 jsr SET_BIG_PLANE_X
                 jmp $B2FC
                 
                 org $B800
SET_BIG_PLANE_X                 
                 lda ENEMY_X
                 sta HPOSP2
                 sta COLBK
                 clc
                 adc #$1E
                 sta HPOSP3
                 rts