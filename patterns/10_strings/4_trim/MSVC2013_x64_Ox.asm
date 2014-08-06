s$ = 8
str_trim PROC

; RCX is the first function argument and it always holds pointer to the string

; this is strlen() function inlined right here:
; set RAX to 0xFFFFFFFFFFFFFFFF (-1)
	or	rax, -1
$LL14@str_trim:
	inc	rax
	cmp	BYTE PTR [rcx+rax], 0
	jne	SHORT $LL14@str_trim
; is string length zero? exit then
	test	eax, eax
$LN18@str_trim:
	je	SHORT $LN15@str_trim
; RAX holds string length
; here is probably disassembler (or disassembler printing routine) error,
; LEA RDX... should be here instead of LEA EDX...
	lea	edx, DWORD PTR [rax-1]
; idle instruction: EAX will be reset at the next instruction's execution
	mov	eax, edx 
; load character at s[str_len-1]
	movzx	eax, BYTE PTR [rdx+rcx]
; save also pointer to the last character to R8
	lea	r8, QWORD PTR [rdx+rcx]
	cmp	al, 13	; is it '\r'?
	je	SHORT $LN2@str_trim
	cmp	al, 10  ; is it '\n'?
	jne	SHORT $LN15@str_trim
$LN2@str_trim:
; store 0 to that place
	mov	BYTE PTR [r8], 0
	mov	eax, edx
; check character for 0, but conditional jump is above...
	test	edx, edx
	jmp	SHORT $LN18@str_trim
$LN15@str_trim:
; return s
	mov	rax, rcx
	ret	0
str_trim ENDP
