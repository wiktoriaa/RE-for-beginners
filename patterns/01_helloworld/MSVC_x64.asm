$SG2989	DB	'hello, world', 00H

main	PROC
	sub	rsp, 40
	lea	rcx, OFFSET FLAT:$SG2923
	call	printf
	xor	eax, eax
	add	rsp, 40
	ret	0
main	ENDP
