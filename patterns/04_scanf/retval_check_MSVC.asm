; Line 8
	lea	eax, DWORD PTR _x$[ebp]
	push	eax
	push	OFFSET $SG3833 ; '%d', 00H
	call	_scanf
	add	esp, 8
	cmp	eax, 1
	jne	SHORT $LN2@main
; Line 9
	mov	ecx, DWORD PTR _x$[ebp]
	push	ecx
	push	OFFSET $SG3834 ; 'You entered %d...', 0aH, 00H
	call	_printf
	add	esp, 8
; Line 10
	jmp	SHORT $LN1@main
$LN2@main:
; Line 11
	push	OFFSET $SG3836 ; 'What you entered? Huh?', 0aH, 00H
	call	_printf
	add	esp, 4
$LN1@main:
; Line 13
	xor	eax, eax
