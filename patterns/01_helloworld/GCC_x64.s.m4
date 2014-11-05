include(`commons.m4').string	"hello, world"
main:
	sub	rsp, 8
	mov	edi, OFFSET FLAT:.LC0 ; "hello, world"
	xor	eax, eax  ; _RU(`количество задействованных векторных регистров')_EN(`number of vector registers passed')
	call	printf
	xor	eax, eax
	add	rsp, 8
	ret
