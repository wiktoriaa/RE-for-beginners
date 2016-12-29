my_memcpy PROC
; R0 = Zieladresse
; R1 = Quelladresse
<<<<<<< HEAD
; R2 = Blockgröße

        PUSH     {r4,lr}
; initialisiere Zähler (i) mit 0
        MOVS     r3,#0
; Bedingung wird am Ende der Schleife geprüft, daher springe dorthin:
=======
; R2 = BlockgrÃ¶ÃŸe

        PUSH     {r4,lr}
; initialisiere ZÃ¤hler (i) mit 0
        MOVS     r3,#0
; Bedingung wird am Ende der Schleife geprÃ¼ft, daher springe dorthin:
>>>>>>> 33058039def6268466867db95246998137625356
        B        |L0.12|
|L0.6|
; lade Byte von R1+i:
        LDRB     r4,[r1,r3]
; speichere Byte an der Stelle R1+i:
        STRB     r4,[r0,r3]
; i++
        ADDS     r3,r3,#1
|L0.12|
; i<size?
        CMP      r3,r2
; springe zum Anfang der Schleife, falls es so ist:
        BCC      |L0.6|
        POP      {r4,pc}
        ENDP
