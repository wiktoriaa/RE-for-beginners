	mov	eax, MAGICAL CONSTANT
	imul	§input value§
	sar	edx, SHIFTING COEFFICIENT ; §signed division by $2^x$ using arithmetic shift right§
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
