
; patch to improve the big enemy

                 org $5E96

                 lda $5E92

                 org ENEMY_SETS1
                 
                 .byte $0B