  icl "patched_screaming_wings.inc"


; BLOCK 1

                 org $B700

                 LDA #$80
                 STA DOSVEC
                 STA DOSINI
                 LDA #$43
                 STA DOSVEC+1
                 STA DOSINI+1
                 CLC
                 LDX #$01
                 STX BOOT
                 DEX
                 STX COLDST
L_B715           LDA L_B762,X
                 SBC #$6F
                 STA L_B762,X
                 INX
                 CPX #$64
                 BNE L_B715
                 LDA #$41
                 STA DLISTL
                 STA SDLSTL
                 LDA #$B7
                 STA DLISTH
                 STA SDLSTH
                 LDX #$03
L_B734           LDA L_B75E,X
                 STA COLPF0,X
                 STA COLOR0,X
                 DEX
                 BPL L_B734
                 RTS
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $47
                 .byte $62
                 .byte $B7
                 .byte $70
                 .byte $70
                 .byte $04
                 .byte $70
                 .byte $04
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $04
                 .byte $41
                 .byte $41
                 .byte $B7
L_B75E           .byte $0E
                 .byte $08
                 .byte $0E
                 .byte $94
L_B762           .byte $70
                 .byte $70
                 .byte $63
                 .byte $53
                 .byte $62
                 .byte $55
                 .byte $51
                 .byte $5D
                 .byte $59
                 .byte $5E
                 .byte $57
                 .byte $70
                 .byte $70
                 .byte $67
                 .byte $59
                 .byte $5E
                 .byte $57
                 .byte $63
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $93
                 .byte $E2
                 .byte $D1
                 .byte $D3
                 .byte $DB
                 .byte $D5
                 .byte $D4
                 .byte $70
                 .byte $D2
                 .byte $E9
                 .byte $8A
                 .byte $70
                 .byte $9B
                 .byte $D9
                 .byte $DC
                 .byte $E2
                 .byte $DF
                 .byte $E9
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $78
                 .byte $A0
                 .byte $79
                 .byte $81
                 .byte $89
                 .byte $88
                 .byte $86
                 .byte $70
                 .byte $9E
                 .byte $7E
                 .byte $91
                 .byte $7E
                 .byte $A0
                 .byte $7E
                 .byte $9F
                 .byte $7E
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $70
                 .byte $26
                 .byte $72
                 .byte $6F
                 .byte $6D
                 .byte $00
                 .byte $34
                 .byte $68
                 .byte $65
                 .byte $00
                 .byte $24
                 .byte $61
                 .byte $69
                 .byte $6C
                 .byte $79
                 .byte $00
                 .byte $30
                 .byte $6C
                 .byte $61
                 .byte $6E
                 .byte $65
                 .byte $74
                 .byte $00
                 .byte $22
                 .byte $22
                 .byte $33
                 .byte $00
                 .byte $08
                 .byte $17
                 .byte $11
                 .byte $16
                 .byte $09
                 .byte $00
                 .byte $18
                 .byte $19
                 .byte $15
                 .byte $0D
                 .byte $10
                 .byte $15
                 .byte $10
                 .byte $18


; BLOCK 2

                 org $02E2

                 .word $B700


; BLOCK 3

                 org $B700

                 LDY #$00
                 TYA
                 CLC
                 TAX
L_B705           TXA
                 ADC L_B776,Y
                 TAX
                 INY
                 CPY #$50
                 BNE L_B705
                 CPX #$5B
                 BEQ L_B716
                 JSR COLDSV
L_B716           JMP $4380


; BLOCK 4

                 org $1500

L_1500           LDA $0616
                 BNE L_153C
                 LDA #$28
                 STA $0690
                 STA $0625
                 LDA $0683
                 BMI L_1516
                 LDA #$D0
L_1514           BNE L_1518
L_1516           LDA #$28
L_1518           STA $06A0
                 STA HPOSP2
                 STA HPOSP3
                 LDA #$00
                 STA $06AE
                 STA $0687
                 LDA #$0F
                 STA PCOLR3
                 LDA #$42
                 STA PCOLR2
                 LDA #$0E
                 STA L_542E+1
L_1538           INC $0616
                 RTS
L_153C           LDA $0625
                 BNE L_155B
                 LDA $06A7
                 BNE L_1579
                 LDA $0624
                 BEQ L_154C
                 RTS
L_154C           STA $0616
                 STA $0615
                 STA $06A6
                 LDA #$11
                 STA L_542E+1
                 RTS
L_155B           LDA $06AE
                 CMP #$18
                 BCC L_156E
                 LDA #$00
                 STA $0625
                 STA $06A2
                 INC $06A7
                 RTS
L_156E           INC $0617
                 LDA $0617
                 CMP #$02
                 BCS L_157B
                 RTS
L_1579           BNE L_15E4
L_157B           LDA #$00
                 STA $0617
                 INC $06C9
                 LDA $06C9
                 CMP #$02
                 BCC L_15A0
                 LDA #$00
                 STA $06C9
                 LDA $0684
                 BEQ L_159B
                 LDA #$00
                 STA $0684
                 BEQ L_15A0
L_159B           LDA #$01
L_159D           STA $0684
L_15A0           LDA $06A0
                 CMP $060F
                 BEQ L_15B4
                 BCC L_15B1
                 DEC $06A0
                 LDA #$00
                 BEQ L_15B4
L_15B1           INC $06A0
L_15B4           LDA $06A0
                 STA HPOSP2
                 STA HPOSP3
                 LDA $0616
                 CMP #$02
                 BNE L_15D5
                 DEC $0690
                 LDA $0690
                 CMP #$30
                 BCS L_15E4
                 LDA #$03
                 STA $0616
                 BNE L_15E4
L_15D5           INC $0690
                 LDA $0690
                 CMP #$60
                 BCC L_15E4
                 LDA #$02
                 STA $0616
L_15E4           LDA $0625
                 BNE L_15FC
                 LDX #$00
                 LDY $0690
                 TXA
L_15EF           STA L_360C,Y
                 STA L_370C,Y
                 INY
                 INX
                 CPX #$06
                 BNE L_15EF
                 RTS
L_15FC           LDX $0690
                 LDY #$00
                 LDA $0684
                 BNE L_1619
L_1606           LDA L_2F00,Y
                 STA L_3600,X
                 LDA L_2F22,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$11
L_1616           BNE L_1606
                 RTS
L_1619           LDA L_2F00,Y
                 STA L_3600,X
                 LDA L_2F11,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$11
                 BNE L_1619
                 RTS
                 .word $0000
                 .word $0000
L_1630           LDA $0687
                 BNE L_1657
                 LDA #$28
                 STA $061D
L_163A           STA $0624
                 LDA M2PF
                 BMI L_1646
                 LDA #$D0
                 BNE L_1648
L_1646           LDA #$28
L_1648           STA $0685
                 STA $0686
L_164E           LDA #$00
                 STA $06C5
                 INC $0687
                 RTS
L_1657           LDA $0624
                 BEQ L_16AA
                 LDA $06C5
                 BNE L_1671
                 DEC $0685
                 DEC $0686
                 LDA $0685
                 CMP #$30
                 BCS L_1683
                 INC $06C5
L_1671           INC $0685
                 INC $0686
                 LDA $0686
                 CMP #$C0
                 BCC L_1683
                 LDA #$00
                 STA $06C5
L_1683           LDA $0687
                 CMP #$02
                 BNE L_169B
                 DEC $061D
                 LDA $061D
                 CMP #$30
                 BCS L_16AA
                 LDA #$03
                 STA $0687
                 BNE L_16AA
L_169B           INC $061D
                 LDA $061D
                 CMP #$60
                 BCC L_16AA
                 LDA #$02
                 STA $0687
L_16AA           LDA $0624
L_16AD           BNE L_16C2
                 LDX #$00
                 LDY $061D
                 TXA
L_16B5           STA L_340C,Y
                 STA L_350C,Y
                 INY
                 INX
                 CPX #$06
                 BNE L_16B5
                 RTS
L_16C2           LDX $061D
                 LDY #$00
                 LDA $0684
                 BNE L_16DF
L_16CC           LDA L_2F22,Y
                 STA L_33FE+2,X
                 LDA L_2F00,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$11
                 BNE L_16CC
                 RTS
L_16DF           LDA L_2F11,Y
                 STA L_33FE+2,X
                 LDA L_2F00,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$11
                 BNE L_16DF
                 RTS
                 .word $0000
                 .word $0000
                 .word $0000
                 .word $0000
                 .word $0000
                 .word $0000
                 .word $0000
L_1700           LDA $0616
                 BNE L_173B
                 LDA #$50
                 STA $061D
                 STA $0624
                 LDA #$00
                 STA HPOSP2
                 STA HPOSP3
                 LDA #$C0
                 STA $0685
                 STA $0686
                 LDA #$94
                 STA PCOLR1
                 LDA #$0F
                 STA PCOLR0
                 LDA #$00
                 STA $0684
                 STA $0617
                 STA $0687
                 LDA #$0E
                 STA L_542E+1
                 INC $0616
                 RTS
L_173B           INC $0617
                 LDA $0617
                 CMP #$03
                 BCC L_1759
                 LDA #$00
                 STA $0617
                 LDA $0684
                 BNE L_1754
                 INC $0684
                 BPL L_1759
L_1754           LDA #$00
                 STA $0684
L_1759           LDY $061D
                 LDX #$00
                 LDA $0616
                 CMP #$02
                 BCC L_1766
                 RTS
L_1766           LDA $0685
                 CMP #$28
                 BCS L_1783
                 LDA #$00
                 STA $0624
                 TXA
L_1773           STA L_33FE+2,Y
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_1773
                 INC $0616
                 RTS
L_1783           DEC $0685
                 DEC $0686
                 LDA $0624
                 BNE L_178F
                 RTS
L_178F           LDA $0684
                 BNE L_17A7
L_1794           LDA L_3E10,X
                 STA L_33FE+2,Y
                 LDA L_3E1D,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_1794
                 RTS
L_17A7           LDA L_3E10,X
                 STA L_33FE+2,Y
                 LDA L_3E2A,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_17A7
                 RTS
                 BRK
                 CPX #$12
                 BEQ L_17C0
                 RTS
L_17C0           INC $06BB
                 RTS
                 DEC $06BC
                 LDA $06BC
                 STA AUDC3
                 CMP #$E0
                 BEQ L_17D2
                 RTS
L_17D2           LDA #$00
                 STA $06BB
                 RTS
                 .byte $40
                 .byte $3C
                 .byte $40
                 .byte $48
                 .byte $51
                 .byte $48
                 .byte $40
                 .byte $3C
                 .byte $40
                 .byte $48
                 .byte $40
                 .byte $3C
                 .byte $35
                 .byte $3C
                 .byte $40
                 .byte $48
                 .byte $51
                 .byte $48
                 .byte $51
                 .byte $48
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $D2
                 LDA L_19AA,Y
                 BNE L_1800
                 LDY #$00
                 STY $0673
                 LDA L_19AA,Y
L_1800           LDX $06BF
                 CPX #$00
                 BNE L_181D
                 LDA $0658
                 STA $06C1
                 STX $0658
                 STX AUDC1
                 STX AUDC2
L_1816           STX $06CE
                 INC $06BF
                 RTS
L_181D           INC $06C0
                 LDA $06C0
                 CMP #$09
                 BCS L_1828
                 RTS
L_1828           LDA #$00
                 STA $06C0
                 STA AUDC3
                 CPX #$01
                 BNE L_1851
                 LDA #$EF
                 STA $06CD
L_1839           STA AUDC4
L_183C           LDX $06CE
                 LDA L_186E,X
                 STA AUDF4
                 INC $06CE
                 CPX #$11
                 BCS L_184D
                 RTS
L_184D           INC $06BF
                 RTS
L_1851           CPX #$02
                 BEQ L_1856
                 RTS
L_1856           DEC $06CD
                 LDA $06CD
                 STA AUDC4
                 CMP #$E0
                 BCC L_1864
                 RTS
L_1864           INC $06BF
                 LDA $06C1
                 STA $0658
                 RTS
L_186E           RTS
                 ADC L_606B+1,Y
                 RTS
                 JMP (L_6C77+2)
                 RTS
                 ADC L_6C77+2,Y
                 RTS
                 RTS
                 JMP (L_6C77+2)
                 RTS
L_1880           LDX $06BB
                 BNE L_1886
                 RTS
L_1886           INC $06BE
                 LDA $06BE
                 CMP #$03
                 BCS L_1891
                 RTS
L_1891           LDA #$00
L_1893           STA $06BE
                 CPX #$01
                 BNE L_18AB
                 LDA #$EF
                 STA $06BC
                 STA AUDC3
                 LDA #$00
                 STA $06BD
                 INC $06BB
                 RTS
L_18AB           CPX #$02
                 BNE L_18C4
                 LDX $06BD
                 LDA L_18D8,X
                 STA AUDF3
                 INC $06BD
                 CPX #$12
                 BEQ L_18C0
                 RTS
L_18C0           INC $06BB
                 RTS
L_18C4           DEC $06BC
                 LDA $06BC
                 STA AUDC3
                 CMP #$E0
                 BEQ L_18D2
                 RTS
L_18D2           LDA #$00
                 STA $06BB
                 RTS
L_18D8           RTI
                 .byte $3C
                 .byte $40
                 .byte $48
                 .byte $51
                 .byte $48
                 .byte $40
                 .byte $3C
                 .byte $40
                 .byte $48
                 .byte $40
                 .byte $3C
                 .byte $35
                 .byte $3C
                 .byte $40
                 .byte $48
                 .byte $51
                 .byte $48
                 .byte $51
                 .byte $48
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $D2
                 LDA L_19AA,Y
                 BNE L_1900
                 LDY #$00
                 STY $0673
                 LDA L_19AA,Y
L_1900           LDA #$00
                 STA $0670
                 STA $0674
                 STA $0672
                 STA $0673
                 STA $0675
                 LDA #$07
L_1913           STA $0671
                 RTS
L_1917           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_1920           LDA $0658
                 BNE L_1926
                 RTS
L_1926           DEC $0670
                 BNE L_1939
                 INC $0674
                 LDA $0674
                 CMP #$10
                 BCC L_1939
                 JSR L_1900
                 RTS
L_1939           LDA $0670
                 AND #$07
                 STA $0675
                 LDX $0674
                 LDA L_198A,X
                 ORA $0675
                 STA AUDC1
                 LDA $0675
                 ORA #$A0
                 STA AUDC2
                 LDA $0670
                 AND $0671
                 BNE L_1989
                 LDX $0672
                 LDY $0673
                 LDA L_199A,X
                 BNE L_1970
                 LDX #$00
                 STX $0672
                 LDA L_199A,X
L_1970           STA AUDF1
                 LDA L_19AA,Y
                 BNE L_1980
                 LDY #$00
                 STY $0673
                 LDA L_19AA,Y
L_1980           STA AUDF2
                 INC $0672
                 INC $0673
L_1989           RTS
L_198A           .byte $9E
                 .byte $9E
                 .byte $9E
                 .byte $9F
                 .byte $DF
                 .byte $DE
                 .byte $DF
                 .byte $9F
                 .byte $9E
                 .byte $9E
                 .byte $9F
                 .byte $DF
                 .byte $9F
                 .byte $9E
                 .byte $9E
                 .byte $9F
L_199A           .byte $2A
                 .byte $28
                 .byte $2A
                 .byte $28
                 .byte $1F
                 .byte $2A
                 .byte $01
                 .byte $2A
                 .byte $28
                 .byte $2A
                 .byte $35
                 .byte $2F
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_19AA           .byte $40
                 .byte $01
                 .byte $80
                 .byte $01
                 .byte $40
                 .byte $01
                 .byte $90
                 .byte $01
                 .byte $40
                 .byte $01
                 .byte $80
                 .byte $01
                 .byte $40
                 .byte $01
                 .byte $90
                 .byte $01
                 .byte $40
                 .byte $01
                 .byte $80
                 .byte $01
                 .byte $40
                 .byte $01
                 .byte $90
                 .byte $01
                 .byte $40
L_19C3           .byte $01
L_19C4           .byte $80
                 .byte $01
                 .byte $40
                 .byte $01
                 .byte $90
                 .byte $01
                 .byte $40
                 .byte $2F
                 .byte $80
                 .byte $23
                 .byte $40
                 .byte $28
                 .byte $90
                 .byte $35
                 .byte $40
                 .byte $2F
                 .byte $80
                 .byte $23
                 .byte $40
                 .byte $28
                 .byte $90
                 .byte $35
                 .byte $40
                 .byte $23
                 .byte $80
                 .byte $2F
                 .byte $40
                 .byte $35
                 .byte $90
                 .byte $28
                 .byte $40
                 .byte $2F
                 .byte $80
                 .byte $2F
                 .byte $40
                 .byte $35
                 .byte $90
                 .byte $35
                 .byte $40
                 .byte $35
                 .byte $80
                 .byte $2A
                 .byte $40
                 .byte $2F
                 .byte $90
                 .byte $23
                 .byte $40
                 .byte $1F
                 .byte $80
                 .byte $28
                 .byte $40
                 .byte $23
                 .byte $90
                 .byte $2F
                 .byte $40
                 .byte $2F
                 .byte $80
                 .byte $1F
                 .byte $40
                 .byte $1F
                 .byte $90
                 .byte $28
                 .byte $40
                 .byte $1F
                 .byte $80
                 .byte $2F
                 .byte $40
                 .byte $23
                 .byte $90
                 .byte $2F
                 .byte $00
                 .byte $40
                 .byte $23
                 .byte $90
                 .byte $2F
                 .byte $40
                 .byte $2F
                 .byte $80
                 .byte $1F
                 .byte $40
                 .byte $1F
                 .byte $90
                 .byte $28
                 .byte $40
                 .byte $1F
                 .byte $80
                 .byte $2F
                 .byte $40
                 .byte $23
                 .byte $90
L_1A1E           .byte $2F
                 .byte $00
                 .byte $6F
                 STA L_975E+2,X
                 INX
                 CPX #$08
                 BNE L_1A1E
                 RTS
                 LDA #$00
                 STA $0641
                 LDX #$00
                 LDA L_6F94+1,X
                 STA L_34AC+1,X
                 ASL PTABW
                 .byte $FF
                 BEQ L_1A44
                 LDA $0615
                 BNE L_1A44
                 JSR L_5E5F+1
L_1A44           LDA $0615
                 CMP #$01
                 BNE L_1A52
                 JSR L_47FE+2
                 JSR L_47FE+2
                 RTS
L_1A52           CMP #$02
                 BNE L_1A5A
                 JSR L_574F+1
                 RTS
L_1A5A           CMP #$03
                 BNE L_1A65
                 JSR L_6360
                 JSR L_6500
                 RTS
L_1A65           CMP #$04
                 BNE L_1A70
                 JSR L_6360
                 JSR L_61BF+1
                 RTS
L_1A70           CMP #$05
                 BNE L_1A78
                 JSR L_5C40
                 RTS
L_1A78           CMP #$06
                 BNE L_1A80
                 JSR L_1F1F+1
                 RTS
L_1A80           CMP #$07
                 BNE L_1A88
                 JSR L_1DBF+1
                 RTS
L_1A88           CMP #$08
                 BNE L_1A90
                 JSR L_47FE+2
                 RTS
L_1A90           CMP #$FF
                 BNE L_1A98
                 JSR L_6680
                 RTS
L_1A98           .byte $60
                 .byte $00
                 .byte $20
                 .byte $20
                 .byte $4C
                 .byte $44
                 .byte $41
                 .byte $20
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_1B00           LDA #$EF
                 STA AUDC4
                 LDX $066C
                 LDA $066B
                 BNE L_1B15
                 DEX
                 BMI L_1B16
                 INC $066B
                 BNE L_1B16
L_1B15           INX
L_1B16           STX AUDF4
                 STX $066C
                 LDA $0614
                 CMP #$01
                 BPL L_1B4C
                 LDA #$01
                 STA $060E
                 LDA $0611
                 CMP #$10
                 BCC L_1B36
                 DEC $0611
                 JSR L_4B80
                 RTS
L_1B36           INC $0614
                 LDA #$00
                 STA $066B
                 LDA #$B0
                 STA AUDF4
                 STA $066C
                 LDA #$EC
                 STA AUDC4
                 RTS
L_1B4C           LDX #$00
                 LDY $0611
                 INC $0614
                 LDA $0614
                 CMP #$08
                 BCS L_1B6B
L_1B5B           LDA L_3C4E,X
                 STA L_3470,Y
                 STA L_3570,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_1B5B
                 RTS
L_1B6B           CMP #$10
                 BCS L_1B7F
L_1B6F           LDA L_3C5B,X
                 STA L_3470,Y
                 STA L_3570,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_1B6F
                 RTS
L_1B7F           CMP #$18
                 BCS L_1B93
L_1B83           LDA L_3C68,X
                 STA L_3470,Y
                 STA L_3570,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_1B83
                 RTS
L_1B93           CMP #$20
                 BCS L_1BA7
L_1B97           LDA L_3C75,X
                 STA L_3470,Y
                 STA L_3570,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_1B97
                 RTS
L_1BA7           CMP #$48
                 BCS L_1BBE
                 INC $0611
L_1BAE           LDA L_3C82,X
                 STA L_3470,Y
                 STA L_3570,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_1BAE
                 RTS
L_1BBE           CMP #$50
                 BCS L_1BD2
L_1BC2           LDA L_3C8F,X
                 STA L_3470,Y
                 STA L_3570,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_1BC2
                 RTS
L_1BD2           CMP #$58
                 BCS L_1BE6
L_1BD6           LDA L_3C9C,X
                 STA L_3470,Y
                 STA L_3570,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_1BD6
                 RTS
L_1BE6           LDA #$00
                 STA $0613
                 STA AUDC4
                 RTS
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $9B
                 .byte $52
                 .byte $17
                 .byte $10
                 .byte $20
                 .byte $20
                 .byte $42
L_1C00           LDA $06BB
                 BNE L_1C3F
                 LDA $06BF
                 BNE L_1C3F
                 LDA $0665
                 BNE L_1C1F
                 LDA #$B0
                 STA AUDF3
                 STA $0666
                 LDA #$E3
                 STA AUDC3
L_1C1C           STA $0665
L_1C1F           LDX $0666
                 LDA $0683
                 BMI L_1C34
                 INX
                 BMI L_1C39
L_1C2A           LDA #$00
L_1C2C           STA AUDC3
                 STA $0665
                 BEQ L_1C3F
L_1C34           DEX
                 BMI L_1C39
                 BPL L_1C2A
L_1C39           STX $0666
                 STX AUDF3
L_1C3F           LDA $0634
                 CMP #$FF
                 BEQ L_1C4E
                 LDA $0615
                 BNE L_1C4E
                 JSR L_5E38
L_1C4E           LDA $0615
                 CMP #$01
                 BNE L_1C5C
                 JSR L_47FE+2
                 JSR L_47FE+2
                 RTS
L_1C5C           CMP #$02
                 BNE L_1C64
                 JSR L_574F+1
                 RTS
L_1C64           CMP #$03
                 BNE L_1C7A
                 LDA $06C2
                 BNE L_1C73
                 JSR L_6360
                 JMP L_1C76
L_1C73           JSR L_1700
L_1C76           JSR L_6500
                 RTS
L_1C7A           CMP #$04
                 BNE L_1C90
                 LDA $06C2
                 BNE L_1C89
                 JSR L_6360
                 JMP L_1C8C
L_1C89           JSR L_1700
L_1C8C           JSR L_61BF+1
                 RTS
L_1C90           CMP #$05
                 BNE L_1CA0
                 LDA $06B2
                 BEQ L_1C9C
                 JSR L_5C40
L_1C9C           JSR L_5C40
                 RTS
L_1CA0           CMP #$06
                 BNE L_1CA8
                 JSR L_1F1F+1
                 RTS
L_1CA8           CMP #$07
                 BNE L_1CB0
                 JSR L_1DBF+1
                 RTS
L_1CB0           CMP #$08
                 BNE L_1CB8
                 JSR L_1500
                 RTS
L_1CB8           CMP #$09
                 BNE L_1CC3
                 JSR L_1500
                 JSR L_1630
                 RTS
L_1CC3           CMP #$0A
                 BNE L_1CCB
                 JSR L_6AFE+2
                 RTS
L_1CCB           CMP #$0B
                 BNE L_1CD3
                 JSR L_B200
                 RTS
L_1CD3           CMP #$FF
                 BNE L_1CDB
                 JSR L_6680
                 RTS
L_1CDB           RTS
                 ASL STARP+1
                 .byte $02
                 STA B0_ICBAL,X
                 LDA #$19
                 STA B0_ICBAH,X
                 LDA #$06
                 STA B0_ICBLL,X
                 LDA #$00
                 STA B0_ICBLH,X
                 BIT L_159D+1
                 BPL L_1D05
                 LDA #$04
                 STA B0_ICBLL,X
                 LDA #$C3
                 STA B0_ICBAL,X
                 LDA #$19
                 STA B0_ICBAH,X
L_1D05           JSR L_31E9
                 LDX #$10
                 LDA #$F9
                 STA B0_ICBLL,X
                 LDA #$13
                 STA B0_ICBLH,X
                 INC B0_ICBLL,X
                 BNE L_1D1C
                 INC B0_ICBLH,X
L_1D1C           LDA L_19C3
                 STA B0_ICBAL,X
                 LDA L_19C4
                 STA B0_ICBAH,X
                 JMP L_1893
                 .byte $53
                 EOR (COLCRS+1,X)
                 EOR ICSPRZ+1
L_1D30           LDY $0690
                 CPY #$B0
                 BCC L_1D61
                 LDX #$00
                 TXA
L_1D3A           STA L_3600,Y
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$10
                 BNE L_1D3A
                 LDA #$00
                 STA $0615
                 STA $0616
                 LDA #$11
                 STA L_542E+1
                 INC $06CC
                 LDA $06CC
                 CMP #$05
                 BCS L_1D60
                 DEC $06AF
L_1D60           RTS
L_1D61           LDA $060F
                 CMP $06A0
                 BEQ L_1D75
                 BCS L_1D72
                 DEC $06A0
                 LDA #$01
                 BNE L_1D75
L_1D72           INC $06A0
L_1D75           LDA $06A0
                 STA HPOSP2
                 STA HPOSP3
                 LDA $0625
                 BNE L_1D84
                 RTS
L_1D84           LDX #$00
                 LDA $0684
                 BNE L_1D9E
L_1D8B           LDA L_2EFF,X
                 STA L_3600,Y
                 LDA L_2F10,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$10
                 BNE L_1D8B
                 RTS
L_1D9E           LDA L_2FC0,X
                 STA L_3600,Y
                 LDA #$00
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$10
                 BNE L_1D9E
                 RTS
                 .byte $00
                 .byte $00
                 .byte $99
                 .byte $00
                 .byte $37
                 .byte $C8
                 .byte $E8
                 .byte $E0
                 .byte $10
                 .byte $D0
                 .byte $EF
                 .byte $60
                 .byte $00
                 .byte $00
                 .byte $36
L_1DBF           LDA #$AD
                 ASL TRAMSZ,X
                 BNE L_1DDD
                 LDA #$B0
                 STA $0690
                 LDA #$20
                 STA $06A0
                 LDA #$0C
                 STA L_542E+1
                 LDA #$00
                 STA $0669
                 INC $0616
                 RTS
L_1DDD           CMP #$02
                 BNE L_1DF2
                 DEC $0690
                 LDY $0690
                 CPY #$90
                 BCS L_1E01
                 LDA #$01
                 STA $0616
                 BNE L_1E01
L_1DF2           INC $0690
                 LDY $0690
                 CPY #$B8
                 BCC L_1E01
                 LDA #$02
                 STA $0616
L_1E01           INC $0617
                 LDA $0617
                 CMP #$03
                 BCC L_1E1F
                 LDA #$00
                 STA $0617
                 INC $0684
                 LDA $0684
                 CMP #$03
                 BMI L_1E1F
                 LDA #$01
L_1E1C           STA $0684
L_1E1F           LDA #$04
                 STA $0668
                 LDA $0669
                 BEQ L_1E2B
                 BNE L_1E9F
L_1E2B           INC $06A0
                 LDA $06A0
                 CMP #$D0
                 BEQ L_1E3D
                 SEC
                 SBC #$30
                 CMP $060F
                 BNE L_1E4D
L_1E3D           LDX #$00
L_1E3F           TXA
L_1E40           STA L_3600,X
                 STA L_3700,X
                 INX
                 BNE L_1E40
                 INC $0669
                 RTS
L_1E4D           LDA $06A0
                 STA HPOSP2
                 STA HPOSP3
                 LDA $0684
                 CMP #$02
                 BEQ L_1E7E
L_1E5D           LDX #$0E
L_1E5F           LDA L_2F5A,X
                 STA L_3600,Y
                 LDA L_2F69,X
                 STA L_3700,Y
                 DEY
                 DEX
                 CPX #$FF
                 BNE L_1E5F
                 DEY
                 DEY
                 DEY
                 DEY
                 DEC $0668
                 LDA $0668
                 BNE L_1E5D
                 RTS
L_1E7E           LDX #$0E
L_1E80           LDA L_2F5A,X
                 STA L_3600,Y
                 LDA L_2F78,X
                 STA L_3700,Y
                 DEY
                 DEX
                 CPX #$FF
                 BNE L_1E80
                 DEY
                 DEY
                 DEY
                 DEY
                 DEC $0668
                 LDA $0668
L_1E9C           BNE L_1E7E
                 RTS
L_1E9F           DEC $06A0
                 LDA $06A0
                 CMP #$20
                 BCS L_1EC1
                 LDX #$00
                 TXA
L_1EAC           STA L_3600,X
                 STA L_3700,X
                 INX
                 BNE L_1EAC
                 STA $0615
                 STA $0616
                 LDA #$11
                 STA L_542E+1
                 RTS
L_1EC1           STA HPOSP2
                 STA HPOSP3
                 LDA $0684
                 CMP #$02
                 BEQ L_1EEF
L_1ECE           LDX #$0E
L_1ED0           LDA L_2F87,X
                 STA L_3600,Y
                 LDA L_2F96,X
                 STA L_3700,Y
                 DEY
                 DEX
                 CPX #$FF
                 BNE L_1ED0
                 DEY
                 DEY
                 DEY
                 DEY
                 DEC $0668
                 LDA $0668
                 BNE L_1ECE
                 RTS
L_1EEF           LDX #$0E
L_1EF1           LDA L_2F87,X
                 STA L_3600,Y
                 LDA L_2FA5,X
                 STA L_3700,Y
                 DEY
                 DEX
                 CPX #$FF
L_1F01           BNE L_1EF1
                 DEY
                 DEY
                 DEY
                 DEY
                 DEC $0668
                 LDA $0668
                 BNE L_1EEF
                 RTS
                 .word $0000
                 BNE L_1F01+1
                 RTS
                 CMP #$03
                 BCS L_1F3A
L_1F19           INC $06A0
                 INC $061D
L_1F1F           STX L_16AD
                 ASL $D0
                 .byte $13
                 LDA #$B0
                 STA $0690
                 LDA #$D8
                 STA $06A0
                 LDA #$0A
                 STA L_542E+1
                 INC $0616
                 RTS
                 CMP #$02
L_1F3A           BNE L_1F4D
                 DEC $0690
                 LDY $0690
                 CPY #$9C
                 BCS L_1F5C
                 LDA #$01
                 STA $0616
                 BNE L_1F5C
L_1F4D           INC $0690
                 LDY $0690
                 CPY #$B4
                 BCC L_1F5C
                 LDA #$02
                 STA $0616
L_1F5C           INC $0617
                 LDA $0617
                 CMP #$03
                 BCC L_1F7A
                 LDA #$00
                 STA $0617
                 INC $0684
                 LDA $0684
                 CMP #$03
                 BMI L_1F7A
                 LDA #$01
                 STA $0684
L_1F7A           LDA #$06
                 STA $0668
                 DEC $06A0
                 LDA $06A0
                 CMP #$20
                 BCS L_1FA1
                 LDX #$00
                 TXA
L_1F8C           STA L_3600,X
                 STA L_3700,X
                 INX
                 BNE L_1F8C
                 STA $0615
                 STA $0616
                 LDA #$11
                 STA L_542E+1
                 RTS
L_1FA1           STA HPOSP2
                 STA HPOSP3
                 LDA $0684
                 CMP #$02
                 BEQ L_1FCE
L_1FAE           LDX #$0C
L_1FB0           LDA L_3E0F,X
                 STA L_3600,Y
                 LDA L_3E1C,X
                 STA L_3700,Y
                 DEY
                 DEX
                 CPX #$FF
                 BNE L_1FB0
                 DEY
                 DEY
                 DEY
                 DEC $0668
                 LDA $0668
                 BNE L_1FAE
                 RTS
L_1FCE           LDX #$0C
L_1FD0           LDA L_3E0F,X
                 STA L_3600,Y
                 LDA L_3E29,X
                 STA L_3700,Y
                 DEY
                 DEX
                 CPX #$FF
                 BNE L_1FD0
                 DEY
                 DEY
                 DEY
                 DEC $0668
                 LDA $0668
                 BNE L_1FCE
                 LDA #$00
                 RTS
                 .byte $00
                 .byte $00
                 .byte $60
                 .byte $00
                 .byte $05
                 .byte $06
                 .byte $20
                 .byte $3B
                 .byte $9B
                 .byte $82
                 .byte $05
                 .byte $06
                 .byte $20
                 .byte $3B
                 .byte $9B
                 .byte $8C
L_2000           .byte $AD
                 .byte $5C
                 .byte $06
                 .byte $F0
                 .byte $03
                 .byte $4C
                 .byte $63
                 .byte $20
                 INC $065C
                 LDA #$21
                 STA RUNSTK+1
                 LDA #$21
                 STA RUNSTK
                 LDA #$83
                 STA TOPSTK+1
                 LDA #$21
                 STA TOPSTK
                 LDY #$00
L_201D           LDA (RUNSTK),Y
L_201F           STA (TOPSTK),Y
                 CPY #$A0
                 BNE L_202B
                 LDA TOPSTK+1
L_2027           CMP #$8F
                 BEQ L_2035
L_202B           INY
                 BNE L_201D
                 INC RUNSTK+1
                 INC TOPSTK+1
                 JMP L_201D
L_2035           LDX #$00
L_2037           LDA L_2A59,X
                 STA L_8FDB+2,X
                 LDA L_2B21,X
                 STA L_90A5,X
                 LDA L_2BE9,X
                 STA L_916D,X
                 INX
                 CPX #$C8
                 BNE L_2037
                 RTS
                 .byte $00
L_2050           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_2063           LDA #$00
                 STA $065C
                 LDA #$A0
                 STA RUNSTK+1
                 LDA #$61
                 STA RUNSTK
                 LDA #$83
                 STA TOPSTK+1
                 LDA #$21
                 STA TOPSTK
                 LDY #$00
L_207A           LDA (RUNSTK),Y
                 STA (TOPSTK),Y
                 CPY #$A0
                 BNE L_2088
                 LDA TOPSTK+1
                 CMP #$8F
                 BEQ L_2092
L_2088           INY
                 BNE L_207A
                 INC RUNSTK+1
                 INC TOPSTK+1
                 JMP L_207A
L_2092           LDX #$00
L_2094           LDA L_A997+2,X
                 STA L_8FDB+2,X
                 LDA L_AA61,X
                 STA L_90A5,X
                 LDA L_AB29,X
                 STA L_916D,X
                 INX
                 CPX #$C8
                 BNE L_2094
                 RTS
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $30
                 .byte $2C
                 .byte $58
                 .byte $9B
                 .byte $56
                 .byte $0E
                 .byte $11
                 .byte $20
                 .byte $20
                 .byte $53
                 .byte $54
                 .byte $41
                 .byte $20
                 .byte $33
                 .byte $36
                 .byte $38
                 .byte $32
                 .byte $39
                 .byte $2C
                 .byte $58
                 .byte $9B
                 .byte $60
                 .byte $0E
                 .byte $11
                 .byte $20
                 .byte $20
                 .byte $4C
                 .byte $44
                 .byte $41
                 .byte $20
                 .byte $31
                 .byte $31
                 .byte $30
                 .byte $38
                 .byte $30
                 .byte $2C
                 .byte $58
                 .byte $9B
                 .byte $6A
                 .byte $0E
                 .byte $11
                 .byte $20
                 .byte $20
                 .byte $53
                 .byte $54
                 .byte $41
                 .byte $20
                 .byte $33
                 .byte $37
                 .byte $30
                 .byte $32
                 .byte $39
                 .byte $2C
                 .byte $58
                 .byte $9B
                 .byte $74
                 .byte $0E
                 .byte $11
                 .byte $20
                 .byte $20
                 .byte $4C
                 .byte $44
                 .byte $41
                 .byte $20
                 .byte $31
                 .byte $31
                 .byte $32
                 .byte $38
                 .byte $30
                 .byte $2C
                 .byte $58
                 .byte $9B
                 .byte $7E
                 .byte $0E
                 .byte $11
                 .byte $20
                 .byte $20
                 .byte $53
                 .byte $54
                 .byte $41
                 .byte $20
                 .byte $33
                 .byte $37
                 .byte $32
                 .byte $32
                 .byte $39
                 .byte $2C
                 .byte $58
                 .byte $9B
                 .byte $88
                 .byte $0E
                 .byte $11
                 .byte $20
                 .byte $20
L_210F           .byte $4C
                 .byte $44
                 .byte $41
                 .byte $20
                 .byte $31
                 .byte $31
                 .byte $34
                 .byte $38
                 .byte $30
                 .byte $2C
                 .byte $58
                 .byte $9B
                 .byte $92
                 .byte $0E
                 .byte $11
                 .byte $20
                 .byte $20
                 .byte $53
                 .byte $39
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $39
                 .byte $49
                 .byte $4A
                 .byte $0C
                 .byte $4A
                 .byte $4B
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
L_2133           .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $49
                 .byte $15
                 .byte $3A
                 .byte $49
                 .byte $4A
                 .byte $0C
                 .byte $4A
                 .byte $4A
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $0C
                 .byte $4A
                 .byte $4B
                 .byte $3A
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $49
                 .byte $4A
                 .byte $4A
                 .byte $4A
                 .byte $4B
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $49
                 .byte $4A
                 .byte $0C
                 .byte $15
                 .byte $49
                 .byte $0C
                 .byte $19
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $19
                 .byte $0C
                 .byte $50
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $49
                 .byte $4A
                 .byte $4A
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $14
                 .byte $19
                 .byte $0C
                 .byte $4B
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $49
                 .byte $4A
                 .byte $4A
                 .byte $0C
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $19
                 .byte $4A
                 .byte $4B
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $49
                 .byte $4A
                 .byte $4A
                 .byte $0C
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $0C
                 .byte $4A
                 .byte $4A
                 .byte $4A
                 .byte $0C
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $19
                 .byte $0C
                 .byte $4A
                 .byte $0C
                 .byte $4A
                 .byte $0C
                 .byte $0C
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $18
                 .byte $19
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $64
                 .byte $65
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
L_2221           .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
L_223A           .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $76
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $19
                 .byte $66
                 .byte $67
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $68
                 .byte $69
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $77
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $15
L_2280           .byte $16
                 .byte $15
                 .byte $19
                 .byte $64
                 .byte $65
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
L_228A           .byte $16
                 .byte $16
                 .byte $16
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $6A
                 .byte $6B
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $6C
                 .byte $6F
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $66
                 .byte $67
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $6C
                 .byte $3A
                 .byte $6F
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $64
                 .byte $14
                 .byte $16
                 .byte $66
                 .byte $67
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $6C
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $6F
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
L_2300           .byte $15
                 .byte $14
                 .byte $68
                 .byte $69
                 .byte $16
                 .byte $15
                 .byte $6B
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $6C
                 .byte $3A
                 .byte $39
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $72
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $19
                 .byte $70
                 .byte $39
L_233B           .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $6E
                 .byte $6D
                 .byte $6E
                 .byte $6D
                 .byte $6E
                 .byte $6F
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $18
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $70
                 .byte $3A
                 .byte $39
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $39
                 .byte $71
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $65
                 .byte $67
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $19
                 .byte $72
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $75
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $18
                 .byte $19
                 .byte $15
                 .byte $19
                 .byte $64
                 .byte $65
                 .byte $66
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $19
                 .byte $6C
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $3A
                 .byte $6F
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $18
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $18
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $18
                 .byte $72
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $3A
                 .byte $75
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
L_2400           .byte $19
                 .byte $72
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $75
                 .byte $72
                 .byte $3A
                 .byte $39
                 .byte $75
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $18
                 .byte $19
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $72
                 .byte $73
L_242C           .byte $74
                 .byte $75
                 .byte $14
                 .byte $19
                 .byte $72
                 .byte $75
                 .byte $15
                 .byte $14
L_2434           .byte $16
                 .byte $14
                 .byte $15
L_2437           .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
L_243C           .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $19
                 .byte $18
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $18
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $18
                 .byte $18
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $1C
                 .byte $64
                 .byte $65
                 .byte $66
                 .byte $1C
                 .byte $65
L_24DB           .byte $67
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $16
                 .byte $15
L_24EC           .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $76
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $16
L_2511           .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $18
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $76
                 .byte $1C
                 .byte $1B
                 .byte $1A
                 .byte $1B
                 .byte $77
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $6C
                 .byte $6D
                 .byte $6D
                 .byte $6E
                 .byte $6F
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $76
                 .byte $14
                 .byte $15
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $6C
                 .byte $6D
                 .byte $6D
                 .byte $6E
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $6D
                 .byte $6E
                 .byte $6F
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $19
                 .byte $68
                 .byte $1A
                 .byte $6A
                 .byte $6B
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $6C
                 .byte $6E
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $6D
                 .byte $6E
                 .byte $6F
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $16
                 .byte $72
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $71
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $6C
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $6C
                 .byte $6D
                 .byte $6E
                 .byte $6F
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $72
                 .byte $73
                 .byte $74
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $6C
                 .byte $6D
                 .byte $6F
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
L_261D           .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $72
                 .byte $73
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $6E
                 .byte $6F
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $72
                 .byte $73
                 .byte $75
                 .byte $14
                 .byte $15
                 .byte $72
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $73
                 .byte $74
                 .byte $75
                 .byte $73
                 .byte $74
                 .byte $75
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $18
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $72
                 .byte $73
                 .byte $74
                 .byte $6F
                 .byte $6C
                 .byte $74
                 .byte $75
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $64
                 .byte $65
                 .byte $1C
                 .byte $66
                 .byte $67
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $76
                 .byte $14
                 .byte $15
                 .byte $1B
                 .byte $77
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $18
                 .byte $19
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $18
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $18
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $68
                 .byte $69
                 .byte $14
                 .byte $6B
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $18
                 .byte $19
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $19
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $19
                 .byte $18
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $18
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $18
                 .byte $18
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $1C
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $18
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $6C
                 .byte $6D
                 .byte $6D
                 .byte $6E
                 .byte $6F
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
L_286C           .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $6C
                 .byte $6D
                 .byte $6D
                 .byte $6E
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $6D
                 .byte $6E
                 .byte $6F
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $6C
                 .byte $6E
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $6D
                 .byte $6E
                 .byte $6F
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $16
                 .byte $72
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $71
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $6C
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $72
                 .byte $73
                 .byte $74
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $74
                 .byte $75
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $72
                 .byte $73
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $73
                 .byte $74
                 .byte $73
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $72
                 .byte $73
                 .byte $75
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $18
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $18
                 .byte $19
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $17
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $18
L_2A08           .byte $14
                 .byte $15
                 .byte $16
                 .byte $18
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
L_2A1C           .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
L_2A59           .byte $18
                 .byte $19
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $19
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $19
                 .byte $1C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $1B
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $1A
                 .byte $14
                 .byte $15
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $14
                 .byte $14
                 .byte $16
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $1B
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $15
L_2B21           .byte $18
                 .byte $19
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $1B
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $1C
                 .byte $0C
                 .byte $0C
                 .byte $0C
L_2B3B           .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $18
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $18
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $1B
                 .byte $14
                 .byte $1C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $18
                 .byte $19
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $1C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $18
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $1C
                 .byte $0C
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $15
L_2BE9           .byte $19
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $1C
                 .byte $0C
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $4E
                 .byte $4F
                 .byte $4F
                 .byte $4F
                 .byte $0C
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $16
                 .byte $15
                 .byte $18
                 .byte $15
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $4E
                 .byte $4F
                 .byte $4F
                 .byte $4F
                 .byte $0C
                 .byte $14
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $4F
                 .byte $4F
                 .byte $4F
                 .byte $0C
                 .byte $0C
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $4F
                 .byte $4F
                 .byte $0C
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $14
                 .byte $16
                 .byte $14
                 .byte $14
                 .byte $15
                 .byte $15
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $4E
                 .byte $4F
                 .byte $4F
                 .byte $4F
                 .byte $4D
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $4E
                 .byte $4F
                 .byte $4F
                 .byte $0C
                 .byte $14
                 .byte $19
                 .byte $0C
                 .byte $0C
                 .byte $4F
                 .byte $4F
                 .byte $4F
                 .byte $4D
                 .byte $39
                 .byte $3A
                 .byte $4E
                 .byte $4F
                 .byte $4F
                 .byte $0C
                 .byte $14
                 .byte $16
                 .byte $16
                 .byte $15
                 .byte $14
                 .byte $15
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $4E
                 .byte $4F
                 .byte $4F
                 .byte $4F
                 .byte $4D
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $4E
                 .byte $4F
                 .byte $4F
                 .byte $4F
                 .byte $4F
                 .byte $4F
                 .byte $15
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $15
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $3A
                 .byte $39
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_2E29           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_2EFF           .byte $00
L_2F00           .byte $00
                 .byte $38
                 .byte $6C
                 .byte $38
                 .byte $54
                 .byte $38
                 .byte $10
                 .byte $7C
                 .byte $BA
                 .byte $BA
                 .byte $6C
                 .byte $92
                 .byte $6C
                 .byte $10
                 .byte $10
                 .byte $00
L_2F10           .byte $00
L_2F11           .byte $00
                 .byte $00
                 .byte $10
                 .byte $00
                 .byte $28
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $44
                 .byte $44
                 .byte $10
                 .byte $00
                 .byte $10
                 .byte $00
                 .byte $00
                 .byte $70
                 .byte $00
L_2F22           .byte $00
                 .byte $00
                 .byte $10
                 .byte $00
                 .byte $28
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $44
                 .byte $44
                 .byte $10
                 .byte $00
                 .byte $10
                 .byte $00
                 .byte $00
                 .byte $1C
                 .byte $00
                 .byte $24
                 .byte $FF
                 .byte $BD
                 .byte $FF
                 .byte $66
                 .byte $24
                 .byte $18
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $18
                 .byte $00
                 .byte $00
                 .byte $81
                 .byte $00
                 .byte $00
                 .byte $42
                 .byte $00
                 .byte $18
                 .byte $18
                 .byte $00
                 .byte $00
                 .byte $1C
                 .byte $00
                 .byte $00
                 .byte $18
                 .byte $00
                 .byte $00
                 .byte $42
                 .byte $00
                 .byte $00
                 .byte $42
                 .byte $00
                 .byte $18
                 .byte $18
                 .byte $00
                 .byte $00
                 .byte $20
L_2F5A           .byte $00
                 .byte $00
                 .byte $18
                 .byte $18
                 .byte $98
                 .byte $98
                 .byte $94
                 .byte $6A
                 .byte $6A
                 .byte $94
                 .byte $98
                 .byte $98
                 .byte $18
                 .byte $18
                 .byte $00
L_2F69           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $01
                 .byte $09
                 .byte $95
                 .byte $94
                 .byte $08
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_2F78           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $08
                 .byte $94
                 .byte $95
                 .byte $09
                 .byte $01
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_2F87           .byte $00
                 .byte $00
                 .byte $18
                 .byte $18
                 .byte $19
                 .byte $19
                 .byte $29
                 .byte $56
                 .byte $56
                 .byte $29
                 .byte $19
                 .byte $19
                 .byte $18
                 .byte $18
                 .byte $00
L_2F96           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $80
                 .byte $90
                 .byte $A9
                 .byte $29
                 .byte $10
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_2FA5           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $10
                 .byte $29
                 .byte $A9
                 .byte $90
                 .byte $80
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $20
                 .byte $5C
                 .byte $3A
                 .byte $35
                 .byte $CB
                 .byte $87
                 .byte $46
                 .byte $29
                 .byte $10
                 .byte $08
                 .byte $00
L_2FC0           .byte $00
                 .byte $00
                 .byte $10
                 .byte $10
                 .byte $10
                 .byte $10
                 .byte $10
                 .byte $10
                 .byte $10
                 .byte $10
                 .byte $10
                 .byte $10
                 .byte $10
                 .byte $10
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $10
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $08
                 .byte $10
                 .byte $29
                 .byte $46
                 .byte $87
                 .byte $CB
                 .byte $35
                 .byte $3A
                 .byte $5C
                 .byte $20
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_3000           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_3007           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_3010           .byte $00
L_3011           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_302F           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_303C           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_30BD           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_312D           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_31B0           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_31B6           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_31E9           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
L_3300           LDA $0616
                 BNE L_3345
L_3305           STA $06D3
                 STA $06D4
                 STA $06D8
                 STA $0625
                 LDA #$28
                 STA $0690
                 STA $06D0
                 LDA #$D0
                 STA $06A0
                 STA HPOSP2
L_3321           CLC
                 ADC #$1E
                 STA HPOSP3
                 LDA #$00
                 STA $06AC
                 LDA #$90
                 STA PCOLR3
                 STA PCOLR2
L_3334           LDA #$03
                 STA SIZEP2
                 STA SIZEP3
                 LDA #$0F
                 STA L_542E+1
                 INC $0616
                 RTS
L_3345           JSR L_B550
                 LDA $06D0
                 BEQ L_33B2
                 LDA $06D8
                 BNE L_3383
                 LDA $0684
                 BNE L_3369
                 LDA $06A0
                 CLC
                 ADC #$14
                 STA HPOSM0
                 ADC #$14
                 STA HPOSM1
                 CMP #$00
                 BNE L_3377
L_3369           LDA $06A0
                 CLC
                 ADC #$1A
                 STA HPOSM0
                 ADC #$07
                 STA HPOSM1
L_3377           LDA $0690
                 CLC
                 ADC #$1E
                 STA $06D9
                 INC $06D8
L_3383           LDX #$00
                 LDY $06D9
L_3388           LDA L_3300,Y
                 AND #$FA
                 STA L_3300,Y
                 INY
                 INX
                 CPX #$03
                 BNE L_3388
                 CPY #$B0
                 BCC L_33A1
                 LDA #$00
                 STA $06D8
                 BEQ L_33B2
L_33A1           STY $06D9
L_33A4           LDA L_3300,Y
                 ORA #$05
                 STA L_3300,Y
                 INY
                 INX
                 CPX #$06
                 BNE L_33A4
L_33B2           LDA $06D0
                 BEQ L_33FC
                 INC $0617
                 LDA $0617
                 CMP #$03
                 BCC L_33FC
                 LDA #$00
                 STA $0617
                 LDA $0684
                 BEQ L_33D4
                 LDA #$00
                 STA $0684
                 CMP #$00
                 BEQ L_33D7
L_33D4           INC $0684
L_33D7           LDA $06A0
                 CLC
                 ADC #$1C
                 CMP $060F
                 BEQ L_33F0
                 BCC L_33ED
                 DEC $06A0
                 LDA #$00
                 CMP #$00
                 BEQ L_33F0
L_33ED           INC $06A0
L_33F0           LDA $06A0
                 STA HPOSP2
                 CLC
                 ADC #$1E
                 STA HPOSP3
L_33FC           LDX #$00
L_33FE           LDY $0690
L_3401           LDA $06D0
                 BNE L_345A
L_3406           INC $0617
                 LDA $0617
L_340C           CMP #$06
                 BCS L_3411
                 RTS
L_3411           STX $0617
                 INC $06D1
L_3417           LDA $06D1
                 CMP #$10
                 BCS L_3421
                 JMP L_B424
L_3421           CMP #$18
                 BCS L_3438
L_3425           LDA L_B513,X
                 STA L_3600,Y
L_342B           LDA L_B530,X
L_342E           STA L_3700,Y
                 INY
                 INX
                 CPX #$1D
L_3435           BNE L_3425
L_3437           RTS
L_3438           TXA
L_3439           STA L_3600,Y
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$1D
                 BNE L_3439
                 STA $0616
                 STA AUDC4
                 STA $0615
                 LDA #$11
                 STA L_542E+1
                 JSR L_67E6
                 JSR L_67E6
                 RTS
L_345A           LDA M0PL
                 AND #$0C
                 BNE L_3468
                 LDA M3PL
                 AND #$0C
                 BEQ L_34C0
L_3468           LDY $0619
                 LDX #$00
L_346D           LDA L_3300,Y
L_3470           AND #$AF
                 STA L_3300,Y
                 DEY
                 INX
                 CPX #$0C
                 BNE L_346D
                 LDA #$00
L_347D           STA $061B
                 STA $061C
L_3483           INC $06AC
                 LDA $06AC
                 CMP #$50
                 BCC L_34A9
                 LDA #$00
L_348F           STA $06D0
                 STA $06D1
                 LDX #$00
                 LDY $06D9
L_349A           LDA L_3300,Y
                 AND #$FA
                 STA L_3300,Y
                 INY
                 INX
L_34A4           CPX #$03
                 BNE L_349A
                 RTS
L_34A9           JSR L_67B8
L_34AC           LDA $06D3
                 BNE L_34B8
                 INC $06D3
                 LDA #$00
                 BEQ L_34C0
L_34B8           LDA $06D4
                 BNE L_34C0
L_34BD           INC $06D4
L_34C0           LDA $0617
                 BNE L_34F0
                 LDA $0616
                 CMP #$01
                 BNE L_34E0
                 LDA $0690
                 CMP #$68
                 BCC L_34D9
                 LDA #$02
                 STA $0616
                 RTS
L_34D9           INC $0690
                 LDA #$00
                 BEQ L_34F0
L_34E0           LDA $0690
                 CMP #$28
                 BCS L_34ED
L_34E7           LDA #$01
L_34E9           STA $0616
                 RTS
L_34ED           DEC $0690
L_34F0           LDX #$00
                 LDY $0690
                 LDA $0684
                 BNE L_350D
L_34FA           LDA L_B465,X
                 STA L_3600,Y
L_3500           LDA L_B482,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$1D
                 BNE L_34FA
L_350C           RTS
L_350D           LDA L_B49F,X
                 STA L_3600,Y
                 LDA L_B4BC,X
                 STA L_3700,Y
                 INY
                 INX
L_351B           CPX #$1D
                 BNE L_350D
                 RTS
                 NOP
                 NOP
                 NOP
                 NOP
                 STX $0617
                 LDA #$0F
                 STA AUDC4
                 LDA $06D1
                 STA AUDF4
L_3532           LDA $06D2
                 BNE L_354D
L_3537           LDA L_B4D9,X
                 STA L_3600,Y
                 LDA L_B4F6,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$1D
                 BNE L_3537
                 INC $06D2
                 RTS
L_354D           LDA L_B465,X
                 STA L_3600,Y
                 LDA L_B482,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$1D
                 BNE L_354D
                 LDA #$00
                 STA $06D2
                 RTS
                 .byte $00
                 .byte $0F
                 .byte $1F
                 .byte $1F
                 .byte $1F
                 .byte $0E
                 .byte $01
                 .byte $01
                 .byte $01
                 .byte $01
                 .byte $01
L_3570           .byte $01
                 .byte $13
                 .byte $7F
                 .byte $FF
                 .byte $FF
                 .byte $EE
                 .byte $FE
                 .byte $EF
                 .byte $7F
                 .byte $32
                 .byte $03
                 .byte $62
                 .byte $03
                 .byte $01
                 .byte $01
                 .byte $00
                 .byte $06
                 .byte $00
                 .byte $00
                 .byte $F0
                 .byte $F8
                 .byte $F8
                 .byte $F8
                 .byte $70
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $C8
                 .byte $FE
                 .byte $FF
                 .byte $FF
                 .byte $77
                 .byte $7F
L_3594           .byte $F7
                 .byte $FE
                 .byte $4C
                 .byte $C0
                 .byte $46
                 .byte $C0
                 .byte $80
                 .byte $80
                 .byte $00
                 .byte $60
                 .byte $00
                 .byte $00
                 .byte $0F
                 .byte $1F
                 .byte $1F
                 .byte $1F
                 .byte $0E
                 .byte $01
                 .byte $01
                 .byte $01
                 .byte $01
                 .byte $01
                 .byte $01
L_35AB           .byte $13
                 .byte $7F
                 .byte $FF
                 .byte $FF
                 .byte $EE
                 .byte $FE
L_35B1           .byte $EF
                 .byte $7F
                 .byte $32
                 .byte $03
                 .byte $1A
                 .byte $03
                 .byte $01
                 .byte $01
                 .byte $00
                 .byte $01
                 .byte $00
                 .byte $00
                 .byte $F0
                 .byte $F8
                 .byte $F8
                 .byte $F8
                 .byte $70
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $C8
                 .byte $FE
                 .byte $FF
                 .byte $FF
                 .byte $77
                 .byte $7F
                 .byte $F7
                 .byte $FE
                 .byte $4C
                 .byte $C0
                 .byte $58
                 .byte $C0
                 .byte $80
                 .byte $80
                 .byte $00
                 .byte $80
                 .byte $00
                 .byte $00
                 .byte $0F
                 .byte $10
                 .byte $10
                 .byte $10
                 .byte $0E
                 .byte $01
                 .byte $01
                 .byte $01
                 .byte $01
                 .byte $01
                 .byte $01
                 .byte $02
                 .byte $7F
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $7F
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $01
                 .byte $01
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $F0
                 .byte $08
                 .byte $08
                 .byte $08
                 .byte $70
                 .byte $80
L_35FD           .byte $80
L_35FE           .byte $80
L_35FF           .byte $80
L_3600           .byte $80
                 .byte $80
                 .byte $40
                 .byte $FE
                 .byte $01
                 .byte $01
                 .byte $01
                 .byte $01
                 .byte $01
                 .byte $FE
                 .byte $40
                 .byte $40
L_360C           .byte $40
                 .byte $40
                 .byte $80
                 .byte $80
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $44
                 .byte $AA
                 .byte $AA
                 .byte $2A
                 .byte $4A
                 .byte $8A
                 .byte $8A
                 .byte $AA
                 .byte $E4
L_3628           .byte $00
L_3629           .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $44
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $44
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 LDA $06D7
                 BEQ L_365C
                 LDA #$00
                 STA $06D7
                 BEQ L_365F
L_365C           INC $06D7
L_365F           LDA $06D3
                 BEQ L_36C1
                 CMP #$01
                 BNE L_3680
                 LDA #$ED
                 STA PCOLR0
                 LDA $060F
                 SEC
                 SBC #$01
                 STA $0685
                 INC $06D3
                 LDA #$00
                 STA $06D5
                 BEQ L_36C1
L_3680           LDX #$00
                 LDA $0690
                 CLC
                 ADC #$10
                 TAY
                 INC $06D5
                 LDA $06D5
                 CMP #$04
                 BCC L_36A2
                 TXA
L_3694           STA L_33FE+2,Y
                 INY
                 INX
                 CPX #$08
                 BNE L_3694
                 STA $06D3
                 BEQ L_36C1
L_36A2           LDA $06D7
                 BNE L_36B5
L_36A7           LDA L_B620,X
                 STA L_33FE+2,Y
                 INY
                 INX
                 CPX #$08
                 BNE L_36A7
                 BEQ L_36C1
L_36B5           LDA L_B626+2,X
                 STA L_33FE+2,Y
                 INY
                 INX
                 CPX #$08
                 BNE L_36B5
L_36C1           LDA $06D4
                 BNE L_36C7
                 RTS
L_36C7           CMP #$01
                 BNE L_36E0
                 STA $06D6
                 LDA #$ED
                 STA PCOLR1
                 LDA $060F
                 CLC
                 ADC #$0A
                 STA $0686
                 INC $06D4
                 RTS
L_36E0           LDX #$00
                 LDA $0690
                 CLC
                 ADC #$10
                 TAY
                 INC $06D6
                 LDA $06D6
                 CMP #$05
                 BCC L_3701
                 TXA
L_36F4           STA L_3500,Y
                 INY
                 INX
                 CPX #$08
                 BNE L_36F4
L_36FD           STA $06D4
L_3700           RTS
L_3701           LDA $06D7
                 BNE L_3713
L_3706           LDA L_B620,X
                 STA L_3500,Y
L_370C           INY
                 INX
                 CPX #$08
                 BNE L_3706
                 RTS
L_3713           LDA L_B626+2,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$08
                 BNE L_3713
                 RTS
                 .byte $00
                 .byte $00
                 .byte $0E
                 .byte $1B
                 .byte $1F
L_3725           .byte $1B
                 .byte $0E
                 .byte $00
                 .byte $00
                 .byte $10
                 .byte $44
                 .byte $82
                 .byte $82
                 .byte $44
                 .byte $10
                 .byte $00
                 .byte $00
                 .byte $77
                 .byte $60
                 .byte $74
                 .byte $74
                 .byte $60
                 .byte $60
                 .byte $60
                 .byte $28
                 .byte $44
                 .byte $44
                 .byte $40
                 .byte $4C
                 .byte $44
                 .byte $44
                 .byte $28
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $6C
                 .byte $6C
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $7C
                 .byte $54
                 .byte $10
                 .byte $10
                 .byte $10
                 .byte $10
                 .byte $54
                 .byte $7C
                 .byte $63
                 .byte $63
                 .byte $36
                 .byte $14
                 .byte $14
                 .byte $36
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $76
                 .byte $70
                 .byte $76
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $60
                 .byte $60
                 .byte $60
                 .byte $60
                 .byte $60
                 .byte $63
                 .byte $77
                 .byte $77
                 .byte $77
                 .byte $6B
                 .byte $6B
                 .byte $6B
                 .byte $6B
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $36
                 .byte $77
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $36
                 .byte $77
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $77
                 .byte $36
L_3780           .byte $68
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $68
                 .byte $40
                 .byte $40
                 .byte $40
                 .byte $36
                 .byte $77
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $67
                 .byte $77
                 .byte $37
                 .byte $68
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $68
                 .byte $68
                 .byte $48
                 .byte $44
                 .byte $37
                 .byte $77
                 .byte $60
                 .byte $76
                 .byte $37
                 .byte $03
                 .byte $77
                 .byte $76
                 .byte $77
                 .byte $77
                 .byte $55
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $28
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $36
                 .byte $36
                 .byte $1C
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $6B
                 .byte $6B
                 .byte $6B
                 .byte $6B
                 .byte $77
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $36
                 .byte $36
                 .byte $1C
                 .byte $1C
                 .byte $1C
                 LDA $0615
                 BNE L_37D6
                 RTS
L_37D6           JSR L_4950
                 JSR L_4902+1
                 LDA $0616
                 BNE L_37EA
                 JSR L_55CC+2
                 JSR L_55B7
                 JSR L_55B7
L_37EA           JSR L_5760
L_37ED           LDA VCOUNT
                 CMP #$58
                 BCC L_37ED
                 LDX #$26
                 LDA L_9D08,X
                 STA L_9D09,X
                 LDA L_9D30,X
L_37FF           STA LNFLG,X
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $55
                 .byte $55
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $55
                 .byte $55
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $A0
                 .byte $A3
                 .byte $A0
                 .byte $A8
                 .byte $A8
                 .byte $AC
                 .byte $A8
                 .byte $A8
                 .byte $8A
                 .byte $8A
                 .byte $8A
                 .byte $0A
                 .byte $8A
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $63
                 .byte $63
                 .byte $06
                 .byte $0C
                 .byte $18
                 .byte $30
                 .byte $63
                 .byte $63
L_3838           .byte $00
                 .byte $00
                 .byte $00
                 .byte $08
                 .byte $08
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $FF
                 .byte $FF
                 .byte $FE
                 .byte $F8
                 .byte $E2
                 .byte $E2
                 .byte $EA
                 .byte $0A
                 .byte $AA
                 .byte $EA
                 .byte $EA
                 .byte $FA
                 .byte $FA
                 .byte $0E
                 .byte $C3
                 .byte $C3
                 .byte $AA
                 .byte $EA
                 .byte $EA
                 .byte $FA
                 .byte $FA
                 .byte $FE
                 .byte $FF
                 .byte $FF
                 .byte $AA
                 .byte $EA
                 .byte $FA
                 .byte $FE
                 .byte $FE
                 .byte $FA
                 .byte $EA
                 .byte $EA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
L_386D           .byte $AA
                 .byte $AA
                 .byte $AE
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $55
                 .byte $6A
                 .byte $6A
                 .byte $6A
                 .byte $6A
                 .byte $6A
                 .byte $6A
                 .byte $6A
                 .byte $55
                 .byte $A9
                 .byte $A9
                 .byte $A9
                 .byte $A9
                 .byte $A9
                 .byte $A9
                 .byte $A9
                 .byte $6A
                 .byte $6A
                 .byte $6A
                 .byte $6A
                 .byte $6A
                 .byte $6A
                 .byte $6A
                 .byte $55
                 .byte $A9
                 .byte $A9
                 .byte $A9
                 .byte $A9
                 .byte $A9
                 .byte $A9
                 .byte $A9
                 .byte $55
                 .byte $3C
                 .byte $FE
                 .byte $E3
                 .byte $03
                 .byte $8B
                 .byte $23
                 .byte $03
                 .byte $8A
                 .byte $FA
                 .byte $FA
                 .byte $FA
                 .byte $BE
                 .byte $BE
                 .byte $BF
                 .byte $AF
                 .byte $FB
                 .byte $BF
                 .byte $EF
                 .byte $FF
                 .byte $FF
                 .byte $AF
                 .byte $AF
                 .byte $FB
                 .byte $FE
                 .byte $FE
                 .byte $FE
                 .byte $FE
                 .byte $FB
                 .byte $BF
                 .byte $EF
                 .byte $FB
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $BF
                 .byte $BA
                 .byte $EE
                 .byte $9A
                 .byte $57
                 .byte $FE
                 .byte $FE
                 .byte $FE
                 .byte $FA
                 .byte $BE
                 .byte $EE
                 .byte $FA
                 .byte $EA
                 .byte $FA
                 .byte $FE
                 .byte $FE
                 .byte $FA
                 .byte $BF
                 .byte $EF
                 .byte $FB
                 .byte $FF
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AE
                 .byte $BE
                 .byte $BF
                 .byte $AF
                 .byte $BB
                 .byte $BF
                 .byte $EF
                 .byte $FF
                 .byte $FF
                 .byte $AF
                 .byte $AF
                 .byte $BB
                 .byte $AE
                 .byte $FA
                 .byte $FA
                 .byte $EA
                 .byte $EA
                 .byte $AA
                 .byte $FA
                 .byte $FA
                 .byte $EA
                 .byte $EA
                 .byte $AA
                 .byte $FA
                 .byte $FA
                 .byte $86
                 .byte $86
                 .byte $FA
                 .byte $FE
L_38F0           .byte $2A
                 .byte $95
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $AA
                 .byte $A5
                 .byte $95
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $A5
                 .byte $AA
                 .byte $6A
                 .byte $5A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $6A
                 .byte $FF
                 .byte $57
                 .byte $A7
                 .byte $A7
                 .byte $A7
                 .byte $A7
                 .byte $A7
                 .byte $A7
                 .byte $99
                 .byte $99
                 .byte $99
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $99
                 .byte $99
                 .byte $A9
                 .byte $A9
                 .byte $A9
                 .byte $A9
                 .byte $AA
                 .byte $AA
                 .byte $A9
                 .byte $A9
                 .byte $A7
                 .byte $A7
                 .byte $A7
                 .byte $AB
                 .byte $AB
                 .byte $AB
                 .byte $A7
L_3927           .byte $A7
                 .byte $AB
                 .byte $AF
                 .byte $B5
                 .byte $F5
                 .byte $D7
L_392D           .byte $DF
                 .byte $DF
                 .byte $DF
                 .byte $EA
                 .byte $FA
                 .byte $5E
                 .byte $5F
                 .byte $D7
                 .byte $F7
                 .byte $F7
                 .byte $F7
                 .byte $DF
L_3939           .byte $DF
L_393A           .byte $DF
                 .byte $DF
                 .byte $DF
                 .byte $DF
                 .byte $DF
                 .byte $DF
                 .byte $F7
                 .byte $F7
                 .byte $F7
                 .byte $F7
                 .byte $F7
                 .byte $F7
                 .byte $F7
                 .byte $F7
                 .byte $DF
                 .byte $DF
                 .byte $DF
L_394B           .byte $D7
                 .byte $F5
                 .byte $B5
                 .byte $AF
                 .byte $AB
L_3950           .byte $F7
                 .byte $F7
                 .byte $F7
                 .byte $D7
                 .byte $5F
                 .byte $5E
                 .byte $FA
                 .byte $EA
                 .byte $E2
                 .byte $C8
                 .byte $F0
                 .byte $BE
                 .byte $BC
                 .byte $AC
                 .byte $AF
                 .byte $AB
                 .byte $AB
                 .byte $AF
                 .byte $AE
                 .byte $BC
                 .byte $BE
                 .byte $F8
                 .byte $E2
                 .byte $C8
                 .byte $A5
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $95
                 .byte $A5
                 .byte $AA
                 .byte $6A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $5A
                 .byte $6A
                 .byte $AA
                 .byte $AA
                 .byte $55
L_397A           .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $95
                 .byte $9A
                 .byte $99
                 .byte $99
                 .byte $99
                 .byte $9A
                 .byte $9A
                 .byte $AA
                 .byte $56
                 .byte $A6
                 .byte $A6
                 .byte $A6
                 .byte $A6
                 .byte $A6
                 .byte $A6
                 .byte $9A
                 .byte $9A
                 .byte $99
                 .byte $99
                 .byte $99
                 .byte $9A
                 .byte $95
                 .byte $AA
                 .byte $89
                 .byte $25
                 .byte $FF
                 .byte $85
                 .byte $FF
                 .byte $85
                 .byte $21
                 .byte $88
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $9A
                 .byte $95
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
L_39AE           .byte $55
                 .byte $AA
                 .byte $A7
                 .byte $A7
                 .byte $A7
                 .byte $A7
                 .byte $A7
                 .byte $A7
                 .byte $57
                 .byte $BF
                 .byte $62
                 .byte $58
                 .byte $FF
                 .byte $50
                 .byte $FF
                 .byte $58
                 .byte $62
                 .byte $08
                 .byte $CE
                 .byte $CC
                 .byte $DC
                 .byte $56
                 .byte $54
                 .byte $54
                 .byte $58
                 .byte $62
                 .byte $02
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $20
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $80
                 .byte $00
                 .byte $00
                 .byte $00
                 .byte $02
                 .byte $00
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $A8
                 .byte $A8
                 .byte $AC
                 .byte $A8
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $8A
                 .byte $0A
                 .byte $A2
                 .byte $A2
                 .byte $A2
                 .byte $A0
                 .byte $A2
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $02
                 .byte $32
                 .byte $02
                 .byte $2A
                 .byte $2A
                 .byte $3A
                 .byte $2A
                 .byte $2A
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $A2
                 .byte $A0
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $2A
                 .byte $2A
                 .byte $3A
                 .byte $2A
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AB
                 .byte $AF
                 .byte $AF
                 .byte $AB
                 .byte $A8
                 .byte $A8
                 .byte $A8
                 .byte $A8
                 .byte $A8
                 .byte $E8
                 .byte $E8
                 .byte $A8
                 .byte $03
                 .byte $0E
                 .byte $0E
                 .byte $3A
                 .byte $3A
                 .byte $EA
                 .byte $EA
                 .byte $C0
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $00
                 .byte $C0
                 .byte $B0
                 .byte $B0
                 .byte $AC
                 .byte $AC
                 .byte $AB
                 .byte $AB
                 .byte $03
                 .byte $03
                 .byte $0E
                 .byte $0E
                 .byte $3A
                 .byte $3A
                 .byte $EA
                 .byte $EA
                 .byte $EA
                 .byte $FF
L_3A39           .byte $AA
L_3A3A           .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $C0
                 .byte $B0
                 .byte $B0
                 .byte $AC
                 .byte $AC
                 .byte $AB
                 .byte $AB
                 .byte $AB
                 .byte $85
                 .byte $15
                 .byte $56
L_3A4B           .byte $5A
                 .byte $9A
                 .byte $1A
                 .byte $5A
                 .byte $6A
                 .byte $61
                 .byte $96
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $62
                 .byte $98
                 .byte $A4
                 .byte $A6
                 .byte $90
                 .byte $98
                 .byte $A6
                 .byte $A4
                 .byte $A9
                 .byte $A9
                 .byte $A6
                 .byte $A4
                 .byte $A6
                 .byte $A9
                 .byte $A9
                 .byte $A6
                 .byte $96
                 .byte $4A
                 .byte $4A
                 .byte $16
                 .byte $96
                 .byte $16
                 .byte $5A
                 .byte $5A
                 .byte $6A
                 .byte $5A
                 .byte $9A
                 .byte $1A
                 .byte $4A
                 .byte $46
                 .byte $15
                 .byte $85
L_3A78           .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $AA
                 .byte $96
                 .byte $41
                 .byte $A6
                 .byte $A4
                 .byte $98
                 .byte $92
                 .byte $A4
                 .byte $A4
                 .byte $C0
                 .byte $62
                 .byte $FF
                 .byte $AB
                 .byte $AB
                 .byte $AB
                 .byte $AB
                 .byte $AB
                 .byte $AB
                 .byte $AB
                 .byte $89
                 .byte $25
                 .byte $85
                 .byte $14
                 .byte $91
                 .byte $55
                 .byte $14
                 .byte $45
                 .byte $45
                 .byte $54
                 .byte $45
                 .byte $51
                 .byte $45
                 .byte $51
                 .byte $15
                 .byte $51
                 .byte $62
                 .byte $58
                 .byte $52
                 .byte $14
                 .byte $44
                 .byte $55
                 .byte $14
                 .byte $51
                 .byte $A0
                 .byte $3A
                 LDX #$95
                 LDA #$02
                 JSR L_38F0
                 LDA #$15
                 STA MVLNG+1
                 LDY #$8A
                 LDX #$1D
                 LDA #$7C
                 JSR L_39AE
                 LDA #$02
                 JSR L_3927
                 RTS
                 ASL RTCLOK+2
                 JMP L_3AC9
L_3AC9           JMP L_3AD6
                 .byte $09
                 .byte $44
                 .byte $3A
                 .byte $44
                 .byte $55
                 .byte $50
                 .byte $2E
                 .byte $53
                 .byte $59
                 .byte $53
L_3AD6           LDA #$04
L_3AD8           STA MVLNG+1
                 LDA #$00
                 STA ECSIZE
                 LDY #$3A
                 LDX #$CC
                 LDA #$01
                 JSR L_38F0
                 LDA #$01
                 JSR L_3A78
                 LDA TSLNUM
                 CMP #$80
                 BCS L_3AF5
                 JMP L_3AFB
L_3AF5           LDA #$01
                 JSR L_3927
                 RTS
L_3AFB           LDA #$FF
                 STA MVLNG+1
L_3AFF           LDY #$FF
                 LDX L_37FF+2
                 LDA L_37FF+1
                 JSR L_2280
                 BRK
                 PLP
                 .byte $02
                 BRK
                 PHP
                 .byte $02
                 .byte $02
                 BRK
                 .byte $02
                 PHP
                 JSR L_8801+1
                 .byte $22
                 ORA (CASINI,X)
                 PHP
                 BRK
                 .byte $02
                 PLP
                 .byte $82
                 BRK
                 .byte $FB
                 INC $BEBE,X
                 INC L_A0E7+1
                 .byte $80
                 .byte $FF
                 .byte $FB
                 NOP
                 LDX #$80
                 BRK
                 BRK
                 BRK
                 .byte $AF
                 INC L_8AEA,X
                 .byte $02
                 BRK
                 BRK
                 BRK
                 .byte $FB
                 LDX L_AFBF,Y
                 .byte $2B
                 ASL
                 .byte $02
                 .byte $02
                 .byte $80
                 LDY #$A8
                 TAX
                 TAX
                 .byte $AB
                 .byte $BF
                 INC LNFLG
                 BRK
                 .byte $80
                 LDX #$AA
                 .byte $AF
                 .byte $BB
                 BRK
                 BRK
                 BRK
                 .byte $02
                 TXA
                 .byte $AB
                 .byte $BF
                 INC VPRCED
                 ASL
                 .byte $2B
                 .byte $BB
                 LDX $EBBF
                 .byte $FF
                 INC $E0F8,X
                 .byte $E2
                 CPY #$A8
                 .byte $80
                 .byte $FF
                 SEC
                 BRK
                 .byte $80
                 .byte $22
                 BRK
                 PLP
                 BRK
                 .byte $EF
                 LDX L_2027+1,Y
                 .byte $02
                 BRK
                 PLP
                 BRK
                 .byte $BF
                 .byte $2F
                 .byte $0B
                 ASL
                 .byte $23
                 .byte $02
                 .byte $0B
                 .byte $02
                 .byte $80
                 CPX #$F8
                 .byte $F2
                 CPY #$C8
                 LDX #$80
                 .byte $03
                 ASL L_8F3E
                 .byte $03
                 .byte $22
                 DEY
                 BRK
                 .byte $80
                 TAY
                 .byte $80
                 LDX #$A0
                 TAY
                 TAX
                 TAX
                 BRK
                 PLP
                 BRK
                 .byte $22
                 .byte $80
                 BRK
                 .byte $3C
                 .byte $FB
                 BRK
                 PLP
                 BRK
                 .byte $02
                 JSR L_AF38
                 INC $0A03,X
                 .byte $03
                 .byte $22
                 .byte $0B
                 .byte $0B
                 .byte $2F
                 .byte $FF
                 .byte $80
                 LDY #$E8
                 INX
                 CLV
                 CLV
                 LDY #$80
                 .byte $02
                 ASL
                 ROL L_2B3B
                 ROL
                 ASL
                 .byte $02
                 JSR L_201F+1
                 JSR L_201F+1
                 JSR $F0A0
                 CPX $E1E5
                 .byte $F3
                 SBC TSLNUM
                 .byte $F7
                 SBC (FR2+3,X)
                 .byte $F4
                 LDX #$3B
                 LDA #$B5
                 JSR L_392D
                 LDA $070A
                 ORA #$80
                 STA $070A
                 JSR $07E0
                 LDA #$00
                 STA MVLNG+1
                 LDA #$00
                 STA ECSIZE
                 JMP L_3BF4
                 .byte $03
                 .byte $44
                 SEC
                 .byte $3A
L_3BF4           LDA #$3B
                 STA DIRFLG
                 LDA #$F0
                 STA ECSIZE+1
                 LDY #$FE
                 LDX #$00
L_3C00           BRK
                 BRK
                 CLC
                 ROR FPTR2+1
                 .byte $5A
                 BIT ICBALZ
                 BIT ICBALZ
                 ROR NOCKSM
                 BRK
L_3C0D           BRK
                 BRK
                 CLC
                 ROR FPTR2+1
                 .byte $5A
                 BIT ICBALZ
                 BIT ICBALZ
                 ROR NOCKSM
                 BRK
L_3C1A           BRK
                 BRK
                 .byte $1A
                 .byte $2F
L_3C1E           .byte $7F
                 ROL RTCLOK+2,X
                 .byte $14
                 .byte $14
                 ASL L_1C2C+2,X
                 BRK
L_3C27           BRK
                 BRK
                 .byte $1A
                 .byte $2F
                 .byte $7F
                 ROL RTCLOK+2,X
                 .byte $14
                 .byte $14
                 ASL L_1C2C+2,X
                 BRK
L_3C34           BRK
                 BRK
                 CLI
                 .byte $F4
                 INC L_286C,X
                 PLP
                 PLP
                 SEI
                 .byte $74
                 SEC
                 BRK
L_3C41           BRK
                 BRK
                 CLI
                 .byte $F4
                 INC L_286C,X
                 PLP
                 PLP
                 SEI
                 .byte $74
                 SEC
                 BRK
L_3C4E           BRK
                 BRK
                 BRK
                 ROR L_24DB,X
                 BIT ICBALZ
                 .byte $3C
                 ROR NOCKSM,X
                 BRK
L_3C5B           BRK
                 BRK
                 BRK
                 BRK
                 .byte $DB
                 BIT NOCKSM
                 ROR NOCKSM,X
                 BRK
                 BRK
                 BRK
L_3C68           BRK
                 BRK
                 BRK
                 BRK
                 ROR L_7EFD+2,X
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_3C75           BRK
                 BRK
                 BRK
                 BRK
                 .byte $3C
                 ROR L_243C,X
                 .byte $DB
L_3C7E           .byte $3C
                 BRK
                 BRK
                 BRK
L_3C82           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 CLC
                 .byte $3C
                 BIT OLDROW
                 .byte $3C
                 CLC
                 BRK
                 BRK
L_3C8F           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 CLC
                 ROR FPTR2+1
                 .byte $5A
                 BRK
                 BRK
                 BRK
L_3C9C           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 STA $FF66,Y
                 .byte $5A
                 BIT ICBALZ
                 .byte $3C
                 BRK
L_3CA9           BRK
                 BRK
                 .byte $42
                 CLC
                 BRK
                 BIT LNFLG
                 BRK
                 BRK
                 BRK
                 CLC
                 BRK
                 BRK
L_3CB6           BRK
                 BRK
                 STA (DSKFMS,X)
                 BRK
                 BIT LNFLG
                 BRK
                 BRK
                 BRK
                 CLC
                 BRK
                 BRK
L_3CC3           BRK
                 ORA (FREQ,X)
                 BPL L_3CC8
L_3CC8           PHP
                 BRK
                 BRK
                 BRK
                 BRK
                 BPL L_3CCF
L_3CCF           BRK
L_3CD0           BRK
                 .byte $02
                 JSR POKMSK
                 PHP
                 BRK
                 BRK
                 BRK
                 BRK
                 BPL L_3CDC
L_3CDC           BRK
L_3CDD           BRK
                 .byte $80
                 .byte $02
                 PHP
                 BRK
                 BPL L_3CE4
L_3CE4           BRK
                 BRK
                 BRK
                 PHP
                 BRK
                 BRK
L_3CEA           BRK
                 RTI
                 .byte $04
                 PHP
                 BRK
                 BPL L_3CF1
L_3CF1           BRK
                 BRK
                 BRK
                 PHP
                 BRK
                 BRK
L_3CF7           BRK
                 .byte $3C
                 BIT DSKFMS
                 CLC
                 CLC
                 ROR L_66BC+1,X
                 CLC
                 CLC
                 BRK
                 BRK
L_3D04           BRK
                 .byte $3C
                 BIT DSKFMS
                 CLC
                 CLC
                 ROR L_66BC+1,X
                 CLC
                 CLC
                 BRK
                 BRK
L_3D11           BRK
                 BRK
                 CLC
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $5A
                 CLC
                 BRK
                 BRK
                 BRK
                 .byte $0C
L_3D1E           BRK
                 BRK
                 CLC
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $5A
                 CLC
                 BRK
                 BRK
                 BRK
L_3D2A           BMI L_3D2C
L_3D2C           ROR L_7EFD+2,X
                 BRK
L_3D30           BRK
                 BRK
                 CLC
                 CLC
                 ROR TRAPLN+1
                 ROR L_1816+2,X
                 CLC
                 BIT NOCKSM
                 BRK
L_3D3D           BRK
                 BRK
                 CLC
                 CLC
                 ROR TRAPLN+1
                 ROR L_1816+2,X
                 CLC
                 BIT NOCKSM
                 BRK
L_3D4A           .byte $0C
                 BRK
                 BRK
                 BRK
                 CLC
                 .byte $5A
                 BRK
                 BRK
                 BRK
                 BRK
                 CLC
                 BRK
                 BRK
L_3D57           BMI L_3D59
L_3D59           BRK
                 BRK
                 CLC
                 .byte $5A
                 BRK
                 BRK
                 BRK
                 BRK
                 CLC
                 BRK
                 BRK
L_3D64           BRK
                 BMI L_3DBE+1
L_3D67           BMI L_3D99
                 .byte $3C
                 ROR FR0+2,X
                 LSR L_303C,X
                 BRK
                 BRK
L_3D71           LSR LNFLG
                 .byte $0C
                 .byte $1A
                 .byte $0C
                 .byte $0C
                 .byte $3C
                 ROR L_7A6B
                 .byte $3C
                 .byte $0C
                 BRK
                 BRK
                 .byte $54
L_3D80           BRK
                 BRK
                 JSR LNFLG
                 BRK
                 PHP
                 BIT ICBLLZ
                 BRK
                 BRK
                 CLC
L_3D8D           BRK
                 BRK
                 JSR LNFLG
                 BRK
                 PHP
                 BIT ICBLLZ
                 BRK
                 BRK
L_3D99           RTS
L_3D9A           BRK
                 BRK
                 .byte $04
                 BRK
                 BRK
                 BRK
                 BPL L_3DD6
                 .byte $14
                 BRK
                 BRK
                 BRK
                 CLC
L_3DA7           AND #$00
                 BRK
                 .byte $04
                 BRK
                 BRK
                 BRK
                 BPL L_3DE3+1
                 .byte $14
                 BRK
                 BRK
                 BRK
L_3DB4           ASL STATUS
                 BMI L_3D67+1
                 CLV
                 .byte $64
                 .byte $64
                 CLV
                 BCS L_3DEE
L_3DBE           BMI L_3DC0
L_3DC0           BRK
                 BRK
L_3DC2           BRK
                 BRK
                 BRK
                 TYA
                 STA $0101,Y
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_3DCF           BRK
                 BRK
                 ORA (MVFA,X)
                 STA LNFLG,Y
L_3DD6           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_3DDC           .byte $22
                 .byte $47
                 LDX L_24EC,Y
                 .byte $34
                 SEI
L_3DE3           CPX #$C0
                 BRK
                 BRK
                 BRK
                 BRK
L_3DE9           BRK
                 RTI
                 RTI
                 BPL L_3E06
L_3DEE           ORA #$02
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_3DF6           .byte $44
                 .byte $E2
                 ADC L_2437,X
                 BIT $071E
                 .byte $03
                 BRK
                 BRK
                 BRK
                 BRK
L_3E03           BRK
                 .byte $02
                 .byte $02
L_3E06           PHP
                 CLC
                 BCC L_3E4A
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_3E0F           BRK
L_3E10           .byte $0C
                 .byte $0C
                 ORA L_261D
                 ROL ABUFPT+1
                 ORA $0C0C
                 BRK
                 BRK
L_3E1C           BRK
L_3E1D           BRK
                 BRK
                 BRK
                 ORA L_8097+2,Y
                 .byte $80
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_3E29           BRK
L_3E2A           BRK
                 BRK
                 .byte $80
                 STA MVFA,Y
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_3E37           BRK
                 .byte $03
                 .byte $07
                 ASL L_242C,X
                 .byte $37
                 ADC L_44E1+1,X
                 BRK
                 BRK
                 BRK
L_3E44           BRK
                 BRK
                 RTI
                 BCC L_3E61
                 PHP
L_3E4A           .byte $02
                 .byte $02
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $1A
                 LDA (DSKFMS),Y
                 STA DSKUTL+1
                 LDY #$01
                 LDA (DSKUTL),Y
                 TAX
                 DEY
                 LDA (DSKUTL),Y
                 JSR L_31B0
L_3E61           JSR L_31B6
L_3E64           BRK
                 SEC
                 .byte $7C
                 TSX
                 TSX
                 .byte $57
                 .byte $EF
                 LSR STOPLN+1,X
                 .byte $BB
L_3E6E           ROR NOCKSM,X
                 BRK
                 BRK
                 .byte $44
                 .byte $44
                 PLP
                 BPL L_3EA0
                 .byte $44
                 .byte $44
                 BRK
                 BRK
                 BRK
L_3E7D           BRK
                 SEC
                 JMP ($EECE)
                 .byte $47
                 .byte $FF
                 TAX
                 .byte $AB
                 .byte $FF
                 ROR NOCKSM,X
L_3E8A           BRK
                 BRK
                 BPL L_3EBE
                 BPL L_3EC8
                 BRK
                 .byte $54
                 .byte $54
                 BRK
                 BRK
                 BRK
                 BRK
L_3E97           BRK
                 BRK
                 SEI
                 BIT ICBALZ
                 BIT ICBALZ
                 BIT ICBALZ
L_3EA0           BIT DELTAC+1
                 BRK
                 BRK
L_3EA4           BRK
                 SED
                 STY OLDROW
                 .byte $5A
                 .byte $5A
                 .byte $5A
                 .byte $5A
                 .byte $5A
                 .byte $5A
                 STY ZTEMP4+1
                 BRK
L_3EB1           BRK
                 JSR $1000
                 CLC
                 PHP
                 .byte $02
                 .byte $02
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_3EBE           BRK
                 .byte $3B
                 BRK
                 .byte $C7
                 ROL L_3ECF+1,X
                 .byte $3B
                 BRK
                 .byte $CF
L_3EC8           ROL L_3EDA,X
                 .byte $52
                 .byte $54
                 .byte $53
                 BRK
L_3ECF           CMP FTYPE,X
                 CPX FTYPE
                 .byte $3B
                 BRK
                 .byte $DB
                 ROL L_3EEE,X
                 .byte $3B
L_3EDA           BRK
                 SBC (FTYPE,X)
                 SED
                 ROL CHKSNT,X
                 NOP
                 ROL L_3F01+1,X
                 .byte $47
                 .byte $4F
                 PHA
                 AND (LNFLG),Y
                 .byte $F7
                 ROL L_3F0C,X
L_3EEE           .byte $43
                 EOR L_2050
                 .byte $23
                 BIT BUFRHI
                 BMI L_3EF7
L_3EF7           .byte $04
                 .byte $3F
                 ASL FEOF,X
                 .byte $42
                 BVC L_3F4A
L_3EFE           JSR FMSZPG+4
L_3F01           BPL L_3F1E+1
                 .byte $62
                 .byte $42
                 .byte $A3
                 STA MEOLFLG,X
                 LSR
                 LSR ADRESS,X
                 .byte $3C
L_3F0C           DEY
L_3F0D           PHP
                 ORA OLDCOL+1
                 ROR $FF7E,X
                 .byte $FF
                 INC L_7E7D+1,X
                 .byte $7C
L_3F18           LDY POKMSK,X
                 BRK
                 BRK
                 BRK
L_3F1E           ASL L_2133,X
L_3F21           EOR (LOGCOL,X)
                 .byte $22
                 .byte $1C
                 BRK
                 BRK
L_3F27           BRK
                 BRK
                 .byte $12
                 RTI
                 ASL L_7F3E+1,X
                 .byte $7F
                 .byte $7F
                 ROL $019C,X
L_3F33           BIT LNFLG
                 BRK
                 BRK
                 .byte $04
                 JSR $120C
                 .byte $54
                 ORA #$28
                 BRK
L_3F3F           BRK
                 BRK
L_3F41           BRK
                 BRK
                 BRK
                 PHP
                 ORA (DOSINI,X)
                 LSR L_2A1C,X
L_3F4A           .byte $14
                 BRK
                 BRK
                 BRK
L_3F4E           BRK
                 BRK
                 BRK
                 ASL L_2133,X
                 EOR (ICCOMZ,X)
                 .byte $1C
                 BRK
                 BRK
                 BRK
                 BRK
L_3F5B           BRK
                 BRK
                 ORA #$5E
                 .byte $3F
                 .byte $7F
                 .byte $7F
                 ROL $018C,X
                 PHP
                 BRK
                 BRK
                 EOR #$00
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_3F70           BRK
                 BRK
                 BRK
                 PHP
                 PHP
                 PHP
                 ROL L_5577,X
                 .byte $7F
                 ROL $0808,X
                 PHP
                 .byte $14
                 .byte $14
                 .byte $1C
                 BRK
                 BRK
L_3F83           BRK
                 .byte $0C
                 BRK
                 BRK
                 .byte $63
                 BRK
                 BRK
                 .byte $7F
                 .byte $7F
                 .byte $7F
                 ROL LNFLG,X
                 BRK
                 BRK
                 PHP
                 PHP
                 BRK
                 BRK
                 BRK
L_3F96           BRK
                 CLC
                 BRK
                 BRK
                 .byte $14
                 BRK
                 BRK
                 .byte $7F
                 .byte $7F
                 .byte $7F
                 ROL LNFLG,X
                 BRK
                 BRK
                 PHP
                 PHP
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 ORA (LNFLG,X)
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $14
                 BRK
                 BRK
                 RTI
                 JMP L_804B+1
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $80
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_4000           LDA VCOUNT
                 CMP #$7A
                 BCC L_4000
                 LDA #$40
                 STA NMIEN
                 LDA #$20
                 STA VDSLST
                 LDA #$40
L_4013           STA VDSLST+1
                 LDA #$C0
                 STA NMIEN
                 RTS
                 .byte $3F
                 STA L_1DF2+2,X
                 PHA
                 TXA
                 PHA
                 TYA
                 PHA
                 LDA #$FC
                 LDX #$96
L_4029           LDY #$05
                 PHA
                 LDA #$08
                 STA WSYNC
                 STX COLBK
                 STY COLPF2
                 STA COLPF1
                 PLA
                 STA COLPF0
                 LDA #$75
                 STA VDSLST
                 PLA
                 TAY
                 PLA
                 TAX
                 PLA
                 RTI
                 .byte $23
                 JMP L_228A
                 JSR L_233B
                 JMP L_210F
                 LDX #$10
                 LDA #$0C
                 STA B0_ICCOM,X
                 JMP L_31E9
                 .byte $54
                 EOR L_454E+2,Y
                 JSR L_5922
                 .byte $22
                 JSR L_4F53+1
                 JSR L_4542+2
                 JMP L_5445
                 EOR ICIDNO
                 ROL L_9B2D+1
                 .byte $44
                 EOR FMSZPG+5
                 TXA
                 PHA
                 TYA
                 PHA
                 LDA $060F
L_407D           LDX #$75
                 LDY #$0E
                 STA WSYNC
                 STA HPOSP0
                 STA HPOSP1
                 STX COLPM0
                 STY COLPM1
                 LDA #$00
                 STA SIZEP0
                 STA SIZEP1
                 LDA #$B5
                 STA VDSLST
                 PLA
                 TAY
                 PLA
                 TAX
                 PLA
                 RTI
                 .byte $57
                 EOR FMSZPG+1
                 .byte $9B
                 BRK
                 .byte $04
                 .byte $04
                 ROL RECVDN,X
                 .byte $37
                 JSR L_5246
                 EOR FMSZPG+2
                 JSR L_4551+2
                 PHA
                 TXA
                 PHA
                 LDA #$02
                 LDX #$46
                 STA WSYNC
                 STX CHBASE
                 STA COLBK
                 LDA #$E0
                 STA VDSLST
                 PLA
                 TAX
                 PLA
                 RTI
                 .byte $4F
                 BVC L_412A
                 .byte $33
                 .byte $32
                 ROL L_4F42+1
                 EOR L_9B9B
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 JMP (L_4823)
                 LDA #$2F
                 STA WSYNC
                 STA COLPF0
                 LDA #$F2
                 STA VDSLST
                 PLA
                 RTI
                 LDX #$00
                 PHA
                 TXA
                 PHA
                 TYA
                 PHA
                 LDA #$20
                 LDX #$00
                 LDY $0685
                 STA WSYNC
                 STX COLPF2
                 STX COLBK
                 STX COLPF1
                 STY HPOSP0
                 STY HPOSP1
                 STA VDSLST
                 LDA $0657
                 STA SIZEP0
                 STA SIZEP1
                 PLA
                 TAY
                 PLA
                 TAX
                 PLA
                 RTI
                 LDA #$AD
                 AND MVTA+1
                 CMP #$90
                 BNE L_4137
L_412A           LDA #$81
                 STA L_9C24
                 LDA #$8C
                 STA L_9C25
                 JMP L_4169+1
L_4137           LDA L_9C24
                 CMP #$01
                 BNE L_4152
L_413E           LDA L_AD25
                 .byte $52
                 ASL PTABW
                 ORA ($D0,X)
                 .byte $0C
                 LDA #$00
                 STA $065B
                 STA $065A
                 INC $0652
L_4152           RTS
                 CMP #$02
                 BNE L_4181
                 LDA #$AC
                 STA AUDC3
                 LDA $065A
                 CLC
                 ADC #$1E
                 CMP #$DA
                 BCS L_416D
                 STA $065A
L_4169           STA AUDF3
                 RTS
L_416D           INC $065B
                 LDA $065B
                 CMP #$03
                 BCS L_417D
                 LDA #$00
                 STA $065A
                 RTS
L_417D           INC $0652
                 RTS
L_4181           LDA $065A
                 SEC
                 SBC #$0A
                 CMP #$0A
                 BCC L_4192
                 STA $065A
                 STA AUDF3
                 RTS
L_4192           LDA #$00
                 STA $0652
                 STA AUDC3
                 RTS
                 CPX #$00
                 STA $CF
L_419F           LDA LNFLG,X
                 BRK
                 BPL L_41E1
                 LSR KEYDEF+1,X
                 ROL $101C,X
                 PHP
                 .byte $34
                 CLC
                 BRK
L_41AE           BRK
                 .byte $1C
                 BRK
                 BRK
                 BRK
                 PLP
                 .byte $04
                 BRK
                 BRK
                 BRK
                 BPL L_41C2
                 BRK
                 BRK
                 .byte $3A
L_41BD           BRK
                 PHP
                 BRK
                 BRK
                 BRK
L_41C2           PLP
                 .byte $04
                 BRK
                 BRK
                 BRK
                 BPL L_41D1
                 BRK
                 BRK
                 BRK
L_41CC           BRK
                 BRK
                 BRK
                 BPL L_4249
L_41D1           .byte $D4
                 LDY L_70F7+1,X
                 BPL L_41F7
                 CLI
                 BMI L_41DA
L_41DA           .byte $04
L_41DB           BRK
                 BVS L_41DE
L_41DE           BRK
                 BRK
                 PLP
L_41E1           RTI
                 BRK
                 BRK
                 BRK
                 BPL L_4205+2
                 BRK
                 BRK
                 PHP
L_41EA           BRK
                 JSR LNFLG
                 BRK
                 PLP
                 RTI
                 BRK
                 BRK
                 BRK
                 BPL L_4215+1
                 BRK
L_41F7           BRK
                 .byte $3A
                 AND #$01
                 BEQ L_4205
                 LDA L_3AD8,X
                 LDA $06AD
                 BEQ L_4208
L_4205           JMP L_42DC
L_4208           INC $0618
                 LDA $0618
                 CMP #$02
                 BCS L_4215
                 JMP L_42DC
L_4215           LDA #$00
                 STA $0618
                 LDA $0680
                 CMP #$01
                 BMI L_4224
                 JMP L_42D9
L_4224           LDA #$07
                 STA $0680
                 LDA L_9C24
                 CMP #$35
                 BNE L_424C
                 LDA L_9C25
                 CMP #$92
                 BNE L_424C
                 INC $0681
                 LDA $0681
                 CMP #$20
                 BEQ L_4244
                 JMP L_42DC
L_4244           LDA #$D4
                 STA L_4029+1
L_4249           JMP L_426F
L_424C           LDA L_9C24
                 CMP #$B7
                 BNE L_426F
                 LDA L_9C25
                 CMP #$7C
                 BNE L_426F
                 INC $0681
                 LDA $0681
                 CMP #$22
                 BEQ L_4267
                 JMP L_42DC
L_4267           LDA #$05
                 STA L_4029+1
                 JMP L_426F
L_426F           LDA #$00
                 STA $0681
                 LDA L_9C24
                 CMP #$05
                 BNE L_428F
                 LDA L_9C25
                 CMP #$90
                 BNE L_428F
                 LDA #$81
                 STA L_9C24
                 LDA #$8C
                 STA L_9C25
                 JMP L_42C5
L_428F           LDA L_9C24
                 CMP #$01
                 BNE L_42AA
                 LDA L_9C25
                 CMP #$80
                 BNE L_42AA
                 LDA #$DF
                 STA L_9C24
                 LDA #$7C
                 STA L_9C25
                 JMP L_42C5
L_42AA           LDA L_9C24
                 CMP #$BF
                 BNE L_42C5
                 LDA L_9C25
                 CMP #$79
                 BNE L_42C5
                 INC $06AB
                 LDA #$75
                 STA L_9C24
                 LDA #$98
                 STA L_9C25
L_42C5           LDA L_9C24
                 SEC
                 SBC #$28
                 STA L_9C24
                 BCC L_42D3
                 JMP L_42DC
L_42D3           DEC L_9C25
                 JMP L_42DC
L_42D9           DEC $0680
L_42DC           LDA $0680
                 STA VSCROL
                 JSR L_1920
                 LDA #$20
                 STA VDSLST
L_42EA           LDA $063A
                 STA VNTP
                 LDA $063B
                 STA VNTP+1
                 LDY #$00
                 JMP (VNTP)
                 JSR LNFLG
                 BRK
                 BRK
                 BRK
                 BRK
L_4300           TXA
                 PHA
                 LDA $0631
                 BNE L_4317
                 LDA #$2A
                 STA AUDC1
                 STA $0631
                 LDA #$10
                 STA AUDF1
                 JMP L_431F
L_4317           LDA #$00
                 STA AUDC1
                 STA $0631
L_431F           LDA COLOR0
                 CMP #$7A
                 BEQ L_432E
                 LDA #$7A
                 STA COLOR0
                 JMP L_4333
L_432E           LDA #$3A
                 STA COLOR0
L_4333           LDX #$00
                 LDY #$00
L_4337           INX
                 BNE L_4337
                 INY
                 CPY #$40
                 BNE L_4337
                 PLA
                 TAX
                 RTS
                 LDX FPTR2+1
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 PHA
                 LDA #$E0
                 STA WSYNC
                 STA CHBASE
                 LDA #$FF
                 STA COLPF1
                 PLA
                 RTI
L_435A           BVS L_43CC
                 BVS L_43A0
                 RTI
                 .byte $9C
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 EOR (ICHIDZ,X)
                 .byte $9C
                 LDA #$0C
                 STA B0_ICCOM,X
                 JSR OPSTKX
                 STA AUDCTL
                 LDA #$03
                 STA SKCTL
                 STA $0658
                 LDA #$FF
                 STA PORTB
                 STA CH
                 LDA $06CF
                 CMP #$99
                 BEQ L_43E7
                 LDA #$83
                 STA VNTD+1
L_43A0           LDA #$21
                 STA VNTD
                 LDA #$A0
                 STA TOPSTK+1
                 LDA #$61
                 STA TOPSTK
                 LDY #$00
L_43AE           LDA (VNTD),Y
                 STA (TOPSTK),Y
                 CPY #$A0
                 BNE L_43BC
                 LDA VNTD+1
                 CMP #$8F
                 BEQ L_43C6
L_43BC           INY
                 BNE L_43AE
                 INC VNTD+1
                 INC TOPSTK+1
                 JMP L_43AE
L_43C6           LDA #$33
                 STA VNTD+1
                 LDA #$00
L_43CC           STA VNTD
                 STA TOPSTK
                 LDA #$B2
                 STA TOPSTK+1
L_43D4           LDY #$00
L_43D6           LDA (VNTD),Y
                 STA (TOPSTK),Y
                 INY
                 BNE L_43D6
                 INC TOPSTK+1
                 INC VNTD+1
                 LDA VNTD+1
                 CMP #$38
                 BNE L_43D4
L_43E7           LDA VVBLKI
                 STA $063A
                 LDA VVBLKI+1
                 STA $063B
                 TAX
                 LDA #$10
L_43F6           STA $0606,X
                 INX
                 CPX #$06
                 BNE L_43F6
                 LDA #$0E
                 LDX #$00
L_4402           STA $065E,X
                 INX
                 CPX #$05
                 BNE L_4402
L_440A           LDA #$99
                 STA $06CF
                 JSR L_1900
                 SEI
                 LDA #$F2
                 STA VVBLKI
                 LDA #$47
                 STA VVBLKI+1
                 CLI
                 LDA #$01
                 STA CRSINH
                 JSR L_5380
                 LDA #$70
                 STA CHBAS
                 LDA #$42
                 STA COLOR0
                 STA COLOR3
                 LDA #$00
                 STA COLOR2
                 STA COLOR4
                 LDX #$00
L_443D           LDA $065E,X
                 STA L_765B,X
L_4443           INX
L_4444           CPX #$05
                 BNE L_443D
                 LDX #$05
L_444A           LDA $0606,X
                 STA L_7676,X
                 DEX
                 CPX #$FF
                 BNE L_444A
                 LDA #$08
                 STA COLOR1
                 LDX #$00
L_445C           LDA L_7400,X
                 STA L_9C40,X
                 LDA L_7500,X
                 STA L_9D40,X
                 LDA L_7600,X
L_446B           STA L_9E40,X
                 LDA L_7700,X
                 STA L_9F40,X
                 INX
                 BNE L_445C
                 LDA #$40
                 STA NMIEN
                 LDA #$4A
                 STA VDSLST
                 LDA #$43
                 STA VDSLST+1
                 LDA #$06
                 STA L_9C27
                 STA L_9C27+1
                 STA L_9C35
                 STA L_9C35+1
                 LDA #$82
                 STA L_9C2B
                 LDA #$07
                 STA L_9C30
                 STA L_9C31
                 LDA #$C0
                 STA NMIEN
                 LDA #$00
                 STA $064C
                 STA $064D
                 STA $064E
                 JSR L_2063
L_44B4           LDA STRIG0
                 BEQ L_452C
                 LDA CH
                 CMP #$3E
                 BNE L_450A
                 INC $0659
                 LDA $0659
                 CMP #$0A
                 BCS L_4505
                 LDA #$00
                 STA $0659
                 LDA $0658
                 BNE L_44EC
                 STA L_7641+1
                 STA L_9E81+1
                 LDA #$01
                 STA $0658
                 LDA #$2E
L_44E1           STA L_7641
                 STA L_9E81
                 JSR L_1900
                 BNE L_4505
L_44EC           LDA #$00
                 STA $0658
                 STA AUDC1
                 STA AUDF2
                 LDA #$26
                 STA L_7641
                 STA L_9E81
                 STA L_7641+1
                 STA L_9E81+1
L_4505           LDA #$FF
                 STA CH
L_450A           INC $064C
                 LDA $064C
                 BNE L_44B4
                 INC $064D
                 LDA $064D
                 BNE L_44B4
                 INC $064E
                 LDA $064E
                 CMP #$18
                 BNE L_44B4
                 LDA #$01
                 STA $066E
                 JMP L_4531
L_452C           LDA #$00
                 STA $066E
L_4531           LDX #$00
                 STX $064A
                 STX $0627
                 STX $0632
                 STX $0636
                 STX $064F
L_4542           STX $0637
                 STX $0698
                 STX $0635
                 STX $0653
L_454E           STX $06B5
L_4551           STX $06B2
                 STX $06B6
                 TXA
L_4558           STA L_9BA0,X
                 STA L_9C9E+2,X
                 STA L_9DA0,X
                 INX
                 BNE L_4558
                 LDX #$00
                 TXA
L_4567           STA L_9F60,X
                 INX
                 CPX #$50
                 BNE L_4567
                 LDX #$00
L_4571           LDA #$10
                 STA L_9F9C,X
                 STA $0600,X
                 STA $069C,X
                 LDA $0606,X
                 STA L_9FA8,X
                 INX
                 CPX #$06
                 BNE L_4571
                 LDA #$10
                 STA L_9FA2
                 STA L_9FAE
                 STA $069A
                 LDA #$11
                 STA $069B
                 LDA #$13
                 STA L_9FA5
                 STA $062E
                 LDX #$00
L_45A1           LDA L_45ED,X
                 STA L_9F76,X
                 INX
                 CPX #$0F
                 BNE L_45A1
                 LDA #$30
                 STA PMBASE
                 LDA #$3E
                 STA SDMCTL
                 LDA #$03
                 STA GRACTL
                 STA $0656
                 JSR L_6CFF+1
                 LDA #$38
                 STA CHBAS
                 JSR L_5000
                 JSR L_5C00
                 LDA $065D
                 BEQ L_45D4
                 JSR L_7800
L_45D4           JSR L_5380
                 LDX #$00
                 TXA
L_45DA           STA HPOSP0,X
                 INX
                 CPX #$08
                 BNE L_45DA
                 LDA $066E
                 BEQ L_45EA
                 JMP L_452C
L_45EA           JMP L_440A
L_45ED           .byte $02
                 ORA (CASINI),Y
                 BRK
                 BRK
                 BRK
                 ORA (NGFLAG,X)
                 ORA (LNFLG,X)
                 BRK
                 PLP
                 AND #$27
                 PLP
                 PLP
                 AND #$27
                 PLP
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 DEY
                 CLD
                 PLP
                 PLP
                 PLP
                 PLP
                 PLP
                 INC L_286C
                 .byte $42
                 RTI
                 .byte $9C
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $63
                 .byte $63
                 ASL DOSINI
                 CLC
                 BMI L_4692
                 .byte $63
                 .byte $02
                 .byte $02
                 EOR (ICHIDZ,X)
                 .byte $9C
                 JSR LNFLG
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 SEC
                 SEC
                 SEC
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 ROL LOGCOL,X
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 ROL DOSINI,X
                 .byte $3C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 ROL LOGCOL,X
L_4692           .byte $03
                 .byte $37
                 ROR FKDEF,X
                 .byte $63
                 .byte $77
                 ROL LOGCOL,X
                 .byte $03
                 .byte $17
                 ASL CASINI+1,X
                 .byte $63
                 ROL DSKFMS,X
                 BMI L_4703
                 JMP (L_7F7D+2)
                 .byte $0C
                 .byte $0C
                 .byte $77
                 .byte $63
                 RTS
                 ROR LTEMP+1,X
                 .byte $03
                 .byte $63
                 ROL DOSINI,X
                 CLC
                 BMI L_46EA
                 .byte $77
                 .byte $63
                 .byte $63
                 ROL DELTAC,X
                 .byte $63
                 .byte $03
                 .byte $03
                 ASL TRAMSZ
                 .byte $0C
                 .byte $0C
                 ROL LOGCOL,X
                 .byte $63
                 .byte $77
                 ROL LOGCOL,X
                 .byte $63
                 ROL LTEMP,X
                 .byte $63
                 .byte $63
                 .byte $77
                 ROL TRAMSZ,X
                 .byte $0C
                 CLC
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_46EA           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_4703           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $14
                 ROL LOGCOL,X
                 .byte $77
                 .byte $77
                 .byte $63
                 .byte $63
                 .byte $63
                 ROR LOGCOL,X
                 .byte $63
                 .byte $77
                 ROR LOGCOL,X
                 .byte $63
                 ROR LTEMP,X
                 .byte $77
                 .byte $63
                 RTS
                 RTS
                 .byte $63
                 .byte $77
                 ROL DELTAR,X
                 .byte $77
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $77
                 ROR LTEMP+1,X
                 .byte $77
                 RTS
                 .byte $74
                 .byte $74
                 RTS
                 .byte $77
                 .byte $37
                 .byte $37
                 .byte $77
                 RTS
                 .byte $74
                 .byte $74
                 RTS
                 RTS
                 RTS
                 PLP
                 .byte $44
                 .byte $44
                 RTI
                 JMP L_4444
                 PLP
                 .byte $44
                 .byte $44
                 .byte $44
                 JMP (L_446B+1)
                 .byte $44
                 .byte $44
                 .byte $7C
                 .byte $54
                 BPL L_475C
                 BPL L_475E
                 .byte $54
                 .byte $7C
                 .byte $63
                 .byte $63
                 ROL RTCLOK+2,X
                 .byte $14
                 ROL LOGCOL,X
                 .byte $63
                 .byte $63
                 .byte $63
                 ROR ROWAC,X
L_475C           ROR LOGCOL,X
L_475E           .byte $63
                 .byte $63
                 RTS
                 RTS
                 RTS
                 RTS
                 RTS
                 .byte $63
                 .byte $77
                 .byte $77
                 .byte $77
                 .byte $6B
                 .byte $6B
                 .byte $6B
                 .byte $6B
                 .byte $63
                 .byte $63
                 .byte $63
                 ROL DELTAC,X
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 ROL DELTAC,X
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $77
                 ROL SAVADR,X
                 .byte $44
                 .byte $44
                 .byte $44
                 PLA
                 RTI
                 RTI
                 RTI
                 ROL DELTAC,X
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $67
                 .byte $77
                 .byte $37
                 PLA
                 .byte $44
                 .byte $44
                 .byte $44
                 PLA
                 PLA
                 PHA
                 .byte $44
                 .byte $37
                 .byte $77
                 RTS
                 ROR LTEMP+1,X
                 .byte $03
                 .byte $77
                 ROR DELTAC,X
                 .byte $77
                 EOR RTCLOK+2,X
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
                 PLP
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 ROL LTEMP,X
                 .byte $1C
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $6B
                 .byte $6B
                 .byte $6B
                 .byte $6B
                 .byte $77
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $63
                 .byte $63
                 .byte $63
                 ROL LTEMP,X
                 .byte $1C
                 .byte $1C
                 .byte $1C
                 LDA $0615
                 BNE L_47D6
                 RTS
L_47D6           JSR L_4950
                 JSR L_4902+1
                 LDA $0616
                 BNE L_47EA
                 JSR L_55CC+2
                 JSR L_55B7
                 JSR L_55B7
L_47EA           JSR L_5760
                 LDA VCOUNT
                 CMP #$58
                 JSR L_1920
                 JMP L_42EA
                 STA $099D,X
                 STA L_30BD,X
L_47FE           STA L_AD9D,X
                 ASL TRAMSZ,X
                 BNE L_4847
                 LDA #$20
                 STA $061D
                 LDA $0683
                 BPL L_4812
                 LDA $060F
L_4812           STA HPOSP2
                 STA HPOSP3
                 STA $0685
                 STA $0686
                 STA $06A0
                 LDA #$34
L_4823           STA PCOLR0
                 LDA #$0E
                 STA PCOLR1
                 STA PCOLR3
                 STA $0624
                 LDA #$82
                 STA PCOLR2
                 LDA #$00
                 STA $0684
                 STA $0687
                 LDA #$0E
                 STA L_542E+1
                 INC $0616
                 RTS
L_4847           INC $0617
                 LDA $0617
                 CMP #$03
                 BCC L_4864
                 LDX #$00
                 STX $0617
                 LDA $0684
                 BNE L_4861
                 INC $0684
                 JMP L_4864
L_4861           STX $0684
L_4864           LDA $0616
                 CMP #$06
                 BCC L_486E
                 JMP L_4945
L_486E           CMP #$03
                 BPL L_48C8
                 INC $061D
                 LDA $061D
                 CMP #$30
                 BNE L_487F
                 INC $0616
L_487F           CMP #$6A
                 BCC L_488C
                 JSR L_4950
                 INC $0616
                 JMP L_4945
L_488C           LDA $0624
                 BNE L_4894
                 JMP L_4945
L_4894           LDX $061D
                 LDY #$00
                 LDA $0684
                 BNE L_48B3
L_489E           LDA L_3CF7,Y
                 STA L_3600,X
                 LDA L_3D11,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_489E
                 JMP L_4945
L_48B3           LDA L_3D04,Y
                 STA L_3600,X
                 LDA L_3D1E,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_48B3
                 JMP L_4945
L_48C8           CMP #$05
                 BPL L_48E8
                 LDA $0624
                 BEQ L_48E2
                 LDX $061D
                 LDY #$00
L_48D6           LDA L_3D2A+1,Y
                 STA L_3406+1,X
                 INX
                 INY
                 CPY #$04
                 BNE L_48D6
L_48E2           INC $0616
                 JMP L_4945
L_48E8           DEC $061D
                 LDA $061D
                 CMP #$25
                 BCS L_490D
                 LDX $061D
                 LDY #$00
                 TYA
L_48F8           STA L_33FE+2,X
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
L_4902           BNE L_48F8
                 INC $0616
                 STA $0624
                 JMP L_4945
L_490D           LDA $0624
                 BNE L_4914
                 BEQ L_4945
L_4914           LDX $061D
                 LDY #$00
                 LDA $0684
                 BNE L_4933
L_491E           LDA L_3D30,Y
                 STA L_33FE+2,X
                 LDA L_3D4A,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_491E
                 JMP L_4945
L_4933           LDA L_3D3D,Y
                 STA L_33FE+2,X
L_4939           LDA L_3D57,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4933
L_4945           LDA $0616
                 CMP #$02
                 BPL L_494D
                 RTS
L_494D           JMP L_4C80
L_4950           LDX $061D
                 LDY #$00
                 TYA
L_4956           STA L_3600,X
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4956
                 RTS
                 .byte $1F
                 RTS
                 JMP L_4C80
                 .byte $54
                 JSR L_4000
                 SEI
                 LDA #$00
                 STA VVBLKI
                 LDA #$42
                 STA VVBLKI+1
                 CLI
                 RTS
                 EOR LNFLG
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_4980           LDX #$00
L_4982           LDA L_49BC,X
                 STA L_9C20,X
                 INX
                 CPX #$22
                 BNE L_4982
                 LDA #$00
                 STA DINDEX
                 LDA #$40
                 STA SAVMSC
                 LDA #$9C
                 STA SAVMSC+1
                 LDA #$20
                 STA SDLSTL
                 LDA #$9C
                 STA SDLSTH
                 LDA #$38
                 STA CHBAS
                 LDA #$00
                 STA COLOR0
                 STA COLOR1
                 STA COLOR2
                 STA COLOR4
                 LDA #$FF
                 STA COLOR3
                 RTS
L_49BC           BVS L_4A2E
                 BVS L_4982
                 ADC SVESA+1,X
                 BIT ICBALZ
                 BIT ICBALZ
                 BIT ICBALZ
                 BIT ICBALZ
                 BIT ICBALZ
                 LDY ICBALZ
                 BIT ICBALZ
                 BIT ICBALZ
                 BIT ICBALZ
                 STY FMSZPG+3
                 RTS
                 .byte $9F
                 ASL VVTP
                 ASL VVTP
                 EOR (ICHIDZ,X)
                 .byte $9C
                 LDA L_1E9C
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 LDA $0617
                 BNE L_4A23
                 LDA #$2A
                 STA HPOSP1
L_4A0A           STA $061F
                 LDX #$00
L_4A0F           LDA L_4A6D,X
                 STA L_9553,X
                 INX
                 CPX #$0B
                 BNE L_4A0F
                 LDA #$0E
                 STA PCOLR1
                 INC $0617
                 RTS
L_4A23           INC $061F
                 LDA $061F
                 STA HPOSP1
                 CMP #$D8
L_4A2E           BCC L_4A36
                 LDA #$00
                 STA $0617
                 RTS
L_4A36           CMP #$50
                 BNE L_4A48
                 LDX #$00
L_4A3C           LDA L_4A76+2,X
                 STA L_9553,X
                 INX
                 CPX #$0B
                 BNE L_4A3C
                 RTS
L_4A48           CMP #$78
                 BNE L_4A5A
                 LDX #$00
L_4A4E           LDA L_4A81+2,X
                 STA L_9553,X
                 INX
                 CPX #$0B
                 BNE L_4A4E
                 RTS
L_4A5A           CMP #$A0
                 BEQ L_4A5F
                 RTS
L_4A5F           LDX #$00
L_4A61           LDA L_4A8E,X
                 STA L_9553,X
                 INX
                 CPX #$0B
                 BNE L_4A61
                 RTS
L_4A6D           .byte $14
                 ROL $BE77,X
                 ROR
                 .byte $47
                 .byte $BB
                 ROR VNUM
L_4A76           ROR BFENLO
                 BRK
                 BIT L_6ABD+1
                 .byte $44
                 TSX
                 ROR FR0
L_4A81           ROR RAMLO
                 BRK
                 .byte $0C
                 ROL ICAX1Z,X
                 .byte $44
                 .byte $3A
                 ROR TMPCHR
                 BRK
                 BRK
L_4A8E           BRK
                 BRK
                 BRK
                 .byte $14
                 ROL
                 .byte $14
                 .byte $1A
                 .byte $04
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_4AC0           JSR L_4980
                 JSR L_4000
                 JSR L_1900
                 LDA #$00
                 STA NMIEN
                 SEI
                 LDA #$00
                 STA VVBLKI
                 LDA #$42
                 STA VVBLKI+1
                 CLI
                 LDA #$C0
                 STA NMIEN
                 LDA #$A2
                 STA L_407D+1
                 LDA #$01
                 STA GPRIOR
                 STA $060E
                 STA $0615
                 LDX #$00
                 TXA
L_4AF2           STA L_3300,X
                 STA L_33FE+2,X
                 STA L_3500,X
                 STA L_3600,X
                 STA L_3700,X
                 INX
                 BNE L_4AF2
                 TAX
L_4B05           STA HPOSP0,X
                 STA SIZEP0,X
                 STA $06A6,X
                 INX
                 CPX #$04
                 BNE L_4B05
                 STA $060C
                 STA $060D
                 STA $061B
                 STA $061C
                 STA $0616
                 STA $0695
                 STA $0698
                 STA $0620
                 STA $0621
                 STA $0624
                 STA $0625
                 STA $06AA
                 LDA #$74
                 STA HPOSP0
                 STA HPOSP1
                 STA $060F
                 STA $0610
                 LDA #$20
                 STA $0611
L_4B4A           LDA GPRIOR
                 ORA #$10
                 STA GPRIOR
                 LDA #$05
                 STA L_4029+1
                 LDA #$30
                 STA $0683
                 JSR L_4B80
                 LDA #$0F
                 STA COLOR3
                 JMP L_6CA0
                 BVC L_4B69
L_4B69           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_4B80           INC $060C
                 LDA $060C
                 CMP #$02
                 BCC L_4B9F
                 LDA #$00
                 STA $060C
                 LDA $060D
                 BNE L_4B9A
                 INC $060D
                 JMP L_4B9F
L_4B9A           LDA #$00
                 STA $060D
L_4B9F           LDX #$00
                 LDY $0611
                 LDA $060E
                 BNE L_4BD4
                 LDA $060D
                 BNE L_4BC1
L_4BAE           LDA L_3C1A,X
                 STA L_3470,Y
                 LDA L_3CC3,X
                 STA L_3570,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_4BAE
                 RTS
L_4BC1           LDA L_3C27,X
                 STA L_3470,Y
                 LDA L_3CD0,X
                 STA L_3570,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_4BC1
                 RTS
L_4BD4           CMP #$01
                 BNE L_4C03
                 LDA $060D
                 BNE L_4BF0
L_4BDD           LDA L_3C00,X
                 STA L_3470,Y
                 LDA L_3CA9,X
                 STA L_3570,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_4BDD
                 RTS
L_4BF0           LDA L_3C0D,X
                 STA L_3470,Y
                 LDA L_3CB6,X
                 STA L_3570,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_4BF0
                 RTS
L_4C03           LDA $060D
                 BNE L_4C1B
L_4C08           LDA L_3C34,X
                 STA L_3470,Y
                 LDA L_3CDD,X
                 STA L_3570,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_4C08
                 RTS
L_4C1B           LDA L_3C41,X
                 STA L_3470,Y
                 LDA L_3CEA,X
                 STA L_3570,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_4C1B
                 RTS
                 .byte $4F
                 BRK
L_4C30           LDA #$28
                 STA AUDC1
                 STA AUDC2
                 LDX #$01
L_4C3A           STX AUDF1
                 INX
                 STX AUDF2
                 JSR L_561C
                 CPX #$09
                 BMI L_4C3A
                 LDA #$00
                 STA AUDC1
                 STA AUDC2
                 RTS
                 PHA
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_4C5A           LDA #$28
                 STA AUDC1
                 STA AUDC2
                 LDX #$0D
L_4C64           STX AUDF1
                 DEX
                 STX AUDF2
                 JSR L_561C
                 CPX #$03
                 BPL L_4C64
                 LDA #$00
                 STA AUDC1
                 STA AUDC2
                 RTS
                 SBC LNFLG
                 BRK
                 BRK
L_4C80           LDA $0687
                 BNE L_4C99
                 LDA #$20
                 STA $0690
                 STA $0625
                 LDA #$00
                 STA $0688
                 JSR L_4CCD
                 INC $0687
                 RTS
L_4C99           CMP #$06
                 BCC L_4CA0
                 JMP L_4D74
L_4CA0           CMP #$03
                 BPL L_4D09
                 INC $0690
                 LDA $0690
                 CMP #$30
                 BNE L_4CB1
                 INC $0687
L_4CB1           CMP #$6A
                 BCC L_4CCD
L_4CB5           LDX $0690
                 LDY #$00
                 TYA
L_4CBB           STA L_3600,X
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4CBB
                 INC $0687
                 JMP L_4D74
L_4CCD           LDA $0625
                 BNE L_4CD5
                 JMP L_4D74
L_4CD5           LDX $0690
                 LDY #$00
                 LDA $0684
                 BNE L_4CF4
L_4CDF           LDA L_3CF7,Y
                 STA L_3600,X
                 LDA L_3D11,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4CDF
                 JMP L_4D74
L_4CF4           LDA L_3D04,Y
                 STA L_3600,X
                 LDA L_3D1E,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4CF4
                 JMP L_4D74
L_4D09           CMP #$05
                 BPL L_4D29
                 LDA $0625
                 BEQ L_4D23
                 LDX $0690
                 LDY #$00
L_4D17           LDA L_3D2A+1,Y
                 STA L_3406+1,X
                 INX
                 INY
                 CPY #$04
                 BNE L_4D17
L_4D23           INC $0687
                 JMP L_4D74
L_4D29           DEC $0690
                 LDA $0690
                 CMP #$25
                 BCS L_4D3B
                 LDA #$00
                 STA $0625
L_4D38           JMP L_4CB5
L_4D3B           LDA $0625
                 BNE L_4D43
                 JMP L_4D74
L_4D43           LDX $0690
                 LDY #$00
                 LDA $0684
                 BNE L_4D62
L_4D4D           LDA L_3D30,Y
                 STA L_33FE+2,X
                 LDA L_3D4A,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4D4D
                 JMP L_4D74
L_4D62           LDA L_3D3D,Y
                 STA L_33FE+2,X
                 LDA L_3D57,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4D62
L_4D74           LDA $0687
                 CMP #$02
                 BPL L_4D7C
                 RTS
L_4D7C           JMP L_4DA0
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_4DA0           LDA $0688
                 BNE L_4DB9
                 LDA #$20
                 STA $0691
                 STA $0627
                 LDA #$00
                 STA $0689
                 JSR L_4DED
                 INC $0688
                 RTS
L_4DB9           CMP #$06
                 BCC L_4DC0
                 JMP L_4EA7
L_4DC0           CMP #$03
                 BPL L_4E29
                 INC $0691
                 LDA $0691
                 CMP #$30
                 BNE L_4DD1
                 INC $0688
L_4DD1           CMP #$6A
                 BCC L_4DED
                 LDX $0691
                 LDY #$00
                 TYA
L_4DDB           STA L_3600,X
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4DDB
                 INC $0688
                 JMP L_4EA7
L_4DED           LDA $0627
                 BNE L_4DF5
                 JMP L_4EA7
L_4DF5           LDX $0691
                 LDY #$00
                 LDA $0684
                 BNE L_4E14
L_4DFF           LDA L_3CF7,Y
                 STA L_3600,X
                 LDA L_3D11,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4DFF
                 JMP L_4EA7
L_4E14           LDA L_3D04,Y
                 STA L_3600,X
                 LDA L_3D1E,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4E14
                 JMP L_4EA7
L_4E29           CMP #$05
                 BPL L_4E49
                 LDA $0627
                 BEQ L_4E43
                 LDX $0691
                 LDY #$00
L_4E37           LDA L_3D2A+1,Y
L_4E3A           STA L_3406+1,X
                 INX
                 INY
                 CPY #$04
                 BNE L_4E37
L_4E43           INC $0688
                 JMP L_4EA7
L_4E49           DEC $0691
                 LDA $0691
                 CMP #$25
                 BCS L_4E6E
                 LDX $0691
                 LDY #$00
                 STY $0627
                 TYA
L_4E5C           STA L_33FE+2,X
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4E5C
                 INC $0688
                 JMP L_4EA7
L_4E6E           LDA $0627
                 BNE L_4E76
                 JMP L_4EA7
L_4E76           LDX $0691
                 LDY #$00
                 LDA $0684
                 BNE L_4E95
L_4E80           LDA L_3D30,Y
                 STA L_33FE+2,X
                 LDA L_3D4A,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4E80
                 JMP L_4EA7
L_4E95           LDA L_3D3D,Y
                 STA L_33FE+2,X
                 LDA L_3D57,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4E95
L_4EA7           LDA $0688
                 CMP #$02
                 BPL L_4EAF
                 RTS
L_4EAF           JMP L_4EC0
                 .byte $4F
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_4EC0           LDA $0689
                 BNE L_4ED9
                 LDA #$20
                 STA $0692
                 STA $06B0
                 LDA #$00
                 STA $068A
                 JSR L_4F0D
                 INC $0689
                 RTS
L_4ED9           CMP #$06
                 BCC L_4EE0
                 JMP L_4FCA
L_4EE0           CMP #$03
                 BPL L_4F49
                 INC $0692
                 LDA $0692
                 CMP #$30
                 BNE L_4EF1
                 INC $0689
L_4EF1           CMP #$6A
                 BCC L_4F0D
                 LDX $0692
                 LDY #$00
                 TYA
L_4EFB           STA L_3600,X
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4EFB
                 INC $0689
                 JMP L_4FCA
L_4F0D           LDA $06B0
                 BNE L_4F15
                 JMP L_4FCA
L_4F15           LDX $0692
                 LDY #$00
                 LDA $0684
                 BNE L_4F34
L_4F1F           LDA L_3CF7,Y
                 STA L_3600,X
                 LDA L_3D11,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4F1F
                 JMP L_4FCA
L_4F34           LDA L_3D04,Y
                 STA L_3600,X
L_4F3A           LDA L_3D1E,Y
                 STA L_3700,X
                 INX
                 INY
L_4F42           CPY #$0D
                 BNE L_4F34
                 JMP L_4FCA
L_4F49           CMP #$05
                 BPL L_4F6C
                 INC $0689
                 LDA $06B0
L_4F53           BNE L_4F58
                 JMP L_4FCA
L_4F58           LDX $0692
                 LDY #$00
L_4F5D           LDA L_3D2A+1,Y
                 STA L_3406+1,X
                 INX
                 INY
                 CPY #$04
                 BNE L_4F5D
                 JMP L_4FCA
L_4F6C           DEC $0692
                 LDA $0692
                 CMP #$25
                 BCS L_4F91
                 LDX $0692
                 LDY #$00
                 TYA
L_4F7C           STA L_33FE+2,X
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4F7C
                 STA $06B0
                 INC $0689
                 JMP L_4FCA
L_4F91           LDA $06B0
                 BNE L_4F99
                 JMP L_4FCA
L_4F99           LDX $0692
                 LDY #$00
                 LDA $0684
                 BNE L_4FB8
L_4FA3           LDA L_3D30,Y
                 STA L_33FE+2,X
                 LDA L_3D4A,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4FA3
                 JMP L_4FCA
L_4FB8           LDA L_3D3D,Y
                 STA L_33FE+2,X
                 LDA L_3D57,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_4FB8
L_4FCA           LDA $0689
                 CMP #$02
                 BPL L_4FD2
                 RTS
L_4FD2           JMP L_5440
                 .byte $27
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_4FE0           LDA $062E
                 CMP #$15
                 BCC L_4FE8
                 RTS
L_4FE8           INC $062E
                 LDA $062E
                 STA L_9FA5
                 RTS
                 BIT LNFLG
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_5000           LDA $062E
                 CMP #$10
                 BPL L_5008
                 RTS
L_5008           JSR L_4AC0
                 LDA $0653
                 BEQ L_5017
                 LDA #$24
                 STA L_9F86
                 BNE L_501C
L_5017           LDA #$00
                 STA L_9F86
L_501C           LDA $0635
                 BEQ L_5028
                 LDA #$2A
                 STA L_9F74
                 BNE L_502D
L_5028           LDA #$00
                 STA L_9F74
L_502D           JSR L_1880
                 LDA $0652
                 BEQ L_5038
                 JSR L_413E+2
L_5038           JSR L_6900
                 LDA $0695
                 BEQ L_504B
                 JSR L_6840
                 LDA $0698
                 BNE L_5000
                 JMP L_51A4
L_504B           LDA $0613
L_504E           BEQ L_5056
                 JSR L_1B00
                 JMP L_5162
L_5056           LDA $06AB
                 BEQ L_508F
                 JSR L_1800
                 LDA $060F
                 CMP #$74
                 BNE L_5077
                 LDA #$01
                 LDX $06BF
                 CPX #$03
                 BCC L_5086
                 JSR L_6700
                 INC $06B2
                 JMP L_5008
L_5077           BMI L_5081
                 LDA #$00
                 DEC $060F
                 JMP L_5086
L_5081           LDA #$02
                 INC $060F
L_5086           STA $060E
                 JSR L_4B80
                 JMP L_51A4
L_508F           JSR L_52CF+1
                 LDA $0633
                 BEQ L_509D
                 LDA STRIG0
                 BNE L_509D
                 RTS
L_509D           LDA STICK0
                 CMP #$0B
                 BNE L_50AA
                 JSR L_5212
                 JMP L_5113
L_50AA           LDA STICK0
                 CMP #$07
                 BNE L_50B7
                 JSR L_5222
                 JMP L_5113
L_50B7           LDA STICK0
                 CMP #$0E
                 BNE L_50C4
                 JSR L_5232
                 JMP L_5113
L_50C4           LDA STICK0
                 CMP #$0D
                 BNE L_50CE
                 JSR L_5243
L_50CE           LDA STICK0
                 CMP #$06
                 BNE L_50DE
                 JSR L_5232
                 JSR L_5222
                 JMP L_5113
L_50DE           LDA STICK0
                 CMP #$0A
                 BNE L_50EE
                 JSR L_5232
                 JSR L_5212
                 JMP L_5113
L_50EE           LDA STICK0
                 CMP #$05
                 BNE L_50FE
                 JSR L_5243
                 JSR L_5222
                 JMP L_5113
L_50FE           LDA STICK0
                 CMP #$09
                 BNE L_510E
                 JSR L_5243
                 JSR L_5212
                 JMP L_5113
L_510E           LDA #$01
                 STA $060E
L_5113           JSR L_4B80
                 JSR L_526E
                 JSR L_6900
                 LDA CH
                 CMP #$21
                 BNE L_5145
                 LDA #$FF
                 STA CH
                 LDA $06B3
                 BNE L_5145
                 LDX $062A
                 BMI L_5145
                 LDA #$00
                 STA L_9F7C,X
                 DEC $062A
                 JSR L_6C80
                 LDA #$FF
                 STA CH
                 JMP L_5162
L_5145           LDA STRIG0
                 BNE L_5162
                 LDA $061B
                 BNE L_5162
                 LDA #$4E
                 STA AUDC4
                 LDA #$01
                 STA AUDF4
                 STA $0630
                 STA $062F
                 JSR L_5253
L_5162           LDA CH
                 CMP #$0A
                 BNE L_516C
                 JSR L_6C00
L_516C           LDA CH
                 CMP #$3A
                 BNE L_5195
                 LDA $0653
                 BEQ L_5190
                 LDA $0615
                 CMP #$06
                 BNE L_5181
                 BEQ L_5185
L_5181           CMP #$07
                 BNE L_518D
L_5185           LDA #$28
                 STA PCOLR2
                 JSR L_53C8
L_518D           JSR L_5FFE+2
L_5190           LDA #$FF
                 STA CH
L_5195           INC $0683
                 LDA $0683
                 CMP #$C4
                 BCC L_51A4
                 LDA #$30
                 STA $0683
L_51A4           JSR L_6A80
                 JSR L_6090
                 LDA $0663
                 CMP #$02
                 BCC L_51B4
                 JSR L_5D60
L_51B4           JSR L_6B80
                 STA HITCLR
                 JSR L_6D3F+1
                 JSR L_5420
                 JSR L_1C00
                 JSR L_526E
                 LDA $06B3
                 BEQ L_51D1
                 JSR L_6E50
                 JMP L_51D4
L_51D1           JSR L_53DF+1
L_51D4           LDA $062F
                 BEQ L_5206
                 LDA $0630
                 CLC
                 ADC #$08
                 STA $0630
                 STA AUDF4
                 CMP #$28
                 BCC L_5206
                 INC $062F
                 LDA $062F
                 CMP $0656
                 BEQ L_51FE
                 LDA #$01
                 STA $0630
                 STA AUDF4
                 BNE L_5206
L_51FE           LDA #$00
                 STA AUDC4
                 STA $062F
L_5206           JMP L_502D
                 JSR L_6700
                 INC $0632
                 JMP L_5008
L_5212           LDA $060F
                 CMP #$2B
                 BCC L_5221
                 LDA #$00
                 STA $060E
                 DEC $060F
L_5221           RTS
L_5222           LDA $060F
                 CMP #$C8
                 BCS L_5231
                 LDA #$02
                 STA $060E
                 INC $060F
L_5231           RTS
L_5232           LDA $0611
                 CMP $06B4
                 BMI L_523D
                 DEC $0611
L_523D           LDA #$01
                 STA $060E
                 RTS
L_5243           LDA $0611
L_5246           CMP #$3A
                 BCS L_524D
                 INC $0611
L_524D           LDA #$01
                 STA $060E
                 RTS
L_5253           INC $061B
                 LDX $060F
                 INX
                 STX HPOSM2
                 INX
                 INX
                 INX
                 INX
                 STX HPOSM3
                 LDA $0611
                 CLC
                 ADC #$70
                 STA $0619
                 RTS
L_526E           LDA $061B
                 BNE L_5274
                 RTS
L_5274           LDX $0619
                 LDY #$00
L_5279           LDA L_3300,X
                 AND #$AF
                 STA L_3300,X
                 DEX
                 INY
                 CPY #$0A
                 BNE L_5279
                 INX
                 INX
                 INX
                 INX
                 INX
                 INX
                 INX
                 CPX #$30
                 BCC L_52BB
                 STX $0619
                 LDY #$00
L_5297           LDA L_3300,X
                 ORA #$50
                 STA L_3300,X
                 DEX
                 INY
                 CPY #$04
                 BNE L_5297
                 LDA $0635
                 BEQ L_52BA
                 DEX
                 DEX
L_52AC           LDA L_3300,X
                 ORA #$50
                 STA L_3300,X
                 DEX
                 INY
                 CPY #$08
                 BNE L_52AC
L_52BA           RTS
L_52BB           LDA #$00
                 STA $061B
L_52C0           RTS
                 BRK
                 BRK
                 STA $061B
                 RTS
                 BRK
                 BRK
                 BRK
                 CPY #$08
                 BNE L_52C0
                 RTS
L_52CF           LDA #$AD
                 STA TRAMSZ,X
                 BEQ L_52D6
                 RTS
L_52D6           LDA M0PL
                 AND #$01
                 BEQ L_52EF
                 LDY $061E
                 BPL L_52EF
                 LDA #$FE
                 STA $06B7
                 JSR L_5364
                 STA $0620
                 BEQ L_533E
L_52EF           LDA M1PL
                 AND #$01
                 BEQ L_5308
                 LDY $061F
                 BPL L_5308
                 LDA #$FB
                 STA $06B7
                 JSR L_5364
                 STA $0621
                 BEQ L_533E
L_5308           LDA P0PL
                 AND #$0C
                 BNE L_5310
                 RTS
L_5310           LDA $0690
                 BPL L_533D
                 LDX $0634
                 CPX #$01
                 BMI L_533E
                 STX $0652
                 INX
                 STX $0634
                 LDA PCOLR2
                 CMP #$26
                 BNE L_532E
                 STA $0650
                 RTS
L_532E           CMP #$F2
                 BNE L_5336
                 STA $0651
                 RTS
L_5336           CMP #$96
                 BNE L_533D
                 STA $0635
L_533D           RTS
L_533E           LDA $06B3
                 BEQ L_534B
                 LDA $0634
                 CMP #$FF
                 BEQ L_534B
                 RTS
L_534B           LDA #$00
                 STA $0696
                 STA $0635
                 STA $0653
                 INC $0695
                 LDA #$02
                 STA $062F
                 LDA #$03
                 STA $0656
                 RTS
L_5364           LDX #$00
L_5366           LDA L_3300,Y
                 AND $06B7
L_536C           STA L_3300,Y
                 INY
                 INX
                 CPX #$03
                 BNE L_5366
                 LDA #$00
                 RTS
                 BRK
                 BNE L_536C
                 LDA #$00
                 RTS
                 BNE L_5380
L_5380           LDX #$00
                 TXA
L_5383           STA AUDC1,X
                 INX
                 INX
                 CPX #$08
                 BMI L_5383
                 LDX #$00
L_538E           LDA L_435A,X
                 STA L_9C20,X
                 INX
                 CPX #$20
                 BNE L_538E
                 LDA #$00
                 TAX
L_539C           STA L_9C40,X
                 STA L_9D40,X
                 STA L_9E40,X
                 STA L_9F40,X
                 INX
                 BNE L_539C
                 LDA #$00
                 STA DINDEX
                 LDA #$40
                 STA SAVMSC
                 LDA #$9C
L_53B5           STA SAVMSC+1
                 LDA #$20
                 STA SDLSTL
                 LDA #$9C
                 STA SDLSTH
                 LDA #$E0
                 STA CHBAS
                 RTS
                 BRK
L_53C8           LDX #$00
                 TXA
L_53CB           STA L_3600,X
                 STA L_3700,X
                 INX
                 BNE L_53CB
                 LDA #$FF
                 STA $0615
                 LDA #$00
                 STA $066A
                 RTS
L_53DF           ORA L_B6AD
                 ASL PTABW
                 BPL L_53B5+1
                 AND $D0
                 ROL L_ABAB+2
                 ASL $D0
                 AND #$AD
                 ORA (TRAMSZ),Y
                 CMP #$22
                 BCC L_5417
                 LDX #$01
                 STX $06B3
                 LDA $06BB
                 BNE L_5402
                 STX $06BB
L_5402           DEX
                 STX $06B6
                 LDA #$20
                 STA $06B4
                 RTS
                 INC $06B5
                 LDA $06B5
                 BNE L_5417
                 INC $06B6
L_5417           RTS
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_5420           TYA
                 PHA
                 TXA
                 PHA
                 LDY #$00
                 STY ATRACT
L_5428           LDX #$10
L_542A           INX
                 BNE L_542A
                 INY
L_542E           CPY #$0E
                 BNE L_5428
                 PLA
                 TAX
                 PLA
                 TAY
                 RTS
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_5440           LDA $068A
                 BNE L_5454
L_5445           LDA #$20
                 STA $0693
                 STA $06B1
                 JSR L_5486
                 INC $068A
                 RTS
L_5454           CMP #$06
                 BCC L_545B
                 JMP L_5543
L_545B           CMP #$03
                 BPL L_54BC
                 INC $0693
                 LDA $0693
                 CMP #$30
                 BNE L_546C
                 INC $068A
L_546C           CMP #$6A
                 BCC L_5486
                 LDX $0693
                 LDY #$00
                 TYA
L_5476           STA L_3600,X
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5476
                 INC $068A
                 RTS
L_5486           LDA $06B1
                 BNE L_548C
                 RTS
L_548C           LDX $0693
                 LDY #$00
                 LDA $0684
                 BNE L_54A9
L_5496           LDA L_3CF7,Y
                 STA L_3600,X
                 LDA L_3D11,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5496
                 RTS
L_54A9           LDA L_3D04,Y
                 STA L_3600,X
                 LDA L_3D1E,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_54A9
                 RTS
L_54BC           CMP #$05
                 BPL L_54DD
                 INC $068A
                 LDA $06B1
                 BNE L_54C9
                 RTS
L_54C9           LDX $0693
                 LDY #$00
L_54CE           LDA L_3D2A+1,Y
                 STA L_3406+1,X
                 INX
                 INY
                 CPY #$04
                 BNE L_54CE
                 JMP L_5543
L_54DD           DEC $0693
                 LDA $0693
                 CMP #$25
                 BCS L_550C
                 LDX $0693
                 LDY #$00
                 TYA
L_54ED           STA L_33FE+2,X
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_54ED
                 INC $068A
                 LDA #$00
                 STA $0616
                 NOP
                 NOP
                 STA $0615
                 LDA #$11
                 STA L_542E+1
                 RTS
L_550C           LDA $06B1
                 BNE L_5512
                 RTS
L_5512           LDX $0693
                 LDY #$00
                 LDA $0684
                 BNE L_5531
L_551C           LDA L_3D30,Y
                 STA L_33FE+2,X
                 LDA L_3D4A,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_551C
                 JMP L_5543
L_5531           LDA L_3D3D,Y
                 STA L_33FE+2,X
                 LDA L_3D57,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5531
L_5543           RTS
                 BRK
                 LDX #$00
                 STX $0621
                 LDA #$2F
                 STA L_9CE9,X
                 INC $0646
                 RTS
                 LDA L_397A
                 AND #$01
                 BEQ L_5577+1
                 LDX $0621
                 CPX #$0E
L_555F           BEQ L_5581
                 BCC L_55B7+2
                 LDX #$00
L_5565           LDA L_5641,X
                 STA L_3401+2,X
                 LDA #$3F
                 STA L_3417,X
                 INX
                 CPX #$0E
                 BNE L_5565
                 LDX #$00
L_5577           LDA L_564F,X
                 STA L_34A4,X
                 JSR L_4300
                 INX
L_5581           CPX #$0C
                 BNE L_5577
                 LDX #$00
L_5587           LDA $069C,X
                 STA L_34BD+1,X
                 JSR L_4300
                 INX
                 CPX #$04
                 BNE L_5587
                 LDX #$00
L_5597           LDA L_565B,X
                 STA L_351B+1,X
                 JSR L_4300
L_55A0           INX
                 CPX #$05
                 BNE L_5597
                 LDX #$00
L_55A7           LDA $0600,X
                 STA L_3532+1,X
                 JSR L_4300
                 INX
                 CPX #$06
                 BNE L_55A7
                 LDA #$10
L_55B7           STA L_3537+2
                 LDX #$00
L_55BC           LDA L_565F+1,X
                 STA L_3594,X
                 JSR L_4300
                 INX
                 CPX #$0B
                 BNE L_55BC
                 LDX #$00
L_55CC           LDA $0606,X
                 STA L_35AB,X
                 JSR L_4300
                 INX
                 CPX #$06
                 BNE L_55CC
                 LDA #$10
                 STA L_35B1
                 LDX #$00
L_55E1           LDA L_5675,X
                 STA L_360C,X
                 JSR L_4300
                 INX
                 CPX #$0D
                 BNE L_55E1
                 LDA $069A
                 STA L_3628
                 LDA $069B
                 STA L_3629
                 LDX #$00
L_55FD           LDA L_566A+1,X
                 STA L_3725,X
                 JSR L_4300
                 INX
                 CPX #$0A
                 BNE L_55FD
L_560B           JSR L_4C30
L_560E           JSR L_4C5A
                 LDX #$00
L_5613           JSR L_561C
                 INX
                 CPX #$10
                 BNE L_5613
                 RTS
L_561C           TXA
                 PHA
                 LDA COLOR0
                 CMP #$7A
                 BEQ L_562D
                 LDA #$7A
                 STA COLOR0
                 JMP L_5632
L_562D           LDA #$3A
                 STA COLOR0
L_5632           LDX #$00
                 LDY #$00
L_5636           INX
                 BNE L_5636
                 INY
                 CPY #$30
                 BNE L_5636
                 PLA
                 TAX
                 RTS
L_5641           BMI L_566C
                 BIT L_342E+1
                 .byte $07
                 .byte $33
                 BRK
                 .byte $32
                 AND STATUS
                 .byte $2F
                 .byte $32
                 .byte $34
L_564F           AND (ICBLHZ,X)
                 .byte $32
                 .byte $23
                 .byte $32
                 AND (ICPTLZ,X)
                 .byte $34
                 BRK
                 PLP
                 AND #$34
L_565B           .byte $33
                 .byte $23
                 .byte $2F
                 .byte $32
L_565F           AND BFENLO
                 .byte $2F
                 BIT ICDNOZ
                 AND L_3305+2,Y
                 BRK
                 .byte $34
                 .byte $2F
L_566A           BMI L_5692+1
L_566C           AND (ICSPRZ+1,X)
                 AND LNFLG
                 BRK
                 .byte $2F
                 ROL ICBAHZ,X
                 .byte $32
L_5675           .byte $33
                 .byte $34
                 AND (ICPTHZ,X)
                 AND LNFLG
                 .byte $32
                 AND ICDNOZ
                 .byte $23
                 PLP
                 AND ICBALZ
                 BRK
                 BIT LNFLG
                 ASL STARP+1
                 AND #$36
                 LDX #$00
                 JSR L_5692+2
                 INX
L_568F           CPX #$A9
                 BRK
L_5692           STA NMIEN
                 SEI
                 LDA $063A
                 STA VVBLKI
                 LDA $063B
                 STA VVBLKI+1
                 CLI
                 LDA #$40
                 STA NMIEN
                 LDX #$00
                 TXA
L_56AB           STA HPOSP0,X
                 INX
                 CPX #$08
                 BNE L_56AB
                 LDX #$00
                 TXA
L_56B6           STA AUDC1,X
                 INX
                 INX
                 CPX #$08
                 BMI L_56B6
                 LDX #$00
L_56C1           LDA L_5709,X
                 STA L_3000,X
                 INX
                 CPX #$20
                 BNE L_56C1
                 LDA #$00
                 TAX
L_56CF           STA L_33FE+2,X
                 STA L_3500,X
                 STA L_3600,X
                 STA L_3700,X
                 INX
                 BNE L_56CF
                 LDA #$00
                 STA DINDEX
                 LDA #$00
                 STA SAVMSC
                 LDA #$34
                 STA SAVMSC+1
                 LDA #$00
                 STA SDLSTL
                 LDA #$30
                 STA SDLSTH
                 LDA #$78
                 STA COLOR2
                 LDA #$00
                 STA COLOR4
                 LDA #$0F
                 STA COLOR1
                 LDA #$E0
                 STA CHBAS
                 RTS
L_5709           BVS L_577B
                 BVS L_5753
                 BRK
                 .byte $34
                 ASL CASINI
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $07
                 .byte $07
                 .byte $07
                 .byte $07
                 EOR (LNFLG,X)
                 BMI L_572A
L_572A           .byte $02
                 BNE L_5735
                 LDA #$19
                 STA L_9FA5
                 DEC L_9FA4
L_5735           LDA L_9FA4
                 CMP #$10
                 BNE L_5753+1
                 LDA L_9FA5
                 CMP #$10
                 BNE L_5753+1
                 LDA L_9FA6
                 CMP #$10
                 BNE L_5753+1
                 LDA #$10
                 STA L_9FA4
L_574F           LDA #$AD
                 ASL TRAMSZ,X
L_5753           BNE L_57A5
                 INC $066F
                 INC $066F
                 LDA $066F
                 CMP #$20
L_5760           BCC L_5767
                 LDA #$00
                 STA $066F
L_5767           CLC
                 ADC #$70
                 STA $06A0
                 STA HPOSP2
                 STA HPOSP3
                 STA $0685
                 STA $0686
                 LDA #$0F
L_577B           STA PCOLR1
                 STA PCOLR3
                 LDA #$82
                 STA PCOLR0
                 STA PCOLR2
                 LDA #$20
                 STA $061D
                 STA $0624
                 LDA #$00
                 STA $0684
                 STA $0617
                 STA $0687
                 LDA #$0E
                 STA L_542E+1
                 INC $0616
                 RTS
L_57A5           INC $0617
                 LDA $0617
                 CMP #$01
                 BCS L_57B8
                 LDA $061D
                 CMP #$69
                 BCC L_57CD
                 RTS
                 RTS
L_57B8           LDA #$00
                 STA $0617
                 LDA $0684
                 BNE L_57C8
                 INC $0684
                 JMP L_57CD
L_57C8           LDA #$00
                 STA $0684
L_57CD           LDA $0616
                 CMP #$03
                 BCC L_57D7
                 JMP L_582A
L_57D7           INC $061D
                 LDA $061D
                 CMP #$30
                 BNE L_57E4
                 INC $0616
L_57E4           CMP #$6A
                 BCC L_57EE
                 INC $0616
                 JMP L_588B
L_57EE           LDA $0624
                 BNE L_57F6
                 JMP L_588B
L_57F6           LDX $061D
                 LDY #$00
                 LDA $0684
                 BNE L_5815
L_5800           LDA L_3CF7,Y
                 STA L_33FE+2,X
                 LDA L_3D11,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5800
                 JMP L_588B
L_5815           LDA L_3D04,Y
                 STA L_33FE+2,X
                 LDA L_3D1E,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5815
                 JMP L_588B
L_582A           INC $0685
                 INC $0686
                 LDA $0686
                 CMP #$E0
                 BCC L_5852
                 LDX $061D
                 LDY #$00
                 TYA
L_583D           STA L_33FE+2,X
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_583D
                 STA $0624
                 INC $0616
                 JMP L_588B
L_5852           LDA $0624
                 BNE L_585A
                 JMP L_588B
L_585A           LDX $061D
                 LDY #$00
                 LDA $0684
                 BNE L_5879
L_5864           LDA L_3D71+1,Y
                 STA L_33FE+2,X
                 LDA L_3D9A,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5864
                 JMP L_588B
L_5879           LDA L_3D71+1,Y
                 STA L_33FE+2,X
                 LDA L_3DA7+1,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5879
L_588B           LDA $0616
                 CMP #$02
                 BPL L_5893
                 RTS
L_5893           JMP L_58B0
                 BRK
                 ASL FKDEF
                 CMP #$04
                 BNE L_58BA+2
                 LDX #$00
                 LDA #$00
                 STA L_9C68,X
                 STA L_9C1D,X
                 LDA #$06
                 STA L_9C90,X
                 STA L_9C45,X
                 TXA
L_58B0           LDA $0687
                 BNE L_58C9
                 LDA #$20
                 STA $0690
L_58BA           STA $0625
                 LDA #$00
                 STA $0688
                 JSR L_58F2
                 INC $0687
                 RTS
L_58C9           LDA $0634
                 BEQ L_58D1
                 JMP L_59F1
L_58D1           LDA $0687
                 CMP #$03
                 BCC L_58DB
                 JMP L_592E
L_58DB           INC $0690
                 LDA $0690
                 CMP #$30
                 BNE L_58E8
                 INC $0687
L_58E8           CMP #$5A
                 BCC L_58F2
                 INC $0687
                 JMP L_59F1
L_58F2           LDA $0625
                 BNE L_58FA
                 JMP L_59F1
L_58FA           LDX $0690
                 LDY #$00
                 LDA $0684
                 BNE L_5919
L_5904           LDA L_3CF7,Y
                 STA L_3600,X
                 LDA L_3D11,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5904
                 JMP L_59F1
L_5919           LDA L_3D04,Y
                 STA L_3600,X
                 LDA L_3D1E,Y
L_5922           STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5919
                 JMP L_59F1
L_592E           CMP #$03
                 BNE L_5987
                 DEC $06A0
                 LDA $06A0
                 STA HPOSP2
                 STA HPOSP3
                 CMP #$40
                 BCS L_594B
                 JSR L_59FC
                 INC $0687
                 JMP L_59F1
L_594B           LDA $0625
                 BNE L_5953
                 JMP L_59F1
L_5953           LDX $0690
                 LDY #$00
                 LDA $0684
                 BNE L_5972
L_595D           LDA L_3D64,Y
                 STA L_3600,X
                 LDA L_3D80,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_595D
                 JMP L_59F1
L_5972           LDA L_3D64,Y
                 STA L_3600,X
                 LDA L_3D8D,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5972
                 JMP L_59F1
L_5987           INC $06A0
                 LDA $06A0
                 STA HPOSP2
                 STA HPOSP3
                 INC $0690
                 LDA $0690
                 CMP #$B0
                 BCC L_59B5
                 LDA #$00
                 STA $0616
                 STA $0625
                 LDA #$11
                 STA L_542E+1
                 LDA #$00
                 STA $0615
                 JSR L_59FC
                 JMP L_59F1
L_59B5           LDA $0625
                 BNE L_59BD
                 JMP L_59F1
L_59BD           LDX $0690
                 LDY #$00
                 LDA $0684
                 BNE L_59DC
L_59C7           LDA L_3D71+1,Y
                 STA L_3600,X
                 LDA L_3D9A,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_59C7
                 JMP L_59F1
L_59DC           LDA L_3D71+1,Y
                 STA L_3600,X
                 LDA L_3DA7+1,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_59DC
                 JMP L_59F1
L_59F1           LDA $0687
                 CMP #$02
                 BPL L_59F9
                 RTS
L_59F9           JMP L_5A1E+2
L_59FC           LDX $0690
                 LDY #$00
                 TYA
L_5A02           STA L_3600,X
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5A02
                 RTS
                 BRK
                 .byte $D2
                 LDA $0612
                 CMP #$02
                 BNE L_5A3D
                 JSR L_55A0
                 LDA $060F
L_5A1E           STA L_AD52
                 DEY
                 ASL $D0
                 .byte $14
                 LDA #$20
                 STA $0691
                 STA $0627
                 LDA #$00
                 STA $0689
                 JSR L_5A57
                 INC $0688
                 RTS
                 CMP #$03
                 BCC L_5A40
L_5A3D           JMP L_5A93
L_5A40           INC $0691
                 LDA $0691
                 CMP #$30
                 BNE L_5A4D
                 INC $0688
L_5A4D           CMP #$4A
                 BCC L_5A57
                 INC $0688
                 JMP L_5AEE
L_5A57           LDA $0627
                 BNE L_5A5F
L_5A5C           JMP L_5AEE
L_5A5F           LDX $0691
                 LDY #$00
                 LDA $0684
                 BNE L_5A7E
L_5A69           LDA L_3CF7,Y
                 STA L_33FE+2,X
                 LDA L_3D11,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5A69
                 JMP L_5AEE
L_5A7E           LDA L_3D04,Y
                 STA L_33FE+2,X
                 LDA L_3D1E,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5A7E
                 JMP L_5AEE
L_5A93           LDA $0685
                 CMP #$E0
                 BCC L_5AB5
                 LDX $0691
                 LDY #$00
                 STY $0627
                 TYA
L_5AA3           STA L_33FE+2,X
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5AA3
                 INC $0688
                 JMP L_5AEE
L_5AB5           LDA $0627
                 BNE L_5ABD
                 JMP L_5AEE
L_5ABD           LDX $0691
                 LDY #$00
                 LDA $0684
                 BNE L_5ADC
L_5AC7           LDA L_3D71+1,Y
                 STA L_33FE+2,X
                 LDA L_3D9A,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5AC7
                 JMP L_5AEE
L_5ADC           LDA L_3D71+1,Y
                 STA L_33FE+2,X
                 LDA L_3DA7+1,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5ADC
L_5AEE           RTS
                 LDA $0688
                 CMP #$02
                 BPL L_5AF7
                 RTS
L_5AF7           JMP L_4EC0
                 BRK
                 BNE L_5B0A
                 LDA L_6800,Y
L_5B00           LDX $060F
                 LDA $0619
                 CMP #$9C
                 BNE L_5B1E
L_5B0A           CPX #$70
                 BNE L_5B1E
                 LDA #$0A
                 LDX $060E
                 BNE L_5B16
                 RTS
L_5B16           DEC $060E
                 DEX
                 STA L_9F6C,X
                 RTS
L_5B1E           JSR L_5B2B
                 LDX $060E
                 STA L_9F6C,X
                 INC $060E
                 RTS
L_5B2B           LDA $0619
                 CMP #$1C
                 BNE L_5B35
                 JMP L_5B5B
L_5B35           CMP #$3C
                 BNE L_5B3C
                 JMP L_5B81
L_5B3C           CMP #$5C
                 BNE L_5B43
                 JMP L_5BA7
L_5B43           CMP #$7C
                 BNE L_5B4A
                 JMP L_5BCD
L_5B4A           CPX #$50
                 BNE L_5B51
                 LDA #$39
                 RTS
L_5B51           CPX #$60
                 BNE L_5B58
                 LDA #$3A
                 RTS
L_5B58           LDA #$0E
                 RTS
L_5B5B           CPX #$50
                 BNE L_5B62
                 LDA #$21
                 RTS
L_5B62           CPX #$60
                 BNE L_5B69
                 LDA #$22
                 RTS
L_5B69           CPX #$70
                 BNE L_5B70
                 LDA #$23
                 RTS
L_5B70           CPX #$80
                 BNE L_5B77
                 LDA #$24
                 RTS
L_5B77           CPX #$90
                 BNE L_5B7E
                 LDA #$25
                 RTS
L_5B7E           LDA #$26
                 RTS
L_5B81           CPX #$50
                 BNE L_5B88
                 LDA #$27
                 RTS
L_5B88           CPX #$60
                 BNE L_5B8F
                 LDA #$28
                 RTS
L_5B8F           CPX #$70
                 BNE L_5B96
                 LDA #$29
                 RTS
L_5B96           CPX #$80
                 BNE L_5B9D
                 LDA #$2A
                 RTS
L_5B9D           CPX #$90
                 BNE L_5BA4
                 LDA #$2B
                 RTS
L_5BA4           LDA #$2C
                 RTS
L_5BA7           CPX #$50
                 BNE L_5BAE
                 LDA #$2D
                 RTS
L_5BAE           CPX #$60
                 BNE L_5BB5
                 LDA #$2E
                 RTS
L_5BB5           CPX #$70
                 BNE L_5BBC
                 LDA #$2F
                 RTS
L_5BBC           CPX #$80
                 BNE L_5BC3
                 LDA #$30
                 RTS
L_5BC3           CPX #$90
                 BNE L_5BCA
                 LDA #$31
                 RTS
L_5BCA           LDA #$32
                 RTS
L_5BCD           CPX #$50
                 BNE L_5BD4
                 LDA #$33
                 RTS
L_5BD4           CPX #$60
                 BNE L_5BDB
                 LDA #$34
                 RTS
L_5BDB           CPX #$70
                 BNE L_5BE2
                 LDA #$35
                 RTS
L_5BE2           CPX #$80
                 BNE L_5BE9
                 LDA #$36
                 RTS
L_5BE9           CPX #$90
                 BNE L_5BF0
                 LDA #$37
                 RTS
L_5BF0           LDA #$38
                 RTS
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_5C00           LDX #$00
                 STX $065D
L_5C05           LDA $0606,X
                 CMP $0600,X
                 BMI L_5C13
                 INX
                 CPX #$05
                 BNE L_5C05
L_5C12           RTS
L_5C13           LDA $0600,X
                 CMP $0606,X
                 BMI L_5C12
                 DEX
                 CPX #$FF
                 BNE L_5C13
                 LDX #$00
L_5C22           LDA $0600,X
                 STA $0606,X
                 INX
                 CPX #$06
                 BNE L_5C22
                 INC $065D
                 RTS
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_5C40           LDA $0616
                 BNE L_5C78
                 LDA #$0F
                 STA L_542E+1
                 LDA $060F
                 STA HPOSP2
                 STA HPOSP3
                 STA $06A0
                 LDA #$28
                 STA $0690
                 STA $0625
                 LDA PCOLR2
                 CMP #$82
                 BEQ L_5C6A
                 LDA #$74
                 JMP L_5C6C
L_5C6A           LDA #$44
L_5C6C           STA PCOLR2
                 LDA #$0F
                 STA PCOLR3
                 INC $0616
                 RTS
L_5C78           LDA $0634
                 BEQ L_5C7E
                 RTS
L_5C7E           INC $0690
                 LDA $0690
                 CMP #$B0
                 BCC L_5C8B
                 JMP L_5D0C
L_5C8B           LDA $0625
                 BNE L_5C91
                 RTS
L_5C91           INC $0687
                 LDA $0687
                 CMP #$02
                 BCC L_5CBE
                 LDA $060F
                 CMP $06A0
                 BNE L_5CA5
                 BEQ L_5CB0
L_5CA5           BMI L_5CAD
                 INC $06A0
                 JMP L_5CB0
L_5CAD           DEC $06A0
L_5CB0           LDA $06A0
                 STA HPOSP2
                 STA HPOSP3
                 LDA #$00
                 STA $0687
L_5CBE           INC $0617
                 LDA $0617
                 CMP #$02
                 BCC L_5CDC
                 LDA #$00
                 STA $0617
                 LDA $0684
                 BEQ L_5CD9
                 LDA #$00
                 STA $0684
                 BEQ L_5CDC
L_5CD9           INC $0684
L_5CDC           LDX $0690
                 LDY #$00
                 LDA $0684
                 BNE L_5CF9
L_5CE6           LDA L_3CF7,Y
                 STA L_3600,X
                 LDA L_3D11,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5CE6
                 RTS
L_5CF9           LDA L_3D04,Y
                 STA L_3600,X
                 LDA L_3D1E,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5CF9
                 RTS
L_5D0C           LDX $0690
                 LDY #$00
                 TYA
L_5D12           STA L_35FF,X
                 STA L_36FD+2,X
                 INX
                 INY
                 CPY #$0E
                 BNE L_5D12
                 STA $0615
L_5D21           STA $0625
                 STA $0616
                 LDA #$11
                 STA L_542E+1
                 RTS
                 ASL LTEMP+1,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5D21+2
                 RTS
                 LDA #$01
                 STA $0616
                 LDX $0690
                 LDY #$00
                 TYA
L_5D41           STA L_35FF,X
                 STA L_36FD+2,X
                 INX
                 INY
                 CPY #$0E
L_5D4B           BNE L_5D41
                 RTS
                 BRK
                 CPY #$30
                 BCC L_5D4B+1
                 STY AUDF2
                 INY
                 INY
                 STY AUDF3
                 LDY #$00
                 LDX #$00
                 INX
L_5D60           LDA #$FF
                 STA $0634
                 LDA #$CA
                 STA AUDC3
                 LDA $0690
                 STA AUDF3
                 LDA $06A0
                 CMP $060F
                 BCC L_5D7E
                 DEC $06A0
                 JMP L_5D81
L_5D7E           INC $06A0
L_5D81           LDA $06A0
                 STA HPOSP2
                 STA HPOSP3
                 LDA $0611
                 CLC
                 ADC #$70
                 STA $0664
                 LDA $0690
                 CMP $0664
                 BCC L_5DC1
                 CMP #$30
                 BCS L_5DBB
                 LDX #$00
                 TAY
                 TXA
L_5DA3           STA L_3600,Y
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0F
                 BNE L_5DA3
                 LDA #$00
                 STA $0634
                 STA $0663
                 STA AUDC3
                 RTS
L_5DBB           DEC $0690
                 JMP L_5DC4
L_5DC1           INC $0690
L_5DC4           LDX #$00
                 LDY $0690
                 INC $06A2
                 LDA $06A2
                 CMP #$01
                 BEQ L_5DEB
L_5DD3           LDA L_5E1C,X
                 STA L_3700,Y
                 LDA L_5DFE,X
                 STA L_3600,Y
                 INY
                 INX
                 CPX #$0F
                 BNE L_5DD3
                 LDA #$00
                 STA $06A2
                 RTS
L_5DEB           LDA L_5E0D,X
                 STA L_3600,Y
                 LDA L_5E1C,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0F
                 BNE L_5DEB
                 RTS
L_5DFE           BRK
                 CLC
                 .byte $3C
                 .byte $34
                 .byte $7A
                 .byte $5A
                 .byte $E3
                 .byte $FF
                 .byte $E7
                 BVS L_5E81
                 .byte $3C
                 .byte $3C
                 CLC
                 BRK
L_5E0D           BRK
                 CLC
                 .byte $3C
                 BIT L_5A5C+2
                 .byte $C7
                 .byte $FF
                 .byte $E7
                 ASL L_3C1E
                 .byte $3C
                 CLC
                 BRK
L_5E1C           BRK
                 CLC
                 .byte $3C
                 .byte $3C
                 ROR $FF7E,X
                 .byte $FF
                 .byte $FF
                 ROR L_3C7E,X
                 .byte $3C
                 CLC
                 BRK
                 BRK
                 BVS L_5DFE
                 ORA #$A9
                 RTI
                 STA HPOSP2
                 STA $0640
                 RTS
L_5E38           LDA #$00
                 STA $0624
                 STA $0625
                 STA $0627
                 STA $0616
                 STA SIZEP2
                 STA SIZEP3
                 STA $0634
                 LDX $06AB
                 BEQ L_5E55
                 RTS
L_5E55           TAX
L_5E56           STA L_33FE+2,X
                 STA L_3500,X
                 STA L_3600,X
L_5E5F           STA L_3700,X
                 STA L_3680,X
                 STA L_3780,X
                 INX
                 CPX #$80
                 BCC L_5E56
                 LDX $06C2
                 BNE L_5E74
                 LDA #$01
L_5E74           STA $06C2
                 INC $06AF
                 LDX $06AF
                 CPX #$10
                 BCC L_5E86
L_5E81           LDX #$00
                 STX $06AF
L_5E86           LDA $06B2
                 CMP #$03
                 BCC L_5E92
                 LDA #$00
                 STA $06B2
L_5E92           CMP #$00
                 BNE L_5E9D
                 LDA L_5EBA,X
                 STA $0615
                 RTS
L_5E9D           CMP #$01
                 BNE L_5EA8
                 LDA L_5ECB,X
                 STA $0615
                 RTS
L_5EA8           CMP #$02
                 BNE L_5EB3
                 LDA L_5EDC,X
                 STA $0615
                 RTS
L_5EB3           LDA L_5EED,X
                 STA $0615
                 RTS
L_5EBA           ORA (CASINI,X)
                 .byte $03
                 ORA (CASINI+1,X)
                 .byte $02
                 .byte $04
                 ORA RAMLO+1
                 ORA (NGFLAG,X)
                 .byte $02
                 .byte $04
                 .byte $03
                 .byte $04
                 ORA (CASINI+1,X)
L_5ECB           ORA (RAMLO+1,X)
                 ORA TRAMSZ
                 .byte $04
                 .byte $07
                 ORA RAMLO+1
                 ORA (WARMST,X)
                 ORA #$01
                 .byte $02
                 ASL DOSVEC+1
                 .byte $02
                 .byte $04
L_5EDC           ORA (DOSVEC,X)
                 .byte $0B
                 .byte $02
                 ORA (DOSVEC+1,X)
                 PHP
                 ORA #$05
                 ORA CASINI+1
                 ASL
                 .byte $02
                 .byte $07
                 PHP
                 .byte $07
                 .byte $03
L_5EED           ASL CMCMD
                 PHP
                 ORA #$0A
                 .byte $0B
                 ORA RAMLO+1
                 PHP
                 ORA #$02
                 .byte $03
                 ASL
                 ASL
                 ASL
                 ASL
                 ASL
                 ORA (CASINI,X)
L_5F00           LDX $0690
                 LDY #$00
                 LDA #$0F
                 STA AUDC4
                 INC $06A2
                 LDA $06A2
                 STA AUDF4
                 CMP #$08
                 BCS L_5F2A
L_5F17           LDA L_6F90,Y
                 STA L_3600,X
                 LDA L_6F9D,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5F17
                 RTS
L_5F2A           CMP #$10
                 BCS L_5F41
L_5F2E           LDA L_6FAA,Y
                 STA L_3600,X
                 LDA L_6FB7,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5F2E
                 RTS
L_5F41           CMP #$18
                 BCS L_5F48
                 JMP L_5F17
L_5F48           CMP #$20
                 BCS L_5F4F
                 JMP L_5F2E
L_5F4F           CMP #$28
                 BCS L_5F65
L_5F53           LDA L_6FC4,Y
                 STA L_3600,X
                 LDA #$00
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5F53
                 RTS
L_5F65           CMP #$30
                 BCS L_5F76
L_5F69           LDA L_6FD1,Y
                 STA L_3600,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5F69
                 RTS
L_5F76           CMP #$38
                 BCS L_5F87
L_5F7A           LDA L_6FDE,Y
                 STA L_3600,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5F7A
                 RTS
L_5F87           CMP #$40
                 BCS L_5F9D
L_5F8B           LDA #$00
                 STA L_3600,X
                 LDA L_5FE3,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5F8B
                 RTS
L_5F9D           CMP #$48
                 BCS L_5FAE
L_5FA1           LDA L_5FF0,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_5FA1
                 RTS
L_5FAE           CMP #$50
                 BCS L_5FB5
                 JMP L_5F8B
L_5FB5           LDA #$00
                 STA $0637
                 STA $06AE
                 STA AUDC4
                 LDA $0683
                 BPL L_5FCB
                 LDA #$01
                 STA $0634
                 RTS
L_5FCB           LDA #$00
                 STA $06A7
                 STA AUDC4
                 STA $062F
                 STA $0637
                 JSR L_6650
                 JSR L_67CF
                 JSR L_67CF
                 RTS
L_5FE3           BRK
                 BRK
                 BRK
                 BRK
                 JSR $0800
                 RTI
                 BRK
                 BPL L_5FEE
L_5FEE           BRK
                 BRK
L_5FF0           BRK
                 BRK
                 BRK
                 JSR L_4013+1
                 .byte $82
                 BRK
                 .byte $82
                 .byte $80
                 PLP
                 BRK
                 BRK
                 BRK
L_5FFE           LDA L_A233,X
                 BRK
                 LDA $0624
                 BEQ L_6010
                 STX $0624
                 STX $06A1
                 INC $06A6
L_6010           LDA $0625
                 BEQ L_601E
                 STX $0625
                 STX $06A2
                 INC $06A7
L_601E           LDA $0627
                 BEQ L_602C
                 STX $0627
                 STX $06A3
                 INC $06A8
L_602C           LDY $0692
                 LDX #$00
                 TXA
                 STA $06B0
                 STA $06B1
L_6038           STA L_33FE+2,Y
                 STA L_3500,Y
                 STA L_3600,Y
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_6038
                 LDY $0693
                 LDX #$00
L_604F           STA L_33FE+2,Y
                 STA L_3500,Y
                 STA L_3600,Y
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_604F
                 STA $0653
                 STA L_9F86
                 RTS
                 BRK
                 LDX #$06
L_606B           INC $06A7
                 LDA $0627
                 BEQ L_607C
                 STX $0627
                 STX $06A3
                 INC $06A8
L_607C           STX $0653
                 STX L_9F86
                 RTS
                 BRK
                 BRK
                 LDX #$00
L_6087           INX
                 BNE L_6087
                 INY
                 CPY #$50
                 BNE L_6087
                 PLA
L_6090           LDA $06A7
                 BNE L_6096
                 RTS
L_6096           LDA $0637
                 BEQ L_609E
                 JMP L_5F00
L_609E           LDX $0690
                 LDY #$00
                 LDA $0634
                 BEQ L_60AB
                 JMP L_6111
L_60AB           LDA #$0F
                 STA AUDC4
                 INC $06A2
                 LDA $06A2
                 STA AUDF4
                 CMP #$08
                 BCS L_60D0
L_60BD           LDA L_3F4E,Y
                 STA L_3600,X
                 LDA L_3F5B,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_60BD
                 RTS
L_60D0           CMP #$18
                 BCS L_60E7
L_60D4           LDA L_3F33+1,Y
                 STA L_3600,X
                 LDA L_3F41,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_60D4
                 RTS
L_60E7           CMP #$20
                 BCS L_60EE
                 JMP L_60BD
L_60EE           JSR L_6186
                 LDA #$00
                 STA AUDC4
                 STA $062F
                 JSR L_67B8
                 JSR L_67CF
                 LDA $0615
                 CMP #$01
                 BEQ L_616E
                 LDA $0683
                 BPL L_616E
                 LDA #$01
                 STA $0634
                 RTS
L_6111           CMP #$02
                 BEQ L_6140
                 CPX #$B0
                 BCS L_616B
                 LDA PCOLR2
                 CMP #$38
                 BEQ L_612A
                 CMP #$26
                 BEQ L_6127
                 JMP L_6195
L_6127           JMP L_61A9
L_612A           LDA L_3E7D,Y
                 STA L_3600,X
                 LDA L_3E8A,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_612A
                 INC $0690
                 RTS
L_6140           LDA $0651
                 BEQ L_614E
                 JSR L_67E6
                 JSR L_6650
                 JMP L_616E
L_614E           LDA $0650
                 BEQ L_615F
                 LDA #$01
                 STA $0653
                 LDA #$24
                 STA L_9F86
                 BNE L_616E
L_615F           LDA #$2A
                 STA L_9F74
                 LDA #$05
                 STA $0656
                 BNE L_616E
L_616B           INC $0663
L_616E           LDA #$00
                 STA $06A7
                 STA $0634
                 STA $0651
                 STA $0650
                 LDA PCOLR2
                 CMP #$38
                 BNE L_6186
                 JMP L_6650
L_6186           LDA #$00
L_6188           STA L_3600,X
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0E
                 BNE L_6188
                 RTS
L_6195           LDA L_3E64,Y
                 STA L_3600,X
L_619B           LDA L_3E6E+2,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_6195
                 BEQ L_61BB
L_61A9           LDA L_3E97,Y
                 STA L_3600,X
                 LDA L_3EA4,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_61A9
L_61BB           INC $0690
                 RTS
L_61BF           ASL LELNUM
                 .byte $87
                 ASL $D0
                 AND #$AD
                 STA TRAMSZ
                 CMP #$38
                 BCS L_61CD
                 RTS
L_61CD           LDA #$70
                 STA $0690
                 STA $0625
                 LDA #$28
                 STA HPOSP2
                 STA HPOSP3
                 STA $06A0
                 LDA #$0F
                 STA PCOLR3
                 LDA #$44
                 STA PCOLR2
                 INC $0687
                 RTS
                 LDA $0634
                 BEQ L_61F4
                 RTS
L_61F4           LDY $0690
                 LDX #$00
                 LDA $0687
                 CMP #$03
                 BCC L_6203
                 JMP L_624F
L_6203           INC $06A0
                 LDA $06A0
                 STA HPOSP2
                 STA HPOSP3
                 CMP #$30
                 BNE L_6216
                 INC $0687
L_6216           CMP #$8A
                 BCC L_621E
                 INC $0687
                 RTS
L_621E           LDA $0625
                 BNE L_6224
                 RTS
L_6224           LDA $0684
                 BNE L_623C
L_6229           LDA L_3DB4+1,X
                 STA L_3600,Y
                 LDA L_3DC2,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_6229
                 RTS
L_623C           LDA L_3DB4+1,X
                 STA L_3600,Y
                 LDA L_3DCF,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_623C
                 RTS
L_624F           CMP #$05
                 BCS L_626D
                 INC $0687
                 LDA $0625
                 BNE L_625C
                 RTS
L_625C           LDA L_3DDC,X
                 STA L_3600,Y
                 LDA L_3DE9,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0D
                 RTS
L_626D           CMP #$06
                 BCS L_62B3
                 INC $0690
                 LDA $0690
                 CMP #$80
                 BCC L_6282
                 INC $0687
                 JSR L_62EC
                 RTS
L_6282           LDA $0625
                 BNE L_6288
                 RTS
L_6288           LDA $0684
                 BNE L_62A0
L_628D           LDA L_3CF7,X
                 STA L_3600,Y
                 LDA L_3D11,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_628D
                 RTS
L_62A0           LDA L_3CF7,X
                 STA L_3600,Y
                 LDA L_3D1E,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_62A0
                 RTS
L_62B3           CMP #$09
                 BCS L_62D3
                 INC $0687
                 LDA $0625
                 BNE L_62C0
                 RTS
L_62C0           LDA L_3DF6,X
                 STA L_3600,Y
                 LDA L_3E03,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_62C0
                 RTS
L_62D3           LDA $06A0
                 CMP #$28
                 BCS L_62FA
                 LDA #$00
                 STA $0625
                 STA $0616
                 LDA #$00
                 STA $0615
                 LDA #$11
                 STA L_542E+1
L_62EC           TXA
L_62ED           STA L_3600,Y
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_62ED
                 RTS
L_62FA           DEC $0690
                 DEC $06A0
                 LDA $06A0
                 STA HPOSP2
                 STA HPOSP3
                 LDA $0625
                 BNE L_630F
                 RTS
L_630F           LDA $0684
                 BNE L_6327
L_6314           LDA L_3E37,X
                 STA L_3600,Y
                 LDA L_3E44,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_6314
                 RTS
L_6327           LDA L_3E37,X
                 STA L_3600,Y
                 LDA L_3EB1,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_6327
                 RTS
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_6360           LDA $0616
                 BNE L_639B
                 LDA #$50
                 STA $061D
                 STA $0624
                 LDA #$00
                 STA HPOSP2
                 STA HPOSP3
                 LDA #$28
                 STA $0685
                 STA $0686
                 LDA #$0E
                 STA PCOLR1
                 LDA #$64
                 STA PCOLR0
                 LDA #$00
                 STA $0684
                 STA $0617
                 STA $0687
                 LDA #$0E
                 STA L_542E+1
                 INC $0616
                 RTS
L_639B           INC $0617
                 LDA $0617
                 CMP #$03
                 BCC L_63BA
                 LDA #$00
                 STA $0617
                 LDA $0684
                 BNE L_63B5
                 INC $0684
                 JMP L_63BA
L_63B5           LDA #$00
                 STA $0684
L_63BA           LDY $061D
                 LDX #$00
                 LDA $0616
                 CMP #$03
                 BCC L_63C9
                 JMP L_6412
L_63C9           INC $0685
                 INC $0686
                 LDA $0685
                 CMP #$30
                 BNE L_63D9
                 INC $0616
L_63D9           CMP #$8A
                 BCC L_63E1
                 INC $0616
                 RTS
L_63E1           LDA $0624
                 BNE L_63E7
                 RTS
L_63E7           LDA $0684
                 BNE L_63FF
L_63EC           LDA L_3DB4+1,X
                 STA L_33FE+2,Y
                 LDA L_3DC2,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_63EC
                 RTS
L_63FF           LDA L_3DB4+1,X
                 STA L_33FE+2,Y
                 LDA L_3DCF,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_63FF
                 RTS
L_6412           CMP #$04
                 BCS L_6430
                 LDA $0624
                 BNE L_641C
                 RTS
L_641C           LDA L_3DDC,X
                 STA L_33FE+2,Y
                 LDA L_3DE9,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0D
                 INC $0616
                 RTS
L_6430           CMP #$05
                 BCS L_6476
                 INC $061D
                 LDA $061D
                 CMP #$60
                 BCC L_6445
                 INC $0616
                 JSR L_64A2
                 RTS
L_6445           LDA $0624
                 BNE L_644B
                 RTS
L_644B           LDA $0684
                 BNE L_6463
L_6450           LDA L_3CF7,X
                 STA L_33FE+2,Y
                 LDA L_3D11,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_6450
                 RTS
L_6463           LDA L_3CF7,X
                 STA L_33FE+2,Y
                 LDA L_3D1E,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_6463
                 RTS
L_6476           CMP #$07
                 BCS L_6496
                 INC $0616
                 LDA $0624
                 BNE L_6483
                 RTS
L_6483           LDA L_3DF6,X
                 STA L_33FE+2,Y
                 LDA L_3E03,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_6483
                 RTS
L_6496           LDA $0685
                 CMP #$28
                 BCS L_64B0
                 LDA #$00
                 STA $0624
L_64A2           TXA
L_64A3           STA L_33FE+2,Y
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_64A3
                 RTS
L_64B0           DEC $0685
                 DEC $0686
                 LDA $0624
                 BNE L_64BC
                 RTS
L_64BC           LDA $0684
                 BNE L_64D4
L_64C1           LDA L_3E10,X
                 STA L_33FE+2,Y
                 LDA L_3E1D,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_64C1
                 RTS
L_64D4           LDA L_3E10,X
                 STA L_33FE+2,Y
                 LDA L_3E2A,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0D
                 BNE L_64D4
                 RTS
                 BRK
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 AND L_3AFF+1,X
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
                 .byte $3C
L_6500           LDA $0687
                 BNE L_653F
                 LDA #$98
                 STA $0690
                 STA $0625
                 LDA $0683
                 BMI L_6516
                 LDA #$D0
                 BNE L_6518
L_6516           LDA #$28
L_6518           STA $06A0
                 STA HPOSP2
                 STA HPOSP3
                 LDA #$00
                 STA $06AE
                 LDA #$2F
                 STA PCOLR3
                 LDA #$38
                 STA PCOLR2
                 LDA #$01
                 STA SIZEP2
                 STA SIZEP3
                 JSR L_6592
                 INC $0687
                 RTS
L_653F           LDA $0625
                 BNE L_6547
                 JMP L_6592
L_6547           LDA $0617
                 CMP #$02
                 BEQ L_654F
                 RTS
L_654F           LDA $06A0
                 CMP $060F
                 BEQ L_6562
                 BCC L_655F
                 DEC $06A0
                 JMP L_6562
L_655F           INC $06A0
L_6562           LDA $06A0
                 STA HPOSP2
                 STA HPOSP3
                 LDA $0687
                 CMP #$02
                 BNE L_6583
                 DEC $0690
                 LDA $0690
                 CMP #$40
                 BCS L_6592
                 LDA #$03
                 STA $0687
                 BNE L_6592
L_6583           INC $0690
                 LDA $0690
                 CMP #$80
                 BCC L_6592
                 LDA #$02
                 STA $0687
L_6592           LDA $0625
                 BNE L_65AA
                 LDX #$00
                 LDY $0690
                 TXA
L_659D           STA L_360C,Y
                 STA L_370C,Y
                 INY
                 INX
                 CPX #$07
                 BNE L_659D
                 RTS
L_65AA           LDX $0690
                 LDY #$00
                 LDA $0684
                 BNE L_65C7
L_65B4           LDA L_3F70,Y
                 STA L_3600,X
                 LDA L_3F83,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$13
                 BNE L_65B4
                 RTS
L_65C7           LDA L_3F70,Y
                 STA L_3600,X
                 LDA L_3F96,Y
                 STA L_3700,X
                 INX
                 INY
                 CPY #$13
                 BNE L_65C7
                 RTS
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 LDA #$00
                 STA $0616
                 STA $0625
                 STA SIZEP2
                 STA SIZEP3
                 LDA #$00
L_6650           LDA #$00
                 STA $0616
                 STA $0625
                 STA SIZEP2
                 STA SIZEP3
                 STA $06AE
                 STA $0615
                 LDA #$11
                 STA L_542E+1
                 LDY $0690
                 LDX #$00
                 TXA
L_666F           STA L_3600,Y
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$13
                 BNE L_666F
                 RTS
                 BRK
                 EOR L_4D4D
L_6680           LDA #$0F
                 STA AUDC4
                 LDY #$A8
                 LDA #$05
                 STA $066B
                 INC $066A
                 LDA $066A
                 STA AUDF4
                 CMP #$10
                 BCS L_66B8
L_6699           LDX #$0C
L_669B           LDA L_3F33+1,X
                 STA L_3600,Y
                 LDA L_3F41,X
                 STA L_3700,Y
                 DEY
                 DEX
                 CPX #$FF
                 BNE L_669B
                 DEY
                 DEY
                 DEC $066B
                 LDA $066B
                 BNE L_6699
                 RTS
L_66B8           CMP #$30
                 BCS L_66DB
L_66BC           LDX #$0C
L_66BE           LDA L_3F4E,X
                 STA L_3600,Y
                 LDA L_3F5B,X
                 STA L_3700,Y
                 DEY
                 DEX
                 CPX #$FF
                 BNE L_66BE
                 DEY
                 DEY
                 DEC $066B
                 LDA $066B
                 BNE L_66BC
                 RTS
L_66DB           CMP #$40
                 BCS L_66E2
                 JMP L_6699
L_66E2           LDX #$00
                 TXA
L_66E5           STA L_3600,X
                 STA L_3700,X
                 INX
                 BNE L_66E5
                 LDA #$00
                 STA $06A6
                 STA $0615
                 STA AUDC4
                 STA $062F
                 JSR L_67E6
                 RTS
L_6700           JSR L_568F+1
                 LDX #$00
                 LDA #$06
L_6707           STA L_3007,X
                 INX
                 CPX #$12
                 BNE L_6707
                 LDA #$07
                 STA L_3010
                 STA L_3011
                 LDX #$00
L_6719           LDA L_6791,X
                 STA L_342B+1,X
                 JSR L_4300
                 INX
                 CPX #$0A
                 BNE L_6719
                 LDA $069A
                 STA L_3435+1
                 LDA $069B
                 STA L_3437
                 INC $069B
                 LDA $069B
                 CMP #$1A
                 BMI L_6745
                 LDA #$10
                 STA $069B
                 INC $069A
L_6745           LDX #$00
L_6747           LDA L_679A+1,X
                 STA L_348F,X
                 JSR L_4300
                 INX
                 CPX #$0D
                 BNE L_6747
                 LDA $062A
                 CLC
                 ADC #$11
                 STA L_349A+2
                 CMP #$11
                 BMI L_676F
L_6762           JSR L_67E6
                 DEC $062A
                 LDA $062A
                 CMP #$FF
                 BPL L_6762
L_676F           LDX #$00
L_6771           LDA L_67A8,X
                 STA L_34E0+1,X
                 JSR L_4300
                 INX
                 CPX #$05
                 BNE L_6771
                 LDA $069A
                 STA L_34E7+1
                 LDA $069B
                 STA L_34E9
                 JSR L_2000
                 JMP L_560B
L_6791           BIT L_3321
                 .byte $34
                 BRK
                 .byte $33
                 .byte $34
                 AND (ICPTHZ,X)
L_679A           AND ICCOMZ
                 .byte $2F
                 ROL L_3334+1
                 BRK
                 BIT $110A
                 BPL L_67B4+2
                 BPL L_67C3+2
L_67A8           .byte $33
                 .byte $34
                 AND (ICPTHZ,X)
                 AND LNFLG
                 CLI
                 .byte $5B
                 EOR L_585A,Y
                 .byte $5B
L_67B4           EOR L_585A,Y
                 .byte $5B
L_67B8           LDY $0605
                 INY
                 CPY #$1A
                 BEQ L_67C7
                 STY L_9FA1
L_67C3           STY $0605
                 RTS
L_67C7           LDY #$10
                 STY L_9FA1
                 STY $0605
L_67CF           LDY $0604
                 INY
                 CPY #$1A
                 BEQ L_67DE
                 STY L_9FA0
                 STY $0604
                 RTS
L_67DE           LDY #$10
                 STY L_9FA0
                 STY $0604
L_67E6           LDY $0603
                 INY
                 CPY #$1A
                 BEQ L_67F5
                 STY L_9F9F
                 STY $0603
                 RTS
L_67F5           LDY #$10
                 STY L_9F9F
                 STY $0603
                 JSR L_4FE0
L_6800           LDY $0602
                 INY
                 CPY #$1A
                 BEQ L_680F
                 STY L_9F9E
                 STY $0602
                 RTS
L_680F           LDY #$10
                 STY L_9F9E
                 STY $0602
                 LDY $0601
                 INY
                 CPY #$1A
                 BEQ L_6826
                 STY $0601
                 STY L_9F9D
                 RTS
L_6826           LDY #$10
                 STY $0601
                 STY L_9F9D
                 LDY $0600
                 INY
                 CPY #$1A
                 BEQ L_683C
                 STY L_9F9C
                 STY $0600
L_683C           RTS
                 BRK
                 DEC LOGCOL
L_6840           LDX $0611
                 LDY #$00
                 LDA #$0F
                 STA AUDC4
                 INC $0696
                 LDA $0696
                 STA AUDF4
                 CMP #$10
                 BCS L_686F
                 LDA #$26
                 STA L_407D+1
L_685C           LDA L_3F33+1,Y
                 STA L_3470,X
                 LDA L_3F41,Y
                 STA L_3570,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_685C
                 RTS
L_686F           CMP #$20
                 BCS L_6886
L_6873           LDA L_3F18+2,Y
                 STA L_3470,X
                 LDA L_3F27,Y
                 STA L_3570,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_6873
                 RTS
L_6886           CMP #$30
                 BCS L_689D
L_688A           LDA L_3EFE+2,Y
                 STA L_3470,X
                 LDA L_3F0D,Y
                 STA L_3570,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_688A
                 RTS
L_689D           CMP #$40
                 BCS L_68B4
L_68A1           LDA L_3F18+2,Y
                 STA L_3470,X
                 LDA L_3F27,Y
                 STA L_3570,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_68A1
                 RTS
L_68B4           CMP #$50
                 BCS L_68BB
                 JMP L_685C
L_68BB           CMP #$80
                 BCS L_68CE
                 LDA #$00
L_68C1           STA L_3470,X
                 STA L_3570,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_68C1
                 RTS
L_68CE           LDA #$00
                 STA $0695
                 STA AUDC4
                 DEC $062E
                 DEC L_9FA5
                 INC $0698
                 LDA $062E
                 CMP #$10
                 BPL L_68EC
                 JSR L_555F+1
                 JMP L_68EF
L_68EC           JSR L_6CFF+1
L_68EF           LDA #$75
                 STA L_407D+1
                 RTS
                 BRK
                 ADC L_75A9
                 STA L_407D+1
                 RTS
                 BRK
                 BRK
                 BRK
L_6900           LDA $0619
                 STA $0628
                 LDA M2PL
                 AND #$05
                 BNE L_6915
                 LDA M3PL
                 AND #$05
                 BNE L_691F
                 RTS
L_6915           CMP #$02
                 BPL L_6929
                 LDA $0619
                 BPL L_692C
                 RTS
L_691F           CMP #$02
                 BPL L_6929
                 LDA $061A
                 BPL L_692C
                 RTS
L_6929           JMP L_6A21
L_692C           LDA $061D
                 CLC
                 ADC #$03
                 STA $0629
                 LDY #$07
L_6937           LDA $0628
                 CMP $0629
                 BEQ L_6948
                 INC $0629
                 DEY
                 BNE L_6937
                 JMP L_695F
L_6948           LDA $0624
                 BNE L_694E
                 RTS
L_694E           LDA #$00
                 STA $0624
                 STA $06A1
                 INC $06A6
                 LDY $061D
                 JMP L_698D
L_695F           LDA $0691
                 CLC
                 ADC #$03
                 STA $0629
                 LDY #$07
L_696A           LDA $0628
                 CMP $0629
                 BEQ L_6979
                 INC $0629
                 DEY
                 BNE L_696A
                 RTS
L_6979           LDA $0627
                 BNE L_697F
                 RTS
L_697F           LDA #$00
                 STA $0627
                 STA $06A3
                 INC $06A8
                 LDY $0691
L_698D           DEY
                 LDX #$00
L_6990           STA L_33FE+2,Y
                 STA L_3500,Y
                 STA L_3600,Y
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$0F
                 BNE L_6990
                 INC $069F
                 LDA $069F
                 CMP #$1A
                 BPL L_69AF
                 JMP L_69DB
L_69AF           LDA #$10
                 STA $069F
                 INC $069E
                 LDA $069E
                 CMP #$1A
                 BPL L_69C1
                 JMP L_69DB
L_69C1           LDA #$10
                 STA $069E
                 INC $069D
                 LDA $069D
                 CMP #$1A
                 BPL L_69D3
                 JMP L_69DB
L_69D3           LDA #$1A
                 STA $069D
                 INC $069C
L_69DB           LDY $0619
                 LDX #$00
L_69E0           LDA L_3300,Y
                 AND #$AF
                 STA L_3300,Y
                 DEY
                 INX
                 CPX #$0C
                 BNE L_69E0
                 LDA #$00
                 STA $061B
                 STA $061C
                 RTS
L_69F7           LDA $0690
                 CLC
                 ADC #$0A
                 TAY
                 INC $066D
                 LDA $066D
                 CMP #$01
                 BNE L_6A13
                 LDA #$1A
                 STA L_3600,Y
                 LDA #$6B
                 STA L_35FF,Y
                 RTS
L_6A13           LDA #$34
                 STA L_35FE,Y
                 STA L_35FD,Y
                 LDA #$00
                 STA $066D
                 RTS
L_6A21           LDA $0690
                 CLC
                 ADC #$03
                 STA $0629
                 LDY #$07
L_6A2C           LDA $0628
                 CMP $0629
                 BEQ L_6A3B
                 INC $0629
                 DEY
                 BNE L_6A2C
                 RTS
L_6A3B           LDA $0625
                 BNE L_6A41
                 RTS
L_6A41           LDA $0615
                 CMP #$03
                 BEQ L_6A50
                 CMP #$08
                 BEQ L_6A50
                 CMP #$09
                 BNE L_6A65
L_6A50           INC $06AE
                 LDA $06AE
                 CMP #$20
                 BCS L_6A60
                 JSR L_69F7
                 JMP L_69DB
L_6A60           LDA #$01
                 STA $0637
L_6A65           LDA #$00
                 STA $0625
                 STA $06A2
                 STA $06AE
                 INC $06A7
                 LDA #$00
                 LDY $0690
                 JMP L_698D
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_6A80           LDA $06A6
                 BNE L_6A86
                 RTS
L_6A86           LDA #$0F
                 STA AUDC4
                 LDX $061D
                 LDY #$00
                 INC $06A1
                 LDA $06A1
                 STA AUDF4
                 CMP #$06
                 BCS L_6AB0
L_6A9D           LDA L_3F33+1,Y
                 STA L_33FE+2,X
                 LDA L_3F41,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_6A9D
                 RTS
L_6AB0           CMP #$18
                 BCS L_6AC7
L_6AB4           LDA L_3F4E,Y
                 STA L_33FE+2,X
                 LDA L_3F5B,Y
L_6ABD           STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_6AB4
                 RTS
L_6AC7           CMP #$20
                 BCS L_6ACE
                 JMP L_6A9D
L_6ACE           LDA #$00
L_6AD0           STA L_33FE+2,X
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_6AD0
                 LDA #$00
                 STA $06A6
                 STA AUDC4
                 STA $062F
                 JSR L_67B8
                 JSR L_67CF
                 RTS
                 STA LNFLG
                 BRK
                 BRK
                 BRK
                 BRK
                 LDX $06BF
                 CPX #$00
                 BNE L_6B0D
                 LDA #$EF
L_6AFE           STA L_ADBC
                 ASL TRAMSZ,X
                 BNE L_6B34
                 LDA #$28
                 STA $0690
                 STA $0625
L_6B0D           LDA $0683
                 STA HPOSP2
                 STA HPOSP3
                 STA $06A0
                 LDA #$34
                 STA PCOLR3
                 LDA #$0F
                 STA PCOLR2
                 LDA #$00
                 STA $0684
                 STA $0617
                 LDA #$0E
                 STA L_542E+1
                 INC $0616
                 RTS
L_6B34           INC $0617
                 LDA $0617
                 CMP #$04
                 BCC L_6B53
                 LDA #$00
                 STA $0617
                 LDA $0684
                 BNE L_6B4E
                 INC $0684
                 JMP L_6B53
L_6B4E           LDA #$00
                 STA $0684
L_6B53           LDA $0634
                 BEQ L_6B59
                 RTS
L_6B59           INC $0690
                 LDA $0625
                 BEQ L_6B64
                 INC $0690
L_6B64           JMP L_1D30
                 BRK
                 CLV
                 .byte $67
                 JSR L_67B8
                 JSR L_67CF
                 RTS
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_6B80           LDA $06A8
                 BNE L_6B86
                 RTS
L_6B86           LDX $0691
                 LDY #$00
                 LDA #$0F
                 STA AUDC4
                 INC $06A3
                 LDA $06A3
                 STA AUDF4
                 CMP #$18
                 BCS L_6BB0
L_6B9D           LDA L_3F4E,Y
                 STA L_33FE+2,X
                 LDA L_3F5B,Y
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_6B9D
                 RTS
L_6BB0           LDA #$00
L_6BB2           STA L_33FE+2,X
                 STA L_3500,X
                 INX
                 INY
                 CPY #$0D
                 BNE L_6BB2
                 LDA #$00
                 STA $06A8
                 STA AUDC4
                 STA $062F
                 JSR L_67B8
                 JSR L_67CF
                 RTS
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_6C00           LDA #$00
                 STA $0678
                 STA AUDC3
                 STA AUDC4
L_6C0B           LDA #$00
                 STA CH
                 INC $06AD
L_6C13           LDX #$00
L_6C15           LDA L_6C61,X
                 STA L_9F81,X
                 INX
                 CPX #$05
                 BNE L_6C15
                 JSR L_6C52
                 LDX #$00
L_6C25           LDA L_6C65+1,X
                 STA L_9F81,X
                 INX
                 CPX #$05
                 BNE L_6C25
                 JSR L_6C52
                 LDA $0678
                 BNE L_6C42
                 LDA CH
                 CMP #$0A
                 BEQ L_6C0B
                 INC $0678
L_6C42           LDA CH
                 CMP #$0A
                 BNE L_6C13
                 LDA #$00
                 STA $06AD
                 STA CH
                 RTS
L_6C52           TXA
                 PHA
                 LDX #$00
                 LDY #$00
L_6C58           INX
                 BNE L_6C58
                 INY
                 BNE L_6C58
L_6C5E           PLA
                 TAX
                 RTS
L_6C61           BMI L_6C83+1
                 AND BUFRHI,X
L_6C65           AND ICBLLZ
                 AND #$27
                 PLP
                 BRK
                 BRK
                 .byte $13
                 LDA $063C
                 CMP #$07
                 BCC L_6C7A
                 INC $063F
L_6C77           JMP L_6C92
L_6C7A           INC $063C
                 JMP L_6C92
L_6C80           INC $0613
L_6C83           LDA #$00
                 STA $0614
                 RTS
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_6C92           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_6CA0           LDA #$00
                 STA VSCROL
                 STA $0680
                 STA $062F
                 STA $06AB
                 STA $06AD
                 STA $0634
                 STA $0650
                 STA $0651
                 STA $0652
                 STA $0637
                 STA $0657
                 STA $0663
                 STA $06B3
                 STA $06BB
                 STA $06BF
                 STA $06CC
                 LDA #$11
                 STA $06B4
                 JSR L_6C80
                 LDA #$FF
                 STA CH
                 LDX #$00
                 LDA #$01
L_6CE3           STA L_9F7C,X
                 INX
                 CPX #$03
                 BNE L_6CE3
                 DEX
                 STX $062A
L_6CEF           RTS
                 BRK
                 ADC L_619B+2
                 STX FR2+2,Y
                 CPX #$07
                 BCC L_6CEF
                 LDA $0641
                 BNE L_6D11+1
L_6CFF           LDA L_9020
                 LSR MVLNG,X
                 BRK
                 LDA #$07
L_6D07           STA L_3007,X
                 INX
                 CPX #$12
                 BNE L_6D07
                 LDX #$00
L_6D11           LDA L_6D2E,X
                 STA L_347D+1,X
                 JSR L_4300
                 INX
                 CPX #$05
                 BNE L_6D11
                 LDA $069A
                 STA L_3483+1
                 LDA $069B
                 STA L_3483+2
                 JMP L_560E
L_6D2E           .byte $33
                 .byte $34
                 AND (ICPTHZ,X)
                 AND LNFLG
                 ROL HPOSM2,X
                 SBC TRAPLN+1,X
                 .byte $44
                 ADC L_619B+2
                 .byte $97
                 INX
L_6D3F           CPX #$AD
                 JSR P2PF
                 AND (LELNUM),Y
                 BIT TRAMSZ
                 BNE L_6D52
                 LDA $0625
                 BNE L_6D5A
                 JMP L_6DC5
L_6D52           LDA $061D
                 LDX $0685
                 BNE L_6D60
L_6D5A           LDA $0690
                 LDX $06A0
L_6D60           CLC
                 ADC #$0D
                 STA $061E
                 TXA
                 CLC
                 ADC #$03
                 STA HPOSM0
                 STA $0622
                 STA $0620
                 JMP L_6DC5
                 LDY $061E
                 LDX #$00
L_6D7B           LDA L_3300,Y
                 AND #$FE
                 STA L_3300,Y
                 INY
                 INX
                 CPX #$03
                 BNE L_6D7B
                 INC $061E
                 INC $061E
                 LDA $061E
                 CMP #$B0
                 BCC L_6D9D
                 LDA #$00
                 STA $0620
                 BEQ L_6DC5
L_6D9D           JSR L_6E1E
                 INC $0626
                 LDA $0626
                 CMP #$06
                 BCC L_6DC5
                 LDA #$00
                 STA $0626
                 LDA $060F
                 CMP $0622
                 BCS L_6DBC
                 DEC $0622
                 BNE L_6DBF
L_6DBC           INC $0622
L_6DBF           LDA $0622
                 STA HPOSM0
L_6DC5           LDA $0621
                 BNE L_6DF4
                 LDA $0625
                 BNE L_6DD5
                 LDA $0627
                 BNE L_6DDD
                 RTS
L_6DD5           LDA $0690
                 LDX $06A0
                 BNE L_6DE3
L_6DDD           LDA $0691
                 LDX $06A1
L_6DE3           CLC
                 ADC #$0D
                 STA $061F
                 INX
                 STX HPOSM1
                 STX $0623
                 STX $0621
                 RTS
L_6DF4           LDY $061F
                 LDX #$00
L_6DF9           LDA L_3300,Y
                 AND #$FB
                 STA L_3300,Y
                 INY
                 INX
                 CPX #$03
                 BNE L_6DF9
                 INC $061F
                 INC $061F
                 LDA $061F
                 CMP #$B0
                 BCC L_6E1A
                 LDA #$00
                 STA $0621
                 RTS
L_6E1A           JSR L_6E30
                 RTS
L_6E1E           TAX
                 LDY #$00
L_6E21           LDA L_3300,X
                 ORA #$01
                 STA L_3300,X
                 INX
                 INY
                 CPY #$03
                 BNE L_6E21
                 RTS
L_6E30           TAX
                 LDY #$00
L_6E33           LDA L_3300,X
                 ORA #$04
                 STA L_3300,X
                 INX
                 INY
                 CPY #$03
                 BNE L_6E33
                 RTS
                 BRK
                 LDA $0620
                 CMP #$02
                 BCS L_6E4B
                 RTS
L_6E4B           LDA $0643
                 BNE L_6E68+1
L_6E50           LDA $06B3
                 CMP #$01
                 BNE L_6E66
                 STA $06B8
                 STA $06B9
                 LDA #$B0
                 STA $06BA
                 INC $06B3
                 RTS
L_6E66           CMP #$02
L_6E68           BNE L_6E78
                 DEC $06BA
                 LDA $06BA
                 CMP #$81
                 BCS L_6EC2
                 INC $06B3
                 RTS
L_6E78           CMP #$03
                 BNE L_6E9A
                 INC $06B8
                 LDA $06B8
                 BEQ L_6E87
                 JMP L_6EC2
L_6E87           INC $06B9
                 LDA $06B9
                 CMP #$05
                 BCC L_6EC2
                 LDA #$00
                 STA $06B9
                 INC $06B3
                 RTS
L_6E9A           INC $06BA
                 LDA $06BA
                 CMP #$B0
                 BCC L_6EC2
                 LDA #$11
                 STA $06B4
                 LDA #$00
                 STA $06B3
                 STA $06B6
                 LDY $06BA
                 TAX
L_6EB5           STA L_33FE+2,Y
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0E
                 BNE L_6EB5
                 RTS
L_6EC2           LDY $06BA
                 LDX #$00
                 LDA $060E
                 BNE L_6EF7
                 LDA $060D
                 BNE L_6EE4
L_6ED1           LDA L_419F+1,X
                 STA L_33FE+2,Y
                 LDA L_41AE,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0E
                 BNE L_6ED1
                 RTS
L_6EE4           LDA L_419F+1,X
                 STA L_33FE+2,Y
                 LDA L_41BD,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0E
                 BNE L_6EE4
                 RTS
L_6EF7           CMP #$01
                 BNE L_6F26
                 LDA $060D
                 BNE L_6F13
L_6F00           LDA L_6F51,X
                 STA L_33FE+2,Y
                 LDA L_6F5F,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0E
                 BNE L_6F00
                 RTS
L_6F13           LDA L_6F51,X
                 STA L_33FE+2,Y
                 LDA L_6F6D,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0E
                 BNE L_6F13
                 RTS
L_6F26           LDA $060D
                 BNE L_6F3E
L_6F2B           LDA L_41CC,X
                 STA L_33FE+2,Y
                 LDA L_41DB,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0E
                 BNE L_6F2B
                 RTS
L_6F3E           LDA L_41CC,X
                 STA L_33FE+2,Y
                 LDA L_41EA,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$0E
                 BNE L_6F3E
                 RTS
L_6F51           BRK
                 BRK
                 BRK
                 BPL L_6FD2
                 DEC STOPLN,X
                 .byte $7C
                 BPL L_6F6B
                 PLP
                 .byte $54
                 SEC
                 BRK
L_6F5F           BRK
                 SEC
                 BRK
                 BRK
                 BRK
                 PLP
                 .byte $44
                 BRK
                 BRK
                 BRK
                 BPL L_6F92+1
L_6F6B           BRK
                 BRK
L_6F6D           BRK
                 BPL L_6F70
L_6F70           BRK
                 BRK
                 PLP
                 .byte $44
                 BRK
                 BRK
                 BRK
                 BPL L_6F9F+2
                 BRK
                 BRK
                 BRK
                 BRK
                 PLP
                 .byte $44
                 BRK
                 BRK
L_6F81           BRK
                 BPL L_6FAA+2
                 BRK
                 BRK
                 BRK
                 INX
                 CPX #$08
                 BNE L_6F81
                 RTS
                 ASL
                 ORA RAMLO+1
L_6F90           PHP
                 ROL
L_6F92           BMI L_6FE5
L_6F94           ADC $083E,Y
                 PHP
                 PHP
                 .byte $14
                 ROL ABUFPT,X
                 BRK
L_6F9D           EOR (LNFLG,X)
L_6F9F           ASL $062E
                 BRK
                 BRK
                 BRK
                 BRK
                 PHP
                 PHP
                 BRK
                 BRK
L_6FAA           ROL L_2A08,X
                 ASL BUFADR,X
                 .byte $4F
                 ROL $0808,X
                 PHP
                 .byte $14
                 ROL ABUFPT,X
L_6FB7           .byte $44
                 BRK
                 PLA
                 NOP
                 JSR LNFLG
                 BRK
                 BRK
                 PHP
                 PHP
                 BRK
                 BRK
L_6FC4           PHP
                 PHP
                 ROL COLCRS,X
                 ROL $0808,X
                 PHP
                 .byte $1C
                 BRK
                 BRK
                 BRK
                 BRK
L_6FD1           BRK
L_6FD2           PHP
                 .byte $14
                 ROL ABUFPT,X
                 PHP
                 PHP
                 .byte $1C
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_6FDE           BRK
                 BRK
                 PHP
                 .byte $14
                 PHP
                 PHP
                 PHP
L_6FE5           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $14
                 PHA
                 .byte $12
L_6FEF           PHA
                 BRK
                 .byte $12
                 BIT POKMSK
                 BRK
                 BRK
                 BRK
                 BRK
                 BNE L_6FEF
                 RTS
                 CMP #$78
                 BNE L_700D
                 LDX #$00
                 BRK
                 BRK
                 BRK
                 BRK
L_7005           BRK
                 BRK
L_7007           BRK
                 .byte $FF
                 .byte $7F
                 AND L_3838,Y
L_700D           SEC
                 AND $C03F,Y
                 CPX #$F0
                 BEQ L_7005
                 BEQ L_7007
                 CPX #$00
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 ASL L_3F3F,X
                 .byte $3B
                 AND L_3838,Y
                 SEC
                 .byte $7C
                 INC $C0C0,X
                 CPX #$F0
                 SEI
                 ROR L_3C7E,X
                 .byte $67
                 .byte $E3
                 INC $E0FC,X
                 .byte $73
                 .byte $3F
                 ASL DDEVIC,X
                 ORA (NGFLAG,X)
                 ORA (NGFLAG,X)
                 ORA $E03F,X
                 CPY #$C0
                 CPY #$C0
                 CPY #$C0
                 CPY #$79
                 BVS L_70BA+1
                 BVS L_70BD
                 AND L_1E3F,Y
                 CPY #$C0
                 CPY #$C0
                 CPY #$C0
                 CPX #$F0
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $1F
                 .byte $7F
                 BRK
                 BRK
                 ORA (CASINI+1,X)
                 .byte $03
                 .byte $07
                 .byte $0F
                 .byte $83
                 BRK
                 BRK
                 CPY #$C0
                 CPY #$F0
                 CPX #$C0
                 ADC (APPMHI+1,X)
                 .byte $3F
                 ADC L_7171,X
                 .byte $3F
                 ASL $C3C3,X
                 .byte $C3
                 .byte $C3
                 .byte $C3
                 CMP (FCHRFLG,X)
                 CPX #$C0
                 CPY #$C0
                 CPY #$E0
L_7085           BEQ L_7085
                 .byte $3C
                 ROL $E67E,X
                 .byte $C2
                 CPY #$C0
                 .byte $7C
                 ROL LNFLG,X
                 BRK
                 BRK
                 ASL L_733E+1,X
                 SBC (CMCMD,X)
                 .byte $0F
                 .byte $1C
                 .byte $1C
                 .byte $7F
                 .byte $1C
                 .byte $9C
                 .byte $DC
                 ASL L_8606
                 DEC $F8FC
                 BRK
                 BRK
                 SBC (FR1+1,X)
                 SBC (COLAC+1,X)
                 .byte $3F
                 ASL LNFLG,X
                 .byte $DC
                 .byte $DC
                 .byte $DC
                 .byte $9C
                 .byte $1C
                 ROL LNFLG,X
                 CPY #$E0
L_70BA           ROR L_3F1E+1
L_70BD           ASL $0E0E
                 BRK
                 BRK
                 BRK
                 .byte $80
                 BRK
                 AND L_1C1C,X
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $F7
                 INC FR2
                 ASL $0E0E
                 .byte $0F
                 .byte $07
                 .byte $03
                 BRK
                 BRK
                 ASL $0E0E
                 ASL $C7E7
                 BRK
                 BRK
                 ROR TOADR
                 ROR BUFSTR
                 .byte $9C
                 TYA
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $7C
                 .byte $FF
                 .byte $C7
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $1B
                 .byte $3F
L_70F7           ASL LNFLG
                 BRK
                 BRK
                 BRK
                 CPX #$F1
                 .byte $3B
                 .byte $0F
                 .byte $37
                 .byte $67
                 .byte $C7
                 .byte $C7
                 .byte $7B
                 BRK
                 BRK
                 ASL $0E0E
                 ASL L_9FCE
                 BRK
                 BRK
                 .byte $03
                 .byte $03
                 .byte $03
                 .byte $03
                 ORA (LNFLG,X)
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 SED
                 .byte $FC
                 .byte $0C
                 .byte $FC
                 SEI
                 BRK
                 .byte $0C
                 .byte $FC
                 SED
                 BRK
                 BRK
                 ORA (LNFLG,X)
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $FC
                 SED
                 BVS L_71A4
                 BVS L_71A6
                 BVS L_71A8
                 BRK
                 ASL APPMHI+1
                 .byte $1F
                 ASL $0E0E
                 ASL $0505
                 ORA RAMLO+1
                 ORA NGFLAG
                 BRK
                 BRK
                 BVS L_71BA
                 BVS L_71BB+2
                 .byte $FF
                 .byte $FF
                 BRK
                 BRK
                 ASL $EF0E
                 .byte $E7
                 .byte $E7
                 .byte $E3
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $80
                 BRK
                 BRK
                 ORA (CASINI+1,X)
                 .byte $07
                 .byte $03
                 .byte $0F
                 .byte $03
                 .byte $03
                 .byte $7B
                 .byte $FF
                 .byte $8F
                 .byte $07
                 CPY #$00
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $07
L_7171           .byte $07
                 .byte $07
                 .byte $87
                 .byte $E3
                 CMP (LNFLG,X)
                 BRK
                 .byte $07
                 .byte $07
                 .byte $07
                 .byte $07
                 .byte $CF
                 .byte $FB
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 CPY #$80
                 BRK
                 BRK
                 .byte $FB
                 .byte $22
                 .byte $22
                 .byte $22
                 .byte $22
                 BRK
                 BRK
                 BRK
                 RTS
                 LDY #$A0
                 JSR ICHIDZ
                 BRK
                 BRK
                 .byte $03
                 .byte $07
                 .byte $03
                 ORA (APPMHI+1,X)
                 .byte $1F
                 BEQ L_721F
                 CPX #$F0
                 CPX #$C1
L_71A4           .byte $FF
                 .byte $FF
L_71A6           BRK
                 .byte $FF
L_71A8           BRK
                 BRK
L_71AA           CPX #$F0
                 .byte $FF
                 .byte $FF
                 BRK
                 .byte $FF
                 .byte $3F
                 .byte $3F
                 .byte $1F
                 .byte $0F
                 .byte $3F
                 BIT $FFFC
                 .byte $FF
                 .byte $87
L_71BA           SEI
L_71BB           STA $FDF0
                 SEI
                 .byte $FF
                 .byte $FF
                 ASL $FBF1
                 BRK
                 .byte $FB
                 SBC (FPTR2+1),Y
                 BRK
                 BRK
                 CLC
                 AND $FFFF,X
                 BRK
                 .byte $FF
                 BRK
                 .byte $7F
                 .byte $7F
                 SBC (DIGRT),Y
L_71D5           SBC (ROWAC+1),Y
                 .byte $7F
                 BRK
                 STA ICCOMT
                 .byte $7F
                 .byte $7F
                 .byte $7F
                 RTS
                 .byte $7F
                 .byte $FF
                 .byte $1F
                 .byte $E7
                 .byte $F3
                 BMI L_71D5+1
                 CPX #$FF
                 .byte $7F
                 .byte $BF
                 CMP (FPTR2+1,X)
                 .byte $FC
                 CLD
L_71EE           BVS L_71EE+1
                 .byte $7F
                 .byte $7F
                 RTS
                 .byte $3F
                 .byte $1F
                 .byte $1B
                 ASL FPTR2+1
                 STA $FF66,Y
                 .byte $FF
                 .byte $FF
                 BRK
                 .byte $FF
                 BRK
                 BPL L_71AA+1
                 .byte $FC
                 .byte $FC
                 .byte $FF
                 ORA (FLPTR,X)
                 BRK
                 ORA (CASINI+1,X)
                 .byte $07
                 ASL ZTEMP2
                 DEC FMSZPG+3
                 .byte $FF
                 .byte $FF
                 BRK
                 .byte $FF
                 ADC L_386D,X
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 BRK
                 .byte $FF
                 .byte $F7
                 LDX FR1+3,Y
L_721F           .byte $FF
                 LSR FMSZPG+3
                 .byte $57
                 .byte $FF
                 CMP (IODVC),Y
                 .byte $80
                 .byte $FF
                 BRK
                 .byte $FF
                 EOR FPTR2+1,X
                 .byte $1F
                 CLC
                 CLC
                 CLC
                 BRK
                 .byte $FF
                 EOR FPTR2+1,X
                 .byte $FF
                 CLC
                 CLC
                 CLC
                 BRK
                 .byte $FF
                 EOR FPTR2+1,X
                 .byte $FF
                 CLC
                 CLC
                 CLC
                 .byte $1F
                 .byte $1F
                 .byte $1F
                 .byte $FF
                 .byte $F7
                 LDX FR1+3,Y
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $F3
                 .byte $FC
                 .byte $C7
                 CPY #$80
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 BRK
                 .byte $FF
                 BRK
                 BRK
                 .byte $FF
                 BRK
                 .byte $FF
                 EOR FPTR2+1,X
                 .byte $FF
                 CLC
                 CLC
                 CLC
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 BRK
                 .byte $FF
                 BRK
                 BRK
                 .byte $FF
                 BRK
                 .byte $FF
                 TAX
                 .byte $FF
                 .byte $FF
                 CLC
                 CLC
                 CLC
                 BRK
                 .byte $FF
                 TAX
                 .byte $FF
                 .byte $FF
                 .byte $1F
                 .byte $1F
                 .byte $1F
                 BRK
                 CPY #$A0
                 BEQ L_7293
                 ASL BUFADR+1,X
                 ASL FPTR2+1,X
                 .byte $FF
                 .byte $CF
                 .byte $3F
                 .byte $E3
                 .byte $03
                 ORA (FPTR2+1,X)
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $EF
                 ADC $FFC7
                 ASL POKMSK,X
                 .byte $FA
L_7293           .byte $FF
                 .byte $82
                 .byte $80
                 BRK
                 .byte $FF
                 BRK
                 .byte $3F
                 EOR FPTR2+1,X
                 .byte $8F
L_729D           STY L_8C8B+1
                 BRK
                 .byte $FF
                 EOR FPTR2+1,X
                 .byte $FF
                 CLC
                 CLC
                 CLC
                 BRK
                 .byte $FF
                 EOR FPTR2+1,X
                 .byte $FF
                 CLC
                 CLC
                 CLC
                 .byte $8F
                 .byte $8F
                 .byte $8F
                 .byte $FF
                 ADC L_386D,X
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $F3
                 .byte $FC
                 .byte $F7
                 BCS L_729D+2
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 .byte $FF
                 BRK
                 .byte $FF
                 BRK
                 BRK
                 .byte $FF
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $FF
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 ORA (LNFLG,X)
                 BRK
                 BRK
                 BRK
                 ORA ARSTKX,X
                 BCC L_7320
                 BRK
                 BRK
                 BRK
                 LDY LMARGN
                 JSR COX
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_7320           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $1F
                 .byte $1F
                 .byte $0F
                 .byte $0F
                 .byte $1F
                 .byte $3F
                 .byte $3F
                 .byte $3F
                 .byte $FF
                 SBC (EEXP,X)
                 SBC (FR2+5,X)
                 SBC $FFFF
                 .byte $FC
                 SED
L_733E           BEQ L_7320
                 CPX #$E0
                 CPY #$80
                 .byte $1F
                 .byte $0F
                 .byte $0F
                 .byte $B7
                 .byte $D7
                 ORA L_2511
                 .byte $BF
                 LSR L_6C5E,X
                 LSR $070D
                 .byte $02
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 RTI
                 LDY #$5A
                 .byte $74
                 ORA (DOSVEC,X)
                 JSR LNFLG
                 BRK
                 AND (LOMEM+1,X)
                 BRK
                 ASL
                 BPL L_736A
L_736A           BRK
                 BRK
                 BVC L_73BE
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 ORA (LNFLG,X)
                 ORA (CASINI,X)
                 ORA RAMLO+1
                 BRK
                 .byte $80
                 LDY ENDPT+1
                 .byte $7A
                 .byte $80
                 BRK
                 BRK
                 .byte $04
                 .byte $02
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 LDY #$D0
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_73BE           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_7400           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 ORA (CASINI,X)
                 .byte $03
                 .byte $07
                 PHP
                 ORA (CASINI,X)
                 .byte $0B
                 .byte $0C
                 ORA LNFLG
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $04
                 ORA TRAMSZ
                 ORA #$0A
                 .byte $04
                 ORA APPMHI
                 .byte $0F
                 BPL L_7474
L_7474           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 ORA (RTCLOK),Y
                 .byte $13
                 .byte $17
                 CLC
                 ORA L_1E1C+1,Y
                 .byte $1F
                 .byte $23
                 .byte $5F
                 RTS
                 ADC (ICBAHZ,X)
                 ROL ICPTHZ
                 .byte $2B
                 BIT L_312D
                 .byte $32
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $1A
                 .byte $1B
                 .byte $1C
                 JSR L_2221
                 BIT PALNTS
                 .byte $63
                 .byte $64
                 BRK
                 AND #$2A
                 ROL L_302F
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_7500           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BMI L_754E
L_754E           .byte $32
                 BRK
                 AND LNFLG
                 .byte $33
                 BRK
                 AND LNFLG
                 ROL L_33FE+2
                 BRK
                 .byte $33
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $02
                 .byte $33
                 .byte $23
                 .byte $32
                 AND ICDNOZ
                 AND L_2E29
                 .byte $27
                 BRK
                 .byte $37
                 AND #$2E
                 .byte $27
                 .byte $33
                 .byte $02
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_75A9           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 PHP
                 .byte $23
                 ORA #$32
                 AND ICBALZ
                 BRK
                 .byte $32
                 AND (BFENLO,X)
                 BRK
                 .byte $33
                 .byte $2F
                 ROL BFENLO
                 .byte $37
                 AND (BUFRLO,X)
                 AND LNFLG
                 BIT L_2434
                 PHP
                 ORA (DSKFMS+1),Y
L_7600           CLC
                 ASL BOOT,X
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 EOR (LMARGN),Y
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
                 EOR LNFLG
                 BRK
                 BRK
                 .byte $34
                 PLP
                 AND ICSPRZ+1
                 AND LNFLG
                 BRK
                 AND L_3334+1
                 AND #$23
                 BRK
                 BRK
                 .byte $2F
L_7641           ROL LNFLG
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_765B           ASL $0E0E
                 ASL APPMHI
                 PLP
                 AND (BUFRHI,X)
                 BRK
                 .byte $34
                 .byte $2F
                 BIT ICDNOZ
                 AND BUFRHI,Y
                 .byte $34
                 .byte $2F
                 BMI L_7670
L_7670           .byte $33
                 .byte $23
                 .byte $2F
                 .byte $32
                 AND DSKUTL
L_7676           BPL L_7688
                 BPL L_768A
                 BPL L_768C
                 BPL L_767E
L_767E           BRK
                 BRK
                 BRK
                 BRK
                 .byte $5A
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
L_7688           .byte $52
                 .byte $52
L_768A           .byte $52
                 .byte $52
L_768C           .byte $52
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
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BMI L_7706
                 .byte $2F
                 .byte $27
                 .byte $32
                 AND (ICSPRZ+1,X)
                 BRK
                 .byte $22
                 AND L_3000,Y
                 AND (BFENHI,X)
                 BIT L_2300
                 .byte $32
                 AND (LTEMP,X)
                 AND ICIDNO
                 BRK
                 BRK
                 BRK
                 .byte $12
                 BPL L_7700
                 BPL L_76F0
L_76F0           ROL ICBAHZ,X
                 .byte $32
                 .byte $33
                 AND #$2F
                 ROL LNFLG
                 BRK
                 AND L_3334+1
                 AND #$23
                 BRK
L_7700           .byte $22
                 AND L_2400,Y
                 AND (LTEMP,X)
L_7706           AND LNFLG
                 ROL CIOCHR
                 .byte $32
                 .byte $37
                 AND (BUFRLO,X)
                 BIT LNFLG
                 BRK
                 BRK
                 ROL BUFRLO
                 AND (ICIDNO,X)
                 .byte $23
                 .byte $2F
                 BRK
                 .byte $23
                 AND (BFENLO,X)
                 .byte $32
                 AND #$2E
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 LDA LOADFLG
                 BNE L_77C8
                 LDA WARMST
                 BNE L_780D
L_77C8           LDX #$FF
                 TXS
                 CLD
                 LDX L_02E2+5
                 LDY L_02E2+6
                 STX LOMEM
                 STY LOMEM+1
                 LDA #$00
                 STA MEOLFLG
                 STA LOADFLG
                 INY
                 TXA
                 LDX #$82
L_77E0           STA LNFLG,X
                 INX
                 STY LNFLG,X
                 INX
                 CPX #$92
                 BCC L_77E0
                 LDX #$86
                 LDY #$01
                 JSR L_A87A
                 LDX #$8C
                 LDY #$03
                 JSR L_A87A
                 LDA #$00
                 TAY
                 STA (VNTD),Y
                 STA (STMCUR),Y
                 INY
L_7800           LDA #$00
                 STA SDMCTL
                 STA $060E
                 LDA #$FF
                 STA PCOLR0
L_780D           JSR L_7954
                 LDX #$00
                 TXA
L_7813           STA L_9E70,X
                 STA L_9EB0,X
                 INX
                 BNE L_7813
L_781C           STA HPOSP0,X
                 INX
                 CPX #$08
                 BNE L_781C
                 LDA #$70
                 STA SAVMSC
                 LDA #$9E
                 STA SAVMSC+1
                 STA COLOR0
                 STA SDLSTH
                 LDA #$58
                 STA SDLSTL
                 LDX #$00
L_7839           LDA L_7985,X
                 STA L_9E58,X
                 INX
                 CPX #$18
                 BNE L_7839
                 LDX #$04
                 LDY #$21
L_7848           LDA #$00
                 STA $0617
L_784D           TYA
                 STA L_9E70,X
                 INX
                 INX
                 INY
                 CPY #$3B
                 BEQ L_786A
                 INC $0617
                 LDA $0617
                 CMP #$06
                 BNE L_784D
                 TXA
                 CLC
                 ADC #$1C
                 TAX
                 JMP L_7848
L_786A           LDA #$0A
                 STA L_9E70,X
                 LDY #$00
                 LDA #$0E
L_7873           INX
                 INX
                 STA L_9E70,X
                 INY
                 CPY #$03
                 BNE L_7873
                 LDX #$00
L_787F           LDA $0600,X
                 STA L_9F63,X
                 INX
                 CPX #$06
                 BNE L_787F
                 LDX #$00
L_788C           LDA L_797D,X
                 STA L_9F69,X
                 INX
                 CPX #$08
                 BNE L_788C
                 LDA #$3A
                 STA SDMCTL
                 LDA #$50
                 STA HPOSP0
                 STA $060F
                 LDY #$1C
                 STY $0619
                 JSR L_795E
L_78AC           LDA $060E
                 CMP #$05
                 BMI L_78C6
                 LDX #$00
L_78B5           LDA L_9F6C,X
                 STA $065E,X
                 INX
                 CPX #$05
                 BNE L_78B5
L_78C0           LDA STRIG0
                 BEQ L_78C0
                 RTS
L_78C6           LDA STICK0
                 CMP #$07
                 BEQ L_7903
                 CMP #$0B
                 BEQ L_78E7
                 CMP #$0E
                 BEQ L_791C
                 CMP #$0D
                 BEQ L_7938
                 LDA STRIG0
                 BNE L_78AC
                 JSR L_5B00
                 JSR L_796F
                 JMP L_78AC
L_78E7           LDA $060F
                 CMP #$60
                 BCS L_78F1
                 JMP L_78AC
L_78F1           LDA $060F
                 SEC
                 SBC #$10
                 STA $060F
                 STA HPOSP0
                 JSR L_796F
                 JMP L_78AC
L_7903           LDA $060F
                 CMP #$9F
                 BCC L_790D
                 JMP L_78AC
L_790D           CLC
                 ADC #$10
                 STA $060F
                 STA HPOSP0
                 JSR L_796F
                 JMP L_78AC
L_791C           LDA $0619
                 CMP #$20
                 BCS L_7926
                 JMP L_78AC
L_7926           JSR L_7954
L_7929           LDA $0619
                 SEC
                 SBC #$20
                 STA $0619
                 JSR L_795E
                 JMP L_78AC
L_7938           LDA $0619
                 CMP #$9C
                 BCC L_7942
                 JMP L_78AC
L_7942           JSR L_7954
                 LDA $0619
                 CLC
                 ADC #$20
                 STA $0619
                 JSR L_795E
                 JMP L_78AC
L_7954           LDX #$00
                 TXA
L_7957           STA L_33FE+2,X
                 INX
                 BNE L_7957
                 RTS
L_795E           LDX #$00
                 LDY $0619
L_7963           LDA L_799C,X
                 STA L_33FE+2,Y
                 INY
                 INX
                 CPX #$19
                 BNE L_7963
L_796F           JSR L_561C
                 LDY #$00
                 LDX #$00
L_7976           INX
                 BNE L_7976
                 INY
                 BNE L_7976
                 RTS
L_797D           BPL L_798D
                 ASL $0A0A
                 ASL
                 ASL
                 ASL
L_7985           BVS L_79F7
                 BVS L_79CF+1
                 BVS L_7929
                 .byte $07
                 .byte $07
L_798D           .byte $07
                 .byte $07
                 .byte $07
                 .byte $07
                 .byte $07
                 .byte $07
                 .byte $07
                 ASL TRAMSZ
                 ASL TRAMSZ
                 ASL SOUNDR
                 CLI
                 .byte $9E
L_799C           CLC
                 CLC
                 ROR L_183C,X
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 CLC
                 .byte $3C
                 ROR L_1816+2,X
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND $0C22,Y
                 .byte $0C
                 .byte $0C
L_79CF           ORA (APPMHI+1,X)
                 BPL L_79D4
                 .byte $0C
L_79D4           .byte $3B
                 .byte $3C
                 BIT ICAX2Z
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 .byte $33
                 .byte $22
                 .byte $3F
                 RTI
                 .byte $0C
L_79F7           ORA (BRKKEY,X)
                 .byte $12
                 ORA (DOSINI,X)
                 .byte $04
                 ORA ICBALZ
                 .byte $0C
                 .byte $2B
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A3A,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 AND $0C3E,X
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (CHKSNT,X)
                 .byte $3C
                 .byte $0C
                 BIT ICBAHZ
                 ROL RECVDN
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND $0C22,Y
                 .byte $0C
                 .byte $0C
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (RAMLO,X)
                 ORA DOSINI
                 BIT ICPTHZ
                 PLP
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A3A,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
L_7A6B           .byte $22
                 .byte $03
                 .byte $03
                 .byte $03
                 .byte $02
                 .byte $03
                 .byte $03
                 .byte $02
                 .byte $03
                 .byte $03
                 .byte $03
                 BIT ICPTHZ
                 PLP
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 .byte $13
                 .byte $22
                 .byte $3F
                 RTI
                 .byte $0C
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $0C
                 .byte $0C
                 BIT ICPTHZ
                 PLP
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 AND $0C3E,X
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $3B
                 .byte $3C
                 BIT ICPTHZ
                 PLP
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 .byte $13
                 .byte $22
                 .byte $3F
                 RTI
                 .byte $0C
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $04
                 ORA ICBALZ
                 AND #$2A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 AND $0C3E,X
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $3B
                 .byte $3C
                 BIT DOSINI
                 BIT L_3A3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3F21+1,Y
                 RTI
                 .byte $0C
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $04
                 ORA ICBALZ
                 BIT L_393A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_223A,Y
                 AND $0C3E,X
                 ORA (APPMHI+1,X)
                 BPL L_7B64
                 .byte $0C
L_7B64           .byte $3B
                 .byte $3C
                 BIT XMTDON
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND $0C22,Y
                 .byte $0C
                 .byte $0C
                 ORA (BRKKEY,X)
                 .byte $12
                 ORA (DOSINI,X)
                 .byte $04
                 ORA ICBALZ
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 .byte $03
                 .byte $03
                 .byte $03
                 .byte $02
                 .byte $03
                 .byte $03
                 .byte $02
                 .byte $03
                 .byte $03
                 .byte $03
                 BIT LTEMP+1
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3F21+1,Y
                 RTI
                 .byte $0C
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $0C
                 .byte $0C
                 BIT XMTDON
                 AND L_3939,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 AND $0C3E,X
                 ORA (STATUS,X)
                 AND (NGFLAG),Y
                 .byte $0C
                 .byte $3B
                 .byte $3C
                 BIT RECVDN
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3F21+1,Y
                 RTI
                 .byte $0C
                 ORA (BUFRLO,X)
                 ROL NGFLAG,X
                 .byte $0C
                 .byte $04
                 ORA ICBALZ
                 .byte $3A
                 AND L_3939,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 AND $0C3E,X
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $0C
                 .byte $0C
                 BIT RECVDN
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3532+2,Y
                 AND BFENHI,X
                 AND BFENHI,X
                 AND BFENHI,X
                 AND BFENHI,X
                 AND LTEMP,X
                 SEC
                 AND L_3939,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
L_7E7D           AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_7EFD           AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
L_7F3E           AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
L_7F7D           AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND XMTDON,Y
                 BRK
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_804B           AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
L_8097           AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 EOR #$4A
                 .byte $4B
                 .byte $3A
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 LSR L_504E+1
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_4939,Y
                 LSR
                 .byte $14
                 LSR
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_4A48+1,Y
                 .byte $14
                 ORA RTCLOK+2,X
                 ORA DSKFMS+1,X
                 LSR
                 .byte $4B
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_4939,Y
                 .byte $14
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $14
                 ORA RTCLOK+2,X
                 CLC
                 .byte $0C
                 BVC L_84F9
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 EOR $140C
                 ORA RTCLOK+2,X
                 ASL BUFADR+1,X
                 ORA BUFADR,X
                 ORA L_4B4A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
L_84F9           .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND $1449,Y
                 ORA BUFADR+1,X
                 ASL BUFADR,X
                 .byte $14
                 .byte $14
                 ASL BUFADR,X
                 ORA DSKFMS+1,X
                 LSR
                 .byte $4B
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_4D38+2,Y
                 .byte $14
                 ORA BUFADR+1,X
                 ORA BUFADR,X
                 .byte $14
                 ASL BUFADR+1,X
                 ORA RTCLOK+2,X
                 .byte $14
                 CLC
                 .byte $0C
                 BVC L_8573
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_1538+2,Y
                 ORA RTCLOK+2,X
                 ASL BUFADR+1,X
                 ORA RTCLOK+2,X
                 .byte $14
                 ORA BUFADR+1,X
                 ASL BUFADR,X
                 ORA L_4A0A+2,Y
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_8573           AND L_393A,Y
                 .byte $3A
                 AND L_163A,Y
                 .byte $14
                 ORA BUFADR,X
                 .byte $14
                 ORA RTCLOK+2,X
                 ORA RTCLOK+2,X
                 ORA BUFADR+1,X
                 .byte $14
                 ORA DSKFMS+1,X
                 .byte $0C
                 .byte $0C
                 LSR
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 ASL BUFADR,X
                 .byte $14
                 .byte $14
                 .byte $14
                 ORA BUFADR+1,X
                 ORA BUFADR+1,X
                 ORA BUFADR,X
                 ASL BUFADR,X
                 .byte $14
                 ORA $0C0C,Y
                 BVC L_85ED
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_1538+2,Y
                 ASL DSKFMS,X
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $14
                 ASL RTCLOK+2,X
                 ORA BUFADR+1,X
                 ORA RTCLOK+2,X
                 CLC
                 .byte $0C
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
L_85ED           .byte $3A
                 AND L_3A39,Y
                 ORA L_1514,Y
                 ASL BUFADR+1,X
                 ORA RTCLOK+2,X
                 .byte $14
                 ORA BUFADR+1,X
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR+1,X
                 ORA L_504E+1,Y
                 AND L_393A,Y
L_8606           .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_1839+1,Y
                 ORA $1415,Y
                 ASL BUFADR+1,X
                 ORA RTCLOK+2,X
                 ORA BUFADR+1,X
                 ORA RTCLOK+2,X
                 ORA BUFADR+1,X
                 ORA DSKFMS,X
                 .byte $4B
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $14
                 ORA BUFADR+1,X
                 ORA BUFADR+1,X
                 ORA BUFADR+1,X
                 ASL BUFADR,X
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR,X
                 ASL BUFADR+1,X
                 ORA L_3A4B,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A39,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 ORA RTCLOK+2,X
                 ORA BUFADR+1,X
                 ORA BUFADR+1,X
                 ORA BUFADR,X
                 ASL BUFADR+1,X
                 ORA BUFADR+1,X
                 .byte $14
                 .byte $14
                 ORA ICCOMT,X
                 CLC
                 BVC L_86B3+2
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND $143A,Y
                 .byte $14
                 ASL BUFADR,X
                 ASL RTCLOK+2,X
                 .byte $14
                 .byte $14
                 .byte $14
                 ASL BUFADR,X
                 ASL BUFADR,X
                 ASL DSKFMS,X
                 .byte $4F
                 BVC L_86DC+1
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_86B3           AND L_393A,Y
                 .byte $3A
                 AND L_1839+1,Y
                 CLC
                 ORA BUFADR,X
                 ORA RTCLOK+2,X
                 ORA RTCLOK+2,X
                 ORA BUFADR+1,X
                 .byte $14
                 CLC
                 CLC
                 ORA TMPCHR,X
                 .byte $3A
                 AND L_3A39,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_86DC           AND L_393A,Y
                 AND L_1538+2,Y
                 ASL RTCLOK+2,X
                 CLC
                 ORA BUFADR+1,X
                 CLC
                 ORA BUFADR+1,X
                 CLC
                 .byte $14
                 ORA BUFADR+1,X
                 JMP L_3A39
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_1538+2,Y
                 ASL RTCLOK+2,X
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $14
                 .byte $14
                 ASL RTCLOK+2,X
                 CLC
                 .byte $14
                 ASL BUFADR,X
                 LSR
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_1839+1,Y
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL RTCLOK+2,X
                 ORA BUFADR+1,X
                 ASL RTCLOK+2,X
                 ORA RTCLOK+2,X
                 ASL BUFADR,X
                 ORA L_4B4A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_163A,Y
                 ORA RTCLOK+2,X
                 CLC
                 ASL BUFADR,X
                 .byte $14
                 CLC
                 ASL BUFADR,X
                 .byte $14
                 CLC
                 ASL BUFADR,X
                 .byte $14
                 ASL DSKFMS,X
                 JMP L_3A39
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND $143A,Y
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR+1,X
                 CLC
                 .byte $4F
                 BVC L_87CD
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_1538+2,Y
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 CLC
                 JMP L_3A39
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
L_87CD           .byte $3A
                 AND L_3A39,Y
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL DSKFMS,X
                 .byte $4F
                 BVC L_881B
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_1839+1,Y
                 .byte $14
                 ORA BUFADR+1,X
                 ASL BUFADR,X
                 .byte $14
                 .byte $14
L_8801           ORA BUFADR+1,X
                 ASL RTCLOK+2,X
                 CLC
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
L_881B           .byte $3A
                 AND L_393A,Y
                 AND $143A,Y
                 CLC
                 ASL BUFADR,X
                 .byte $14
                 CLC
                 ASL BUFADR,X
                 .byte $14
                 CLC
                 ORA DSKFMS,X
                 .byte $4F
                 BVC L_8867+2
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 .byte $17
                 CLC
                 JMP L_3A3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_8867           AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_1538+2,Y
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $17
                 CLC
                 .byte $0C
                 .byte $0C
                 BVC L_88B5+2
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND $143A,Y
                 ORA BUFADR+1,X
                 ORA RTCLOK+2,X
                 ORA DSKFMS,X
                 .byte $0C
                 .byte $0C
                 .byte $4F
                 BVC L_88DE
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_88B5           AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_1538+2,Y
                 .byte $14
                 ASL BUFADR+1,X
                 .byte $17
                 CLC
                 .byte $0C
                 .byte $0C
                 .byte $4F
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
L_88DE           .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_163A,Y
                 ASL BUFADR,X
                 CLC
                 .byte $0C
                 .byte $0C
                 .byte $4F
                 BVC L_892B
                 .byte $3A
                 .byte $3A
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $17
                 .byte $17
                 CLC
                 .byte $0C
                 .byte $4F
                 BVC L_8951
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_892B           AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_4F3A,Y
                 .byte $4F
                 .byte $4F
                 BVC L_8975+2
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_8951           AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_8975           AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
L_8AEA           .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
L_8C8B           AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 EOR #$4A
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND $0C49,Y
                 ORA DSKFMS+1,X
                 EOR #$4A
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_4939+1,Y
                 ASL ICCOMT,X
                 ORA BUFADR,X
                 ORA L_1913+1,Y
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 EOR #$14
                 ASL BUFADR,X
                 ORA RTCLOK+2,X
                 ORA RTCLOK+2,X
                 CLC
                 ORA L_394B,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_164E,Y
                 ORA RTCLOK+2,X
                 ASL BUFADR+1,X
                 ORA $1418,Y
                 ORA DSKFMS+1,X
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_4E3A,Y
                 .byte $17
                 ORA RTCLOK+2,X
                 ASL DSKFMS,X
                 ASL BUFADR,X
                 ASL TMPCHR,X
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 LSR L_1917
                 ORA DSKFMS+1,X
                 .byte $14
                 ORA L_3950,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 LSR L_1616+1
                 EOR #$4F
                 BVC L_8EB9+2
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3939,Y
                 .byte $3A
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_8EB9           AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A39,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
L_8F3E           .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_8FDB           AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
L_9020           .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
L_90A5           AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 EOR #$4A
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND $0C49,Y
                 ORA DSKFMS+1,X
                 EOR #$4A
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_4939+1,Y
                 ASL ICCOMT,X
                 ORA BUFADR,X
                 ORA L_1913+1,Y
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 EOR #$14
                 ASL BUFADR,X
                 ORA RTCLOK+2,X
                 ORA RTCLOK+2,X
                 CLC
                 ORA L_394B,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_916D           .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_164E,Y
                 ORA RTCLOK+2,X
                 ASL BUFADR+1,X
                 ORA $1418,Y
                 ORA DSKFMS+1,X
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_4E3A,Y
                 .byte $17
                 ORA RTCLOK+2,X
                 ASL DSKFMS,X
                 ASL BUFADR,X
                 ASL TMPCHR,X
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 LSR L_1917
                 ORA DSKFMS+1,X
                 .byte $14
                 ORA L_3950,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 LSR L_1616+1
                 EOR #$4F
                 BVC L_923E+1
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3939,Y
                 .byte $3A
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
L_923E           AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_9553           AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A39,Y
                 LSR FMSZPG+4
                 .byte $47
                 .byte $47
                 .byte $47
                 .byte $47
                 .byte $47
                 PHA
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_4443,Y
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
                 EOR RECVDN
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND $0C1E,Y
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 AND (RECVDN,X)
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 .byte $3F
                 RTI
                 .byte $0C
                 ORA (ABUFPT+3,X)
                 JSR $0C01
                 .byte $0C
                 .byte $0C
                 BIT XMTDON
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_223A,Y
                 AND $0C3E,X
                 ORA (ICSPRZ+1,X)
                 ROL $0C01
                 .byte $3B
                 .byte $3C
                 BIT RECVDN
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_223A,Y
                 .byte $0C
                 .byte $3F
                 RTI
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $04
                 ORA ICBALZ
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
L_975E           AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_223A,Y
                 .byte $0C
                 AND $013E,X
                 .byte $23
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $3B
                 .byte $3C
                 BIT XMTDON
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_223A,Y
                 .byte $3F
                 RTI
                 .byte $0C
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $04
                 ORA ICBALZ
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_223A,Y
                 AND $0C3E,X
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $3B
                 .byte $3C
                 BIT RECVDN
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_223A,Y
                 .byte $0C
                 .byte $3F
                 RTI
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $04
                 ORA ICBALZ
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_223A,Y
                 .byte $0C
                 AND $013E,X
                 .byte $23
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $3B
                 .byte $3C
                 BIT XMTDON
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND $0C22,Y
                 .byte $0C
                 .byte $0C
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $04
                 ORA ICBALZ
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 .byte $03
                 .byte $03
                 .byte $03
                 .byte $02
                 .byte $03
                 .byte $03
                 .byte $02
                 .byte $03
                 .byte $03
                 .byte $03
                 BIT RECVDN
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $22
                 .byte $0C
                 .byte $0C
                 .byte $0C
                 ORA (APPMHI+1,X)
                 BPL L_988A
                 .byte $0C
L_988A           .byte $3B
                 .byte $3C
                 BIT ICAX2Z
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 .byte $33
                 .byte $22
                 .byte $3F
                 RTI
                 .byte $0C
                 ORA (BRKKEY,X)
                 .byte $12
                 ORA (DOSINI,X)
                 .byte $04
                 ORA ICBALZ
                 .byte $0C
                 .byte $2B
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A3A,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 AND $0C3E,X
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (CHKSNT,X)
                 .byte $3C
                 .byte $0C
                 BIT ICBAHZ
                 ROL RECVDN
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND $0C22,Y
                 .byte $0C
                 .byte $0C
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (RAMLO,X)
                 ORA DOSINI
                 BIT ICPTHZ
                 PLP
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A3A,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 .byte $03
                 .byte $03
                 .byte $03
                 .byte $02
                 .byte $03
                 .byte $03
                 .byte $02
                 .byte $03
                 .byte $03
                 .byte $03
                 BIT ICPTHZ
                 PLP
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 .byte $13
                 .byte $22
                 .byte $3F
                 RTI
                 .byte $0C
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $0C
                 .byte $0C
                 BIT ICPTHZ
                 PLP
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 AND $0C3E,X
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $3B
                 .byte $3C
                 BIT ICPTHZ
                 PLP
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 .byte $13
                 .byte $22
                 .byte $3F
                 RTI
                 .byte $0C
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $04
                 ORA ICBALZ
                 AND #$2A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 AND $0C3E,X
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $3B
                 .byte $3C
                 BIT DOSINI
                 BIT L_3A3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3F21+1,Y
                 RTI
                 .byte $0C
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $04
                 ORA ICBALZ
                 BIT L_393A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_223A,Y
                 AND $0C3E,X
                 ORA (APPMHI+1,X)
                 BPL L_9A1A
                 .byte $0C
L_9A1A           .byte $3B
                 .byte $3C
                 BIT XMTDON
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND $0C22,Y
                 .byte $0C
                 .byte $0C
                 ORA (BRKKEY,X)
                 .byte $12
                 ORA (DOSINI,X)
                 .byte $04
                 ORA ICBALZ
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 .byte $03
                 .byte $03
                 .byte $03
                 .byte $02
                 .byte $03
                 .byte $03
                 .byte $02
                 .byte $03
                 .byte $03
                 .byte $03
                 BIT LTEMP+1
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3F21+1,Y
                 RTI
                 .byte $0C
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $0C
                 .byte $0C
                 BIT XMTDON
                 AND L_3939,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 AND $0C3E,X
                 ORA (STATUS,X)
                 AND (NGFLAG),Y
                 .byte $0C
                 .byte $3B
                 .byte $3C
                 BIT RECVDN
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3F21+1,Y
                 RTI
                 .byte $0C
                 ORA (BUFRLO,X)
                 ROL NGFLAG,X
                 .byte $0C
                 .byte $04
                 ORA ICBALZ
                 .byte $3A
                 AND L_3939,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $22
                 AND $0C3E,X
                 ORA (ICSTAZ,X)
                 .byte $0C
                 ORA (DOSINI,X)
                 .byte $0C
                 .byte $0C
                 BIT RECVDN
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3532+2,Y
                 AND BFENHI,X
L_9B2D           AND BFENHI,X
                 AND BFENHI,X
                 AND BFENHI,X
                 AND LTEMP,X
                 SEC
                 AND L_3939,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 BVS L_9BF0
                 BVS L_9BC6
                 LDY #$9B
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $04
                 .byte $42
                 RTS
                 .byte $9F
                 .byte $02
L_9B9B           .byte $02
                 .byte $02
                 EOR (COUNTR,X)
                 .byte $9B
L_9BA0           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9BC6           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9BF0           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9C1D           BRK
                 BRK
                 BRK
L_9C20           BVS L_9C92
                 BVS L_9C66
L_9C24           RTI
L_9C25           .byte $9C
                 .byte $02
L_9C27           ASL TRAMSZ
                 .byte $02
                 .byte $02
L_9C2B           .byte $82
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
L_9C30           .byte $07
L_9C31           .byte $07
                 .byte $02
                 .byte $02
                 .byte $02
L_9C35           ASL TRAMSZ
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 EOR (ICHIDZ,X)
                 .byte $9C
L_9C40           BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9C45           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9C66           BRK
                 BRK
L_9C68           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9C90           BRK
                 BRK
L_9C92           BRK
                 BRK
                 BRK
                 ORA (CASINI,X)
                 .byte $03
                 .byte $07
                 PHP
                 ORA (CASINI,X)
                 .byte $0B
                 .byte $0C
L_9C9E           ORA LNFLG
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $04
                 ORA TRAMSZ
                 ORA #$0A
                 .byte $04
                 ORA APPMHI
                 .byte $0F
                 BPL L_9CB4
L_9CB4           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9CE9           BRK
                 ORA (RTCLOK),Y
                 .byte $13
                 .byte $17
                 CLC
                 ORA L_1E1C+1,Y
                 .byte $1F
                 .byte $23
                 .byte $5F
                 RTS
                 ADC (ICBAHZ,X)
                 ROL ICPTHZ
                 .byte $2B
                 BIT L_312D
                 .byte $32
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9D08           BRK
L_9D09           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $1A
                 .byte $1B
                 .byte $1C
                 JSR L_2221
                 BIT PALNTS
                 .byte $63
                 .byte $64
                 BRK
                 AND #$2A
                 ROL L_302F
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9D30           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9D40           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BMI L_9D8E
L_9D8E           .byte $32
                 BRK
                 AND LNFLG
                 .byte $33
                 BRK
                 AND LNFLG
                 ROL L_33FE+2
                 BRK
                 .byte $33
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9DA0           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $02
                 .byte $33
                 .byte $23
                 .byte $32
                 AND ICDNOZ
                 AND L_2E29
                 .byte $27
                 BRK
                 .byte $37
                 AND #$2E
                 .byte $27
                 .byte $33
                 .byte $02
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 PHP
                 .byte $23
                 ORA #$32
                 AND ICBALZ
                 BRK
                 .byte $32
                 AND (BFENLO,X)
                 BRK
                 .byte $33
                 .byte $2F
                 ROL BFENLO
                 .byte $37
                 AND (BUFRLO,X)
                 AND LNFLG
                 BIT L_2434
                 PHP
                 ORA (DSKFMS+1),Y
L_9E40           CLC
                 ASL BOOT,X
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 EOR (LMARGN),Y
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
L_9E58           .byte $52
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
                 EOR LNFLG
L_9E70           BRK
                 BRK
                 .byte $34
                 PLP
                 AND ICSPRZ+1
                 AND LNFLG
                 BRK
                 AND L_3334+1
                 AND #$23
                 BRK
                 BRK
                 .byte $2F
L_9E81           ROL LNFLG
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 ASL $0E0E
                 ASL APPMHI
                 PLP
                 AND (BUFRHI,X)
                 BRK
                 .byte $34
                 .byte $2F
                 BIT ICDNOZ
                 AND BUFRHI,Y
                 .byte $34
                 .byte $2F
                 BMI L_9EB0
L_9EB0           .byte $33
                 .byte $23
                 .byte $2F
                 .byte $32
                 AND DSKUTL
                 BPL L_9EC8
                 BPL L_9ECA
                 BPL L_9ECC
                 BPL L_9EBE
L_9EBE           BRK
                 BRK
                 BRK
                 BRK
                 .byte $5A
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
                 .byte $52
L_9EC8           .byte $52
                 .byte $52
L_9ECA           .byte $52
                 .byte $52
L_9ECC           .byte $52
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
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BMI L_9F46
                 .byte $2F
                 .byte $27
                 .byte $32
                 AND (ICSPRZ+1,X)
                 BRK
                 .byte $22
                 AND L_3000,Y
                 AND (BFENHI,X)
                 BIT L_2300
                 .byte $32
                 AND (LTEMP,X)
                 AND ICIDNO
                 BRK
                 BRK
                 BRK
                 .byte $12
                 BPL L_9F40
                 BPL L_9F30
L_9F30           ROL ICBAHZ,X
                 .byte $32
                 .byte $33
                 AND #$2F
                 ROL LNFLG
                 BRK
                 AND L_3334+1
                 AND #$23
                 BRK
L_9F40           .byte $22
                 AND L_2400,Y
                 AND (LTEMP,X)
L_9F46           AND LNFLG
                 ROL CIOCHR
                 .byte $32
                 .byte $37
                 AND (BUFRLO,X)
                 BIT LNFLG
                 BRK
                 BRK
                 ROL BUFRLO
                 AND (ICIDNO,X)
                 .byte $23
                 .byte $2F
                 BRK
                 .byte $23
                 AND (BFENLO,X)
                 .byte $32
                 AND #$2E
                 BRK
L_9F60           BRK
                 BRK
                 BRK
L_9F63           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9F69           BRK
                 BRK
                 BRK
L_9F6C           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9F74           BRK
                 BRK
L_9F76           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9F7C           BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9F81           BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9F86           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9F9C           BRK
L_9F9D           BRK
L_9F9E           BRK
L_9F9F           BRK
L_9FA0           BRK
L_9FA1           BRK
L_9FA2           BRK
                 BRK
L_9FA4           BRK
L_9FA5           BRK
L_9FA6           BRK
                 BRK
L_9FA8           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9FAE           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_9FCE           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 LDA LOADFLG
                 BNE L_A008
                 LDA WARMST
                 BNE L_A04D
L_A008           LDX #$FF
                 TXS
                 CLD
                 LDX L_02E2+5
                 LDY L_02E2+6
                 STX LOMEM
                 STY LOMEM+1
                 LDA #$00
                 STA MEOLFLG
                 STA LOADFLG
                 INY
                 TXA
                 LDX #$82
L_A020           STA LNFLG,X
                 INX
                 STY LNFLG,X
                 INX
                 CPX #$92
                 BCC L_A020
                 LDX #$86
                 LDY #$01
                 JSR L_A87A
                 LDX #$8C
                 LDY #$03
                 JSR L_A87A
                 LDA #$00
                 TAY
                 STA (VNTD),Y
                 STA (STMCUR),Y
                 INY
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_A04D           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 EOR #$4A
                 .byte $4B
                 .byte $3A
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 LSR L_504E+1
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
L_A0E7           AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_4939,Y
                 LSR
                 .byte $14
                 LSR
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_4A48+1,Y
                 .byte $14
                 ORA RTCLOK+2,X
                 ORA DSKFMS+1,X
                 LSR
                 .byte $4B
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_4939,Y
                 .byte $14
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $14
                 ORA RTCLOK+2,X
                 CLC
                 .byte $0C
                 BVC L_A239
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 EOR $140C
                 ORA RTCLOK+2,X
                 ASL BUFADR+1,X
                 ORA BUFADR,X
                 ORA L_4B4A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_A233           AND L_3A39,Y
                 AND L_393A,Y
L_A239           .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND $1449,Y
                 ORA BUFADR+1,X
                 ASL BUFADR,X
                 .byte $14
                 .byte $14
                 ASL BUFADR,X
                 ORA DSKFMS+1,X
                 LSR
                 .byte $4B
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_4D38+2,Y
                 .byte $14
                 ORA BUFADR+1,X
                 ORA BUFADR,X
                 .byte $14
                 ASL BUFADR+1,X
                 ORA RTCLOK+2,X
                 .byte $14
                 CLC
                 .byte $0C
                 BVC L_A2B3
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_1538+2,Y
                 ORA RTCLOK+2,X
                 ASL BUFADR+1,X
                 ORA RTCLOK+2,X
                 .byte $14
                 ORA BUFADR+1,X
                 ASL BUFADR,X
                 ORA L_4A0A+2,Y
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_A2B3           AND L_393A,Y
                 .byte $3A
                 AND L_163A,Y
                 .byte $14
                 ORA BUFADR,X
                 .byte $14
                 ORA RTCLOK+2,X
                 ORA RTCLOK+2,X
                 ORA BUFADR+1,X
                 .byte $14
                 ORA DSKFMS+1,X
                 .byte $0C
                 .byte $0C
                 LSR
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 ASL BUFADR,X
                 .byte $14
                 .byte $14
                 .byte $14
                 ORA BUFADR+1,X
                 ORA BUFADR+1,X
                 ORA BUFADR,X
                 ASL BUFADR,X
                 .byte $14
                 ORA $0C0C,Y
                 BVC L_A32D
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_1538+2,Y
                 ASL DSKFMS,X
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $14
                 ASL RTCLOK+2,X
                 ORA BUFADR+1,X
                 ORA RTCLOK+2,X
                 CLC
                 .byte $0C
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
L_A32D           .byte $3A
                 AND L_3A39,Y
                 ORA L_1514,Y
                 ASL BUFADR+1,X
                 ORA RTCLOK+2,X
                 .byte $14
                 ORA BUFADR+1,X
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR+1,X
                 ORA L_504E+1,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_1839+1,Y
                 ORA $1415,Y
                 ASL BUFADR+1,X
                 ORA RTCLOK+2,X
                 ORA BUFADR+1,X
                 ORA RTCLOK+2,X
                 ORA BUFADR+1,X
                 ORA DSKFMS,X
                 .byte $4B
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $14
                 ORA BUFADR+1,X
                 ORA BUFADR+1,X
                 ORA BUFADR+1,X
                 ASL BUFADR,X
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR,X
                 ASL BUFADR+1,X
                 ORA L_3A4B,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A39,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 ORA RTCLOK+2,X
                 ORA BUFADR+1,X
                 ORA BUFADR+1,X
                 ORA BUFADR,X
                 ASL BUFADR+1,X
                 ORA BUFADR+1,X
                 .byte $14
                 .byte $14
                 ORA ICCOMT,X
                 CLC
                 BVC L_A3F3+2
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND $143A,Y
                 .byte $14
                 ASL BUFADR,X
                 ASL RTCLOK+2,X
                 .byte $14
                 .byte $14
                 .byte $14
                 ASL BUFADR,X
                 ASL BUFADR,X
                 ASL DSKFMS,X
                 .byte $4F
                 BVC L_A41C+1
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_A3F3           AND L_393A,Y
                 .byte $3A
                 AND L_1839+1,Y
                 CLC
                 ORA BUFADR,X
                 ORA RTCLOK+2,X
                 ORA RTCLOK+2,X
                 ORA BUFADR+1,X
                 .byte $14
                 CLC
                 CLC
                 ORA TMPCHR,X
                 .byte $3A
                 AND L_3A39,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_A41C           AND L_393A,Y
                 AND L_1538+2,Y
                 ASL RTCLOK+2,X
                 CLC
                 ORA BUFADR+1,X
                 CLC
                 ORA BUFADR+1,X
                 CLC
                 .byte $14
                 ORA BUFADR+1,X
                 JMP L_3A39
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_1538+2,Y
                 ASL RTCLOK+2,X
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $14
                 .byte $14
                 ASL RTCLOK+2,X
                 CLC
                 .byte $14
                 ASL BUFADR,X
                 LSR
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_1839+1,Y
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL RTCLOK+2,X
                 ORA BUFADR+1,X
                 ASL RTCLOK+2,X
                 ORA RTCLOK+2,X
                 ASL BUFADR,X
                 ORA L_4B4A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_163A,Y
                 ORA RTCLOK+2,X
                 CLC
                 ASL BUFADR,X
                 .byte $14
                 CLC
                 ASL BUFADR,X
                 .byte $14
                 CLC
                 ASL BUFADR,X
                 .byte $14
                 ASL DSKFMS,X
                 JMP L_3A39
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND $143A,Y
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR+1,X
                 .byte $14
                 ORA BUFADR+1,X
                 CLC
                 .byte $4F
                 BVC L_A50D
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_1538+2,Y
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 CLC
                 JMP L_3A39
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
L_A50D           .byte $3A
                 AND L_3A39,Y
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL DSKFMS,X
                 .byte $4F
                 BVC L_A55B
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_1839+1,Y
                 .byte $14
                 ORA BUFADR+1,X
                 ASL BUFADR,X
                 .byte $14
                 .byte $14
                 ORA BUFADR+1,X
                 ASL RTCLOK+2,X
                 CLC
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
L_A55B           .byte $3A
                 AND L_393A,Y
                 AND $143A,Y
                 CLC
                 ASL BUFADR,X
                 .byte $14
                 CLC
                 ASL BUFADR,X
                 .byte $14
                 CLC
                 ORA DSKFMS,X
                 .byte $4F
                 BVC L_A5A7+2
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 .byte $17
                 CLC
                 JMP L_3A3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_A5A7           AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_1538+2,Y
                 .byte $14
                 ASL BUFADR,X
                 .byte $14
                 ASL BUFADR,X
                 .byte $17
                 CLC
                 .byte $0C
                 .byte $0C
                 BVC L_A5F5+2
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND $143A,Y
                 ORA BUFADR+1,X
                 ORA RTCLOK+2,X
                 ORA DSKFMS,X
                 .byte $0C
                 .byte $0C
                 .byte $4F
                 BVC L_A61E
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_A5F5           AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_1538+2,Y
                 .byte $14
                 ASL BUFADR+1,X
                 .byte $17
                 CLC
                 .byte $0C
                 .byte $0C
                 .byte $4F
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
L_A61E           .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_163A,Y
                 ASL BUFADR,X
                 CLC
                 .byte $0C
                 .byte $0C
                 .byte $4F
                 BVC L_A66B
                 .byte $3A
                 .byte $3A
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 .byte $17
                 .byte $17
                 CLC
                 .byte $0C
                 .byte $4F
                 BVC L_A691
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_A66B           AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_4F3A,Y
                 .byte $4F
                 .byte $4F
                 BVC L_A6B5+2
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_A691           AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_A6B5           AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
L_A87A           .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_A997           AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
L_AA61           AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 EOR #$4A
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND $0C49,Y
                 ORA DSKFMS+1,X
                 EOR #$4A
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_4939+1,Y
                 ASL ICCOMT,X
                 ORA BUFADR,X
                 ORA L_1913+1,Y
                 .byte $4B
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 EOR #$14
                 ASL BUFADR,X
                 ORA RTCLOK+2,X
                 ORA RTCLOK+2,X
                 CLC
                 ORA L_394B,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_AB29           .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_164E,Y
                 ORA RTCLOK+2,X
                 ASL BUFADR+1,X
                 ORA $1418,Y
                 ORA DSKFMS+1,X
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_4E3A,Y
                 .byte $17
                 ORA RTCLOK+2,X
                 ASL DSKFMS,X
                 ASL BUFADR,X
                 ASL TMPCHR,X
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 LSR L_1917
                 ORA DSKFMS+1,X
                 .byte $14
                 ORA L_3950,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
L_ABAB           AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 LSR L_1616+1
                 EOR #$4F
                 BVC L_ABF9+2
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3939,Y
                 .byte $3A
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
L_ABF9           AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A39,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 .byte $3A
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A3A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_3A3A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_3A39,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 .byte $3A
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 AND L_393A,Y
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_AD25           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_AD52           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_AD9D           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_ADBC           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_AF38           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_AFBF           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_B200           LDA $0616
                 BNE L_B245
                 STA $06D3
                 STA $06D4
                 STA $06D8
                 STA $0625
                 LDA #$28
                 STA $0690
                 STA $06D0
                 LDA #$D0
                 STA $06A0
                 STA HPOSP2
                 CLC
                 ADC #$1E
                 STA HPOSP3
                 LDA #$00
                 STA $06AC
                 LDA #$90
                 STA PCOLR3
                 STA PCOLR2
                 LDA #$03
                 STA SIZEP2
                 STA SIZEP3
                 LDA #$0F
                 STA L_542E+1
                 INC $0616
                 RTS
L_B245           JSR L_B550
                 LDA $06D0
                 BEQ L_B2B2
                 LDA $06D8
                 BNE L_B283
                 LDA $0684
                 BNE L_B269
                 LDA $06A0
                 CLC
                 ADC #$14
                 STA HPOSM0
                 ADC #$14
                 STA HPOSM1
                 CMP #$00
                 BNE L_B277
L_B269           LDA $06A0
                 CLC
                 ADC #$1A
                 STA HPOSM0
                 ADC #$07
                 STA HPOSM1
L_B277           LDA $0690
                 CLC
                 ADC #$1E
                 STA $06D9
                 INC $06D8
L_B283           LDX #$00
                 LDY $06D9
L_B288           LDA L_3300,Y
                 AND #$FA
                 STA L_3300,Y
                 INY
                 INX
                 CPX #$03
                 BNE L_B288
                 CPY #$B0
                 BCC L_B2A1
                 LDA #$00
                 STA $06D8
                 BEQ L_B2B2
L_B2A1           STY $06D9
L_B2A4           LDA L_3300,Y
                 ORA #$05
                 STA L_3300,Y
                 INY
                 INX
                 CPX #$06
                 BNE L_B2A4
L_B2B2           LDA $06D0
                 BEQ L_B2FC
                 INC $0617
                 LDA $0617
                 CMP #$03
                 BCC L_B2FC
                 LDA #$00
                 STA $0617
                 LDA $0684
                 BEQ L_B2D4
                 LDA #$00
                 STA $0684
                 CMP #$00
                 BEQ L_B2D7
L_B2D4           INC $0684
L_B2D7           LDA $06A0
                 CLC
                 ADC #$1C
                 CMP $060F
                 BEQ L_B2F0
                 BCC L_B2ED
                 DEC $06A0
                 LDA #$00
                 CMP #$00
                 BEQ L_B2F0
L_B2ED           INC $06A0
L_B2F0           LDA $06A0
                 STA HPOSP2
                 CLC
                 ADC #$1E
                 STA HPOSP3
L_B2FC           LDX #$00
                 LDY $0690
                 LDA $06D0
                 BNE L_B35A
                 INC $0617
                 LDA $0617
                 CMP #$06
                 BCS L_B311
                 RTS
L_B311           STX $0617
                 INC $06D1
                 LDA $06D1
                 CMP #$10
                 BCS L_B321
                 JMP L_B424
L_B321           CMP #$18
                 BCS L_B338
L_B325           LDA L_B513,X
                 STA L_3600,Y
                 LDA L_B530,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$1D
                 BNE L_B325
                 RTS
L_B338           TXA
L_B339           STA L_3600,Y
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$1D
                 BNE L_B339
                 STA $0616
                 STA AUDC4
                 STA $0615
                 LDA #$11
                 STA L_542E+1
                 JSR L_67E6
                 JSR L_67E6
                 RTS
L_B35A           LDA M0PL
                 AND #$0C
                 BNE L_B368
                 LDA M3PL
                 AND #$0C
                 BEQ L_B3C0
L_B368           LDY $0619
                 LDX #$00
L_B36D           LDA L_3300,Y
                 AND #$AF
                 STA L_3300,Y
                 DEY
                 INX
                 CPX #$0C
                 BNE L_B36D
                 LDA #$00
                 STA $061B
                 STA $061C
                 INC $06AC
                 LDA $06AC
                 CMP #$50
                 BCC L_B3A9
                 LDA #$00
                 STA $06D0
                 STA $06D1
                 LDX #$00
                 LDY $06D9
L_B39A           LDA L_3300,Y
                 AND #$FA
                 STA L_3300,Y
                 INY
                 INX
                 CPX #$03
                 BNE L_B39A
                 RTS
L_B3A9           JSR L_67B8
                 LDA $06D3
                 BNE L_B3B8
                 INC $06D3
                 LDA #$00
                 BEQ L_B3C0
L_B3B8           LDA $06D4
                 BNE L_B3C0
                 INC $06D4
L_B3C0           LDA $0617
                 BNE L_B3F0
                 LDA $0616
                 CMP #$01
                 BNE L_B3E0
                 LDA $0690
                 CMP #$68
                 BCC L_B3D9
                 LDA #$02
                 STA $0616
                 RTS
L_B3D9           INC $0690
                 LDA #$00
                 BEQ L_B3F0
L_B3E0           LDA $0690
                 CMP #$28
                 BCS L_B3ED
                 LDA #$01
                 STA $0616
                 RTS
L_B3ED           DEC $0690
L_B3F0           LDX #$00
                 LDY $0690
                 LDA $0684
                 BNE L_B40D
L_B3FA           LDA L_B465,X
                 STA L_3600,Y
                 LDA L_B482,X
                 STA L_3700,Y
                 INY
                 INX
L_B408           CPX #$1D
                 BNE L_B3FA
                 RTS
L_B40D           LDA L_B49F,X
                 STA L_3600,Y
                 LDA L_B4BC,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$1D
                 BNE L_B40D
                 RTS
                 NOP
                 NOP
                 NOP
                 NOP
L_B424           STX $0617
                 LDA #$0F
                 STA AUDC4
                 LDA $06D1
                 STA AUDF4
                 LDA $06D2
                 BNE L_B44D
L_B437           LDA L_B4D9,X
                 STA L_3600,Y
                 LDA L_B4F6,X
                 STA L_3700,Y
L_B443           INY
                 INX
                 CPX #$1D
                 BNE L_B437
                 INC $06D2
                 RTS
L_B44D           LDA L_B465,X
                 STA L_3600,Y
                 LDA L_B482,X
                 STA L_3700,Y
                 INY
                 INX
                 CPX #$1D
                 BNE L_B44D
                 LDA #$00
                 STA $06D2
                 RTS
L_B465           BRK
                 .byte $0F
                 .byte $1F
                 .byte $1F
                 .byte $1F
                 ASL $0101
                 ORA (NGFLAG,X)
                 ORA (NGFLAG,X)
                 .byte $13
                 .byte $7F
                 .byte $FF
                 .byte $FF
                 INC $EFFE
                 .byte $7F
                 .byte $32
                 .byte $03
                 .byte $62
                 .byte $03
L_B47D           ORA (NGFLAG,X)
                 BRK
                 ASL LNFLG
L_B482           BRK
                 BEQ L_B47D
                 SED
                 SED
                 BVS L_B408+1
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 INY
                 INC $FFFF,X
                 .byte $77
                 .byte $7F
                 .byte $F7
                 INC $C04C,X
                 LSR IOCMD
                 .byte $80
                 .byte $80
                 BRK
                 RTS
                 BRK
L_B49F           BRK
                 .byte $0F
                 .byte $1F
                 .byte $1F
                 .byte $1F
                 ASL $0101
                 ORA (NGFLAG,X)
                 ORA (NGFLAG,X)
                 .byte $13
                 .byte $7F
                 .byte $FF
                 .byte $FF
                 INC $EFFE
                 .byte $7F
                 .byte $32
                 .byte $03
                 .byte $1A
                 .byte $03
L_B4B7           ORA (NGFLAG,X)
                 BRK
                 ORA (LNFLG,X)
L_B4BC           BRK
                 BEQ L_B4B7
                 SED
                 SED
                 BVS L_B443
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 INY
                 INC $FFFF,X
                 .byte $77
                 .byte $7F
                 .byte $F7
                 INC $C04C,X
                 CLI
                 CPY #$80
                 .byte $80
                 BRK
                 .byte $80
                 BRK
L_B4D9           BRK
                 .byte $0F
                 BPL L_B4ED
                 BPL L_B4ED
                 ORA (NGFLAG,X)
                 ORA (NGFLAG,X)
                 ORA (NGFLAG,X)
                 .byte $02
                 .byte $7F
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $7F
L_B4ED           .byte $02
                 .byte $02
                 .byte $02
                 .byte $02
                 ORA (NGFLAG,X)
                 BRK
                 BRK
                 BRK
L_B4F6           BRK
                 BEQ L_B501
                 PHP
                 PHP
                 BVS L_B47D
                 .byte $80
                 .byte $80
                 .byte $80
                 .byte $80
L_B501           .byte $80
                 RTI
                 INC $0101,X
                 ORA (NGFLAG,X)
                 ORA (FPTR2,X)
                 RTI
                 RTI
                 RTI
                 RTI
                 .byte $80
                 .byte $80
                 BRK
                 BRK
                 BRK
L_B513           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $44
                 TAX
                 TAX
                 ROL
                 LSR
                 TXA
                 TXA
                 TAX
                 CPX LNFLG
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_B530           BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $44
                 TAX
                 TAX
                 TAX
                 TAX
                 TAX
                 TAX
                 TAX
                 .byte $44
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
L_B550           LDA $06D7
                 BEQ L_B55C
                 LDA #$00
                 STA $06D7
                 BEQ L_B55F
L_B55C           INC $06D7
L_B55F           LDA $06D3
                 BEQ L_B5C1
                 CMP #$01
                 BNE L_B580
                 LDA #$ED
                 STA PCOLR0
                 LDA $060F
                 SEC
                 SBC #$01
                 STA $0685
                 INC $06D3
                 LDA #$00
                 STA $06D5
                 BEQ L_B5C1
L_B580           LDX #$00
                 LDA $0690
                 CLC
                 ADC #$10
                 TAY
                 INC $06D5
                 LDA $06D5
                 CMP #$04
                 BCC L_B5A2
                 TXA
L_B594           STA L_33FE+2,Y
                 INY
                 INX
                 CPX #$08
                 BNE L_B594
                 STA $06D3
                 BEQ L_B5C1
L_B5A2           LDA $06D7
                 BNE L_B5B5
L_B5A7           LDA L_B620,X
                 STA L_33FE+2,Y
                 INY
                 INX
                 CPX #$08
                 BNE L_B5A7
                 BEQ L_B5C1
L_B5B5           LDA L_B626+2,X
                 STA L_33FE+2,Y
                 INY
                 INX
                 CPX #$08
                 BNE L_B5B5
L_B5C1           LDA $06D4
                 BNE L_B5C7
                 RTS
L_B5C7           CMP #$01
                 BNE L_B5E0
                 STA $06D6
                 LDA #$ED
                 STA PCOLR1
                 LDA $060F
                 CLC
                 ADC #$0A
                 STA $0686
                 INC $06D4
                 RTS
L_B5E0           LDX #$00
                 LDA $0690
                 CLC
                 ADC #$10
                 TAY
                 INC $06D6
                 LDA $06D6
                 CMP #$05
                 BCC L_B601
                 TXA
L_B5F4           STA L_3500,Y
                 INY
                 INX
                 CPX #$08
                 BNE L_B5F4
                 STA $06D4
                 RTS
L_B601           LDA $06D7
                 BNE L_B613
L_B606           LDA L_B620,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$08
                 BNE L_B606
                 RTS
L_B613           LDA L_B626+2,X
                 STA L_3500,Y
                 INY
                 INX
                 CPX #$08
                 BNE L_B613
                 RTS
L_B620           BRK
                 BRK
                 ASL L_1F19+2
                 .byte $1B
L_B626           ASL LNFLG
                 BPL L_B66F
                 .byte $82
                 .byte $82
                 .byte $44
                 BPL L_B630
L_B630           BRK
                 .byte $77
                 RTS
                 .byte $74
                 .byte $74
                 RTS
                 RTS
                 RTS
                 PLP
                 .byte $44
                 .byte $44
                 RTI
                 JMP L_4444
                 PLP
                 .byte $44
                 .byte $44
                 .byte $44
                 JMP (L_446B+1)
                 .byte $44
                 .byte $44
                 .byte $7C
                 .byte $54
                 BPL L_B65C
                 BPL L_B65E
                 .byte $54
                 .byte $7C
                 .byte $63
                 .byte $63
                 ROL RTCLOK+2,X
                 .byte $14
                 ROL LOGCOL,X
                 .byte $63
                 .byte $63
                 .byte $63
                 ROR ROWAC,X
L_B65C           ROR LOGCOL,X
L_B65E           .byte $63
                 .byte $63
                 RTS
                 RTS
                 RTS
                 RTS
                 RTS
                 .byte $63
                 .byte $77
                 .byte $77
                 .byte $77
                 .byte $6B
                 .byte $6B
                 .byte $6B
                 .byte $6B
                 .byte $63
                 .byte $63
L_B66F           .byte $63
                 ROL DELTAC,X
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 ROL DELTAC,X
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $77
                 ROL SAVADR,X
                 .byte $44
                 .byte $44
                 .byte $44
                 PLA
                 RTI
                 RTI
                 RTI
                 ROL DELTAC,X
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $67
                 .byte $77
                 .byte $37
                 PLA
                 .byte $44
                 .byte $44
                 .byte $44
                 PLA
                 PLA
                 PHA
                 .byte $44
                 .byte $37
                 .byte $77
                 RTS
                 ROR LTEMP+1,X
                 .byte $03
                 .byte $77
                 ROR DELTAC,X
                 .byte $77
                 EOR RTCLOK+2,X
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $14
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
                 .byte $44
L_B6AD           .byte $44
                 .byte $44
                 PLP
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $63
                 ROL LTEMP,X
                 .byte $1C
                 .byte $63
                 .byte $63
                 .byte $63
                 .byte $6B
                 .byte $6B
                 .byte $6B
                 .byte $6B
                 .byte $77
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 BRK
                 .byte $63
                 .byte $63
                 .byte $63
                 ROL LTEMP,X
                 .byte $1C
                 .byte $1C
                 .byte $1C
                 LDA $0615
                 BNE L_B6D6
                 RTS
L_B6D6           JSR L_4950
                 JSR L_4902+1
                 LDA $0616
                 BNE L_B6EA
                 JSR L_55CC+2
                 JSR L_55B7
                 JSR L_55B7
L_B6EA           JSR L_5760
L_B6ED           LDA VCOUNT
                 CMP #$58
                 BCC L_B6ED
                 LDX #$26
                 LDA L_9D08,X
                 STA L_9D09,X
                 LDA L_9D30,X
                 STA TSLNUM,X


; BLOCK 5

                 org $0244

                 .byte $00


; BLOCK 6

                 org $0009

                 .word $8001
                 .byte $43
                 .byte $80
                 .byte $43


; BLOCK 7

                 org $02E2

L_02E2           .word $B700
