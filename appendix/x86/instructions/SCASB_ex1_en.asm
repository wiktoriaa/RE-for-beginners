lea     edi, string
mov     ecx, 0FFFFFFFFh ; scan infinitely
xor     eax, eax        ; 0 is the terminator
repne scasb
add     edi, 0FFFFFFFFh ; correct it

; now EDI points to the last character of the ASCIIZ string.

; let's determine string length
; ECX = -strlen-2

not     ecx
dec     ecx

; now ECX contain string length
