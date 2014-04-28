_f7:
	push	edi
	push	esi
	push	ebx
	mov	esi, DWORD PTR [esp+16]
	mov	edi, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+28]
	mov	eax, esi
	mul	edi
	imul	ebx, edi
	imul	ecx, esi
	mov	esi, edx
	add	ecx, ebx
	mov	ebx, eax
	mov	eax, DWORD PTR [esp+32]
	add	esi, ecx
	cdq	; input: 32-bit value in EAX; output: 64-bit value in EDX:EAX
	add	eax, ebx
	adc	edx, esi
	pop	ebx
	pop	esi
	pop	edi
	ret

_f7_main:
	sub	esp, 28
	mov	DWORD PTR [esp+16], 12345	; 00003039H
	mov	DWORD PTR [esp+8], 1972608889	; 75939f79H
	mov	DWORD PTR [esp+12], 5461	; 00001555H
	mov	DWORD PTR [esp], 1942892530	; 73ce2ff2H
	mov	DWORD PTR [esp+4], 2874		; 00000b3aH
	call	_f7
	add	esp, 28
	ret
