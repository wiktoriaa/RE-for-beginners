include(`commons.m4').string	"hello, world"
main:
	sub	rsp, 8
	mov	edi, OFFSET FLAT:.LC0 ; "hello, world"
	xor	eax, eax  ; _numvecreg
	call	printf
	xor	eax, eax
	add	rsp, 8
	ret
