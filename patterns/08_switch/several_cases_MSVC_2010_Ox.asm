$SG2798	DB	'1, 2, 7, 10', 0aH, 00H
$SG2800	DB	'3, 4, 5', 0aH, 00H
$SG2802	DB	'8, 9, 21', 0aH, 00H
$SG2804	DB	'22', 0aH, 00H
$SG2806	DB	'default', 0aH, 00H

_a$ = 8
_f	PROC
	mov	eax, DWORD PTR _a$[esp-4]
	dec	eax
	cmp	eax, 21
	ja	SHORT $LN1@f
	movzx	eax, BYTE PTR $LN10@f[eax]
	jmp	DWORD PTR $LN11@f[eax*4]
$LN5@f:
	mov	DWORD PTR _a$[esp-4], OFFSET $SG2798 ; '1, 2, 7, 10'
	jmp	DWORD PTR __imp__printf
$LN4@f:
	mov	DWORD PTR _a$[esp-4], OFFSET $SG2800 ; '3, 4, 5'
	jmp	DWORD PTR __imp__printf
$LN3@f:
	mov	DWORD PTR _a$[esp-4], OFFSET $SG2802 ; '8, 9, 21'
	jmp	DWORD PTR __imp__printf
$LN2@f:
	mov	DWORD PTR _a$[esp-4], OFFSET $SG2804 ; '22'
	jmp	DWORD PTR __imp__printf
$LN1@f:
	mov	DWORD PTR _a$[esp-4], OFFSET $SG2806 ; 'default'
	jmp	DWORD PTR __imp__printf
	npad	2
$LN11@f:
	DD	$LN5@f
	DD	$LN4@f
	DD	$LN3@f
	DD	$LN2@f
	DD	$LN1@f
$LN10@f:
	DB	0
	DB	0
	DB	1
	DB	1
	DB	1
	DB	1
	DB	0
	DB	2
	DB	2
	DB	0
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	2
	DB	2
	DB	3
_f	ENDP
