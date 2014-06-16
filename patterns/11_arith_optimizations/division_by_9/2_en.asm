_f3_32_unsigned PROC
	mov	eax, -1431655765			; aaaaaaabH
	mul	DWORD PTR _a$[esp-4] ; unsigned multiply
	shr	edx, 1
	mov	eax, edx
	ret	0
_f3_32_unsigned ENDP

_f3_32_signed PROC
	mov	eax, 1431655766				; 55555556H
	imul	DWORD PTR _a$[esp-4] ; signed multiply
	mov	eax, edx
	shr	eax, 31					; 0000001fH
	add	eax, edx ; add 1 if sign is negative
	ret	0
_f3_32_signed ENDP
