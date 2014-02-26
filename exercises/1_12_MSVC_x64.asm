s$ = 8
f	PROC
	cmp	BYTE PTR [rcx], 0
	mov	r9, rcx
	je	SHORT $LN13@f
	npad	8
$LL5@f:
	movzx	edx, BYTE PTR [rcx]
	lea	eax, DWORD PTR [rdx-97]
	cmp	al, 25
	ja	SHORT $LN3@f
	movsx	r8d, dl
	mov	eax, 1321528399				; 4ec4ec4fH
	sub	r8d, 84					; 00000054H
	imul	r8d
	sar	edx, 3
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	imul	edx, 26
	sub	r8d, edx
	add	r8b, 97					; 00000061H
	jmp	SHORT $LN14@f
$LN3@f:
	lea	eax, DWORD PTR [rdx-65]
	cmp	al, 25
	ja	SHORT $LN1@f
	movsx	r8d, dl
	mov	eax, 1321528399				; 4ec4ec4fH
	sub	r8d, 52					; 00000034H
	imul	r8d
	sar	edx, 3
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	imul	edx, 26
	sub	r8d, edx
	add	r8b, 65					; 00000041H
$LN14@f:
	mov	BYTE PTR [rcx], r8b
$LN1@f:
	inc	rcx
	cmp	BYTE PTR [rcx], 0
	jne	SHORT $LL5@f
$LN13@f:
	mov	rax, r9
	ret	0
f	ENDP
