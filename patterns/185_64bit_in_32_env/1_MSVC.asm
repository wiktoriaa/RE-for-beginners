_a$ = 8		; size = 8
_b$ = 16	; size = 8
_f1	PROC
	mov	eax, DWORD PTR _a$[esp-4]
	add	eax, DWORD PTR _b$[esp-4]
	mov	edx, DWORD PTR _a$[esp]
	adc	edx, DWORD PTR _b$[esp]
	ret	0
_f1	ENDP

_f1_test PROC
	push	5461		; 00001555H
	push	1972608889	; 75939f79H
	push	2874		; 00000b3aH
	push	1942892530	; 73ce2ff2H
	call	_f1
	push	edx
	push	eax
	push	OFFSET $SG1436 ; '%I64d', 0aH, 00H
	call	_printf
	add	esp, 28
	ret	0
_f1_test ENDP

_f2	PROC
	mov	eax, DWORD PTR _a$[esp-4]
	sub	eax, DWORD PTR _b$[esp-4]
	mov	edx, DWORD PTR _a$[esp]
	sbb	edx, DWORD PTR _b$[esp]
	ret	0
_f2	ENDP
