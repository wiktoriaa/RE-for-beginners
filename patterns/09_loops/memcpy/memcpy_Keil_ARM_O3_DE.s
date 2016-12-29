my_memcpy PROC
; R0 = Zieladresse
; R1 = Quelladresse
<<<<<<< HEAD
; R2 = Blockgr��e

; initialisiere Z�hler (i) mit 0
=======
; R2 = Blockgröße

; initialisiere Zähler (i) mit 0
>>>>>>> 33058039def6268466867db95246998137625356
        MOV      r3,#0
|L0.4|
; alles kopiert?
        CMP      r3,r2
<<<<<<< HEAD
; der folgende Codeblock wird nur ausgef�hrt, falls die §\IT{less than}§
=======
; der folgende Codeblock wird nur ausgeführt, falls die Â§\IT{less than}Â§
>>>>>>> 33058039def6268466867db95246998137625356
Bedingung, ; d.h., falls R2<R3 oder i<size wahr ist.
; lade Byte von R1+i:
        LDRBCC   r12,[r1,r3]
; speichere Byte an der Stelle R1+i:
        STRBCC   r12,[r0,r3]
; i++
        ADDCC    r3,r3,#1
<<<<<<< HEAD
; der letzte Befehl des §\IT{conditional block}§.
=======
; der letzte Befehl des Â§\IT{conditional block}Â§.
>>>>>>> 33058039def6268466867db95246998137625356
; springe zum Anfang der Schleife, falls i<size
; andernfalls tue nichts (d.h., falls i>=size)
        BCC      |L0.4|
; return
        BX       lr
        ENDP
