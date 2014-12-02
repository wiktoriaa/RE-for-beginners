include(`commons.m4')MOV RCX, _EN(`1st argument')_RU(`1-й аргумент')
MOV RDX, _EN(`2nd argument')_RU(`2-й аргумент')
MOV R8, _EN(`3rd argument')_RU(`3-й аргумент')
MOV R9, _EN(`4th argument')_RU(`4-й аргумент')
...
PUSH _EN(``5th, 6th argument, etc (if needed)'')_RU(``5-й, 6-й аргумент, итд (если нужно)'')
CALL _EN(`function')_RU(`функция')
; _EN(`modify stack pointer (if needed)')_RU(`модифицировать указатель стека (если нужно)')
