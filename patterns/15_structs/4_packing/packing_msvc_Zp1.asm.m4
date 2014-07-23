include(`commons.m4')_main    PROC
    push   ebp
    mov    ebp, esp
    sub    esp, 12
    mov    BYTE PTR _tmp$[ebp], 1     ; _LANG(`установить поле',`set field') a
    mov    DWORD PTR _tmp$[ebp+1], 2  ; _LANG(`установить поле',`set field') b
    mov    BYTE PTR _tmp$[ebp+5], 3   ; _LANG(`установить поле',`set field') c
    mov    DWORD PTR _tmp$[ebp+6], 4  ; _LANG(`установить поле',`set field') d
    sub    esp, 12                    ; _LANG(`выделить место для временной структуры',`allocate place for temporary structure')
    mov    eax, esp
    mov    ecx, DWORD PTR _tmp$[ebp]  ; _LANG(`скопировать 10 байт',`copy 10 bytes')
    mov    DWORD PTR [eax], ecx
    mov    edx, DWORD PTR _tmp$[ebp+4]
    mov    DWORD PTR [eax+4], edx
    mov    cx, WORD PTR _tmp$[ebp+8]
    mov    WORD PTR [eax+8], cx
    call    _f
    add    esp, 12
    xor    eax, eax
    mov    esp, ebp
    pop    ebp
    ret    0
_main    ENDP

_TEXT    SEGMENT
_s$ = 8 ; size = 10
?f@@YAXUs@@@Z PROC    ; f
    push   ebp
    mov    ebp, esp
    mov    eax, DWORD PTR _s$[ebp+6]
    push   eax
    movsx  ecx, BYTE PTR _s$[ebp+5]
    push   ecx
    mov    edx, DWORD PTR _s$[ebp+1]
    push   edx
    movsx  eax, BYTE PTR _s$[ebp]
    push   eax
    push   OFFSET $SG3842
    call   _printf
    add    esp, 20
    pop    ebp
    ret    0
?f@@YAXUs@@@Z ENDP    ; f
