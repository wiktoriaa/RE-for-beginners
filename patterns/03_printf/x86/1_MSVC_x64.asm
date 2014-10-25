$SG2923	DB	'a=%d; b=%d; c=%d', 00H

main	PROC
	sub	rsp, 40

	mov	r9d, 3
	mov	r8d, 2
	mov	edx, 1
	lea	rcx, OFFSET FLAT:$SG2923
	call	printf

	; return 0

	xor	eax, eax	

	add	rsp, 40
	ret	0
main	ENDP
