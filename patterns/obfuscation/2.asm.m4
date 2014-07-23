include(`commons.m4')mov	esi, 1
...	; _LANG(`какой-то не трогающий ESI код',`some code not touching ESI')
dec	esi
...	; _LANG(`какой-то не трогающий ESI код',`some code not touching ESI')
cmp	esi, 0
jz	real_code
; _LANG(`фальшивый багаж',`fake luggage')
real_code:
