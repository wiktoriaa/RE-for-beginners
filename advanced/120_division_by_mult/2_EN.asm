_f3_32_unsigned PROC
	mov	eax, -1431655765	; aaaaaaabH
	mul	DWORD PTR _a$[esp-4] ; unsigned multiply
; EDX=§$\frac{input \cdot 0xaaaaaaab}{2^{32}}$§
	shr	edx, 1
; EDX=§$\frac{input \cdot 0xaaaaaaab}{2^{33}}$§
	mov	eax, edx
	ret	0
_f3_32_unsigned ENDP

_f3_32_signed PROC
	mov	eax, 1431655766		; 55555556H
	imul	DWORD PTR _a$[esp-4] ; signed multiply
; take high part of product
; it is just the same as if to shift product by 32 bits right or to divide it by §$2^{32}$§
	mov	eax, edx        ; EAX=EDX=§$\frac{input \cdot 0x55555556}{2^{32}}$§
	shr	eax, 31		; 0000001fH
	add	eax, edx	; add 1 if sign is negative
	ret	0
_f3_32_signed ENDP
