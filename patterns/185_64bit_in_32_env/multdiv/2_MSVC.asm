_a$ = 8		; size = 8
_b$ = 16	; size = 8
_f_mul	PROC
	push	DWORD PTR _b$[esp]
	push	DWORD PTR _b$[esp]
	push	DWORD PTR _a$[esp+8]
	push	DWORD PTR _a$[esp+8]
	call	__allmul ; long long multiplication
	ret	0
_f_mul	ENDP

_a$ = 8		; size = 8
_b$ = 16	; size = 8
_f_div	PROC
	push	DWORD PTR _b$[esp]
	push	DWORD PTR _b$[esp]
	push	DWORD PTR _a$[esp+8]
	push	DWORD PTR _a$[esp+8]
	call	__aulldiv ; unsigned long long division
	ret	0
_f_div	ENDP

_a$ = 8		; size = 8
_b$ = 16	; size = 8
_f_rem	PROC
	push	DWORD PTR _b$[esp]
	push	DWORD PTR _b$[esp]
	push	DWORD PTR _a$[esp+8]
	push	DWORD PTR _a$[esp+8]
	call	__aullrem ; unsigned long long remainder
	ret	0
_f_rem	ENDP
