include(`commons.m4')_f3_32_unsigned PROC
	mov	eax, -1431655765	; aaaaaaabH
	mul	DWORD PTR _a$[esp-4] ; _LANG(`беззнаковое деление',`unsigned multiply')
; EDX=(input*0xaaaaaaab)/2^32
	shr	edx, 1
; EDX=(input*0xaaaaaaab)/2^33
	mov	eax, edx
	ret	0
_f3_32_unsigned ENDP

_f3_32_signed PROC
	mov	eax, 1431655766		; 55555556H
	imul	DWORD PTR _a$[esp-4] ; _LANG(`знаковое деление',`signed multiply')
; _LANG(`берем старшую часть произведения',`take high part of product')
; _LANG(``это всё равно что сдвинуть произведение на 32 бита вправо, либо разделить его на'',`it is just the same as if to shift product by 32 bits right or to divide it by') 2^32
	mov	eax, edx        ; EAX=EDX=(input*0x55555556)/2^32
	shr	eax, 31		; 0000001fH
	add	eax, edx	; _LANG(`прибавить 1 если знак отрицательный',`add 1 if sign is negative')
	ret	0
_f3_32_signed ENDP
