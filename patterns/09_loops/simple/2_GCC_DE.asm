                public main
main            proc near

var_20          = dword ptr -20h

                push    ebp
                mov     ebp, esp
                and     esp, 0FFFFFFF0h
                push    ebx
                mov     ebx, 2    ; i=2
                sub     esp, 1Ch

<<<<<<< HEAD
; Label loc_80484D0 (Schleifenkörperbeginn) auf 16-Byte-Grenze setzen:
                nop

loc_80484D0:
; übergebe (i) als erstes Argument von printing_function():
=======
; Label loc_80484D0 (SchleifenkÃ¶rperbeginn) auf 16-Byte-Grenze setzen:
                nop

loc_80484D0:
; Ã¼bergebe (i) als erstes Argument von printing_function():
>>>>>>> 33058039def6268466867db95246998137625356
                mov     [esp+20h+var_20], ebx 
                add     ebx, 1    ; i++
                call    printing_function
                cmp     ebx, 64h  ; i==100?
                jnz     short loc_80484D0 ; wenn nicht, fortsetzen
                add     esp, 1Ch
                xor     eax, eax  ; return 0
                pop     ebx
                mov     esp, ebp
                pop     ebp
                retn
main            endp
