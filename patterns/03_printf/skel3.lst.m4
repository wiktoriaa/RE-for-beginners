include(`commons.m4')MOV RDI, _EN(`1st argument')_RU(`1-й аргумент')
MOV RSI, _EN(`2nd argument')_RU(`2-й аргумент')
MOV RDX, _EN(`3rd argument')_RU(`3-й аргумент')
MOV RCX, _EN(`4th argument')_RU(`4-й аргумент')
MOV R8, _EN(`5th argument')_RU(`5-й аргумент')
MOV R9, _EN(`6th argument')_RU(`6-й аргумент')
...
PUSH _EN(``7th, 8th argument, etc (if needed)'')_RU(``7-й, 8-й аргумент, итд (если нужно)'')
CALL _EN(`function')_RU(`функция')
; _EN(`modify stack pointer (if needed)')_RU(`модифицировать указатель стека (если нужно)')

