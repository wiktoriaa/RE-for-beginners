	mov	eax, MAGICAL CONSTANT
	imul	input value
	sar	edx, SHIFTING COEFFICIENT ; знаковое деление на 2^x при помощи арифметического сдвига вправо
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
