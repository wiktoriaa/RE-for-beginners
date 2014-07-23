include(`commons.m4')xor	esi, 011223344h	; _LANG(`мусор',`garbage')
add	esi, eax	; _LANG(`мусор',`garbage')
add	eax, ebx
mov	edx, eax	; _LANG(`мусор',`garbage')
shl	edx, 4		; _LANG(`мусор',`garbage')
mul	ecx
xor	esi, ecx	; _LANG(`мусор',`garbage')
