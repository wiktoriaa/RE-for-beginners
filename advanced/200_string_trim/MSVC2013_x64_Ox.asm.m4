include(`commons.m4')s$ = 8
str_trim PROC

; RCX _EN(`is the first function argument and it always holds pointer to the string')_RU(``это первый аргумент функции, и он всегда будет указывать на строку'')
	mov	rdx, rcx
; _EN(`this is strlen() function inlined right here')_RU(`это функция strlen() встроенная в код прямо здесь'):
; _EN(`set')_RU(`установить') RAX _EN(`to')_RU(`в') 0xFFFFFFFFFFFFFFFF (-1)
	or	rax, -1
$LL14@str_trim:
	inc	rax
	cmp	BYTE PTR [rcx+rax], 0
	jne	SHORT $LL14@str_trim
; _EN(`is the input string length zero? exit then')_RU(`длина входной строки 0? тогда на выход'):
	test	rax, rax
	je	SHORT $LN15@str_trim
; RAX _EN(`holds string length')_RU(`содержит длину строки')
	dec	rcx
; RCX = s-1
	mov	r8d, 1
	add	rcx, rax
; RCX = s-1+strlen(s), _EN(``i.e., this is the address of the last character in the string'')_RU(``т.е., это адрес последнего символа в строке'')
	sub	r8, rdx
; R8 = 1-s
$LL6@str_trim:
; _EN(`load the last character of the string')_RU(`загрузить последний символ строки'):
; _EN(``jump, if its code is 13 or 10'')_RU(``перейти, если его код 13 или 10''):
	movzx	eax, BYTE PTR [rcx]
	cmp	al, 13
	je	SHORT $LN2@str_trim
	cmp	al, 10
	jne	SHORT $LN15@str_trim
$LN2@str_trim:
; _EN(`the last character has a 13 or 10 code')_RU(`последний символ имеет код 13 или 10')
; _EN(`write zero at this place')_RU(`записываем ноль в этом месте'):
	mov	BYTE PTR [rcx], 0
; _EN(`decrement address of the last character')_RU(`декремент адреса последнего символа'),
; _EN(`so it will point to the character before the one which has just been erased')_RU(`так что он будет указывать на сивол перед только что стертым'):
	dec	rcx
	lea	rax, QWORD PTR [r8+rcx]
; RAX = 1 - s + _EN(`address of the current last character')_RU(`адрес текущего последнего символа')
; _EN(``thus we can determine if we reached the first character and we need to stop, if it is so'')_RU(``так мы определяем, достигли ли мы первого символа, и раз так, то нам нужно остановиться'')
	test	rax, rax
	jne	SHORT $LL6@str_trim
$LN15@str_trim:
	mov	rax, rdx
	ret	0
str_trim ENDP
