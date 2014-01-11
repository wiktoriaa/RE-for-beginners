_TEXT	SEGMENT
_a$ = 8							; size = 4
_b$ = 12						; size = 4
_c$ = 16						; size = 4
_f	PROC
; File c:\...\1.c
; Line 4
	push	ebp
	mov	ebp, esp
; Line 5
	mov	eax, DWORD PTR _a$[ebp]
	imul	eax, DWORD PTR _b$[ebp]
	add	eax, DWORD PTR _c$[ebp]
; Line 6
	pop	ebp
	ret	0
_f	ENDP

_main	PROC
; Line 9
	push	ebp
	mov	ebp, esp
; Line 10
	push	3
	push	2
	push	1
	call	_f
	add	esp, 12					; 0000000cH
	push	eax
	push	OFFSET $SG2463 ; '%d', 0aH, 00H
	call	_printf
	add	esp, 8
; Line 11
	xor	eax, eax
; Line 12
	pop	ebp
	ret	0
_main	ENDP
