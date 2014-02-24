.LC0:
	.string	"a=%d; b=%d; c=%d"
main:

	sub	rsp, 8

	mov	ecx, 3
	mov	edx, 2
	mov	esi, 1
	mov	edi, OFFSET FLAT:.LC0
	xor	eax, eax
	call	printf

	; return 0
	xor	eax, eax

	add	rsp, 8
	ret
