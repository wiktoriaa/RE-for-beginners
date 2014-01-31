_a$ = 8							; size = 8
_b$ = 16						; size = 8
_f3	PROC
	push	DWORD PTR _b$[esp]
	push	DWORD PTR _b$[esp]
	push	DWORD PTR _a$[esp+8]
	push	DWORD PTR _a$[esp+8]
	call	__allmul ; long long multiplication
	ret	0
_f3	ENDP

_a$ = 8							; size = 8
_b$ = 16						; size = 8
_f4	PROC
	push	DWORD PTR _b$[esp]
	push	DWORD PTR _b$[esp]
	push	DWORD PTR _a$[esp+8]
	push	DWORD PTR _a$[esp+8]
	call	__aulldiv ; unsigned long long division
	ret	0
_f4	ENDP

_a$ = 8							; size = 8
_b$ = 16						; size = 8
_f5	PROC
	push	DWORD PTR _b$[esp]
	push	DWORD PTR _b$[esp]
	push	DWORD PTR _a$[esp+8]
	push	DWORD PTR _a$[esp+8]
	call	__aullrem ; unsigned long long remainder
	ret	0
_f5	ENDP
