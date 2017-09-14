                public f
f               proc near

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                push    ebp
                fld     ds:dbl_8048608 ; 3.14

; §é§tat de la pile maintenant: ST(0) = 3.14

                mov     ebp, esp
                fdivr   [ebp+arg_0]

; §é§tat de la pile maintenant: ST(0) = r§é§sultat de la division

                fld     ds:dbl_8048610 ; 4.1

; §é§tat de la pile maintenant: ST(0) = 4.1, ST(1) = r§é§sultat de la division

                fmul    [ebp+arg_8]

; §é§tat de la pile maintenant: ST(0) = r§é§sultat de la multiplication, ST(1) = r§é§sultat de la division

                pop     ebp
                faddp   st(1), st

; §é§tat de la pile maintenant: ST(0) = r§é§sultat de l'addition

                retn
f               endp
