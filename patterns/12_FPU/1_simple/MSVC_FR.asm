CONST    SEGMENT
__real@4010666666666666 DQ 04010666666666666r    ; 4.1
CONST    ENDS
CONST    SEGMENT
__real@40091eb851eb851f DQ 040091eb851eb851fr    ; 3.14
CONST    ENDS
_TEXT    SEGMENT
_a$ = 8           ; size = 8
_b$ = 16          ; size = 8
_f  PROC
    push   ebp
    mov    ebp, esp
    fld    QWORD PTR _a$[ebp]

; §é§tat courant de la pile: ST(0) = _a

    fdiv   QWORD PTR __real@40091eb851eb851f

; §é§tat courant de la pile: ST(0) = r§é§sultat de _a divis§é§ par 3.14

    fld    QWORD PTR _b$[ebp]

; §é§tat courant de la pile: ST(0) = _b;
; ST(1) = r§é§sultat de  _a divis§é§ par 3.14

    fmul   QWORD PTR __real@4010666666666666

; §é§tat courant de la pile:
; ST(0) = r§é§sultat de _b * 4.1;
; ST(1) = r§é§sultat de _a divis§é§ par 3.14

    faddp  ST(1), ST(0)

; §é§tat courant de la pile: ST(0) = r§é§sultat de l'addition

    pop    ebp
    ret    0
_f  ENDP
