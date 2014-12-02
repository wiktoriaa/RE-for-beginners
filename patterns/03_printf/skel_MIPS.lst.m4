include(`commons.m4')LI $4, _EN(`1st argument')_RU(`1-й аргумент') ; AKA $A0
LI $5, _EN(`2nd argument')_RU(`2-й аргумент') ; AKA $A1
LI $6, _EN(`3rd argument')_RU(`3-й аргумент') ; AKA $A2
LI $7, _EN(`4th argument')_RU(`4-й аргумент') ; AKA $A3
; _EN(``pass 5th, 6th argument, etc, in stack (if needed)'')_RU(``передать 5-й, 6-й аргумент, итд, в стеке (если нужно)'')
LW temp_reg, _EN(`address of function')_RU(`адрес функции')
JALR temp_reg
