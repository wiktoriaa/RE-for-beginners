_is_bool:
	push	edi
	mov	ecx, 5
	push	esi
	mov	edi, OFFSET FLAT:LC0 ; "true\0"
	sub	esp, 20
	mov	esi, DWORD PTR [esp+32]
	repz cmpsb
	je	L3
	mov	esi, DWORD PTR [esp+32]
	mov	ecx, 6
	mov	edi, OFFSET FLAT:LC1 ; "false\0"
	repz cmpsb
	seta	cl
	setb	dl
	xor	eax, eax
	cmp	cl, dl
	jne	L8
	add	esp, 20
	pop	esi
	pop	edi
	ret
