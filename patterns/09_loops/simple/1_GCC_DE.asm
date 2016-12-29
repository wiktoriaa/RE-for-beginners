main            proc near

var_20          = dword ptr -20h
var_4           = dword ptr -4

                push    ebp
                mov     ebp, esp
                and     esp, 0FFFFFFF0h
                sub     esp, 20h
                mov     [esp+20h+var_4], 2  ; (i) initialisieren
                jmp     short loc_8048476

loc_8048465:
                mov     eax, [esp+20h+var_4]
                mov     [esp+20h+var_20], eax
                call    printing_function
<<<<<<< HEAD
                add     [esp+20h+var_4], 1  ; (i) erhöhen
=======
                add     [esp+20h+var_4], 1  ; (i) erhÃ¶hen
>>>>>>> 33058039def6268466867db95246998137625356

loc_8048476:
                cmp     [esp+20h+var_4], 9
                jle     short loc_8048465   ; falls i<=9, Schleife fortsetzen
                mov     eax, 0
                leave
                retn
main            endp
