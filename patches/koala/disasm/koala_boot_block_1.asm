
; BLOCK 1 koala_boot.xex

                 org $0700

                 rts
                 jsr $2020
                 .byte $62
                 adc $2020,y
                 .byte $52
                 adc (TOADR+1,x)
                 adc $6E61
                 jsr $6F53
                 ror ENDPT
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
                 brk
