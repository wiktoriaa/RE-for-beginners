_a$ = 8							; size = 8
_b$ = 16						; size = 8
_c$ = 24						; size = 4
_f7	PROC
	push	esi
	push	DWORD PTR _b$[esp+4]
	push	DWORD PTR _b$[esp+4]
	push	DWORD PTR _a$[esp+12]
	push	DWORD PTR _a$[esp+12]
	call	__allmul ; long long multiplication
	mov	ecx, eax
	mov	eax, DWORD PTR _c$[esp]
	mov	esi, edx
	cdq     ; input: 32-bit value in EAX; output: 64-bit value in EDX:EAX
	add	eax, ecx
	adc	edx, esi
	pop	esi
	ret	0
_f7	ENDP

_f7_main PROC
	push	12345					; 00003039H
	push	5461					; 00001555H
	push	1972608889				; 75939f79H
	push	2874					; 00000b3aH
	push	1942892530				; 73ce2ff2H
	call	_f7
	add	esp, 20					; 00000014H
	ret	0
_f7_main ENDP
