lea     edi, string
mov     ecx, 0FFFFFFFFh ; сканировать бесконечно
xor     eax, eax        ; конец строки это 0
repne scasb
add     edi, 0FFFFFFFFh ; скорректировать

; теперь EDI указывает на последний символ в ASCIIZ-строке.

; узнать длину строки
; ECX = -strlen-2

not     ecx
dec     ecx

; теперь в ECX хранится длина строки
