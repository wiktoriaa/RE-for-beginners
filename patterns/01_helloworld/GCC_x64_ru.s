	.string	"hello, world"
main:
	sub	rsp, 8
	mov	edi, OFFSET FLAT:.LC0 ; "hello, world"
	xor	eax, eax  ; количество задействованных векторных регистров
	call	printf
	xor	eax, eax
	add	rsp, 8
	ret
