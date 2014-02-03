                lea     esi, [rax+rdx*4+43558D29h]

loc_AF3:                                ; CODE XREF: seg000:0000000000000B46
                rcl     byte ptr [rsi+rax*8+29BB423Ah], 1
                lea     ecx, cs:0FFFFFFFFB2A6780Fh
                mov     al, 96h
                mov     ah, 0CEh
                push    rsp
                lods    byte ptr [esi]
; ---------------------------------------------------------------------------
                db  2Fh ; /
; ---------------------------------------------------------------------------
                pop     rsp
                db      64h
                retf    0E993h
; ---------------------------------------------------------------------------
                cmp     ah, [rax+4Ah]
                movzx   rsi, dword ptr [rbp-25h]
                push    4Ah
                movzx   rdi, dword ptr [rdi+rdx*8]
; ---------------------------------------------------------------------------
                db  9Ah
; ---------------------------------------------------------------------------
                rcr     byte ptr [rax+1Dh], cl
                lodsd
                xor     [rbp+6CF20173h], edx
                xor     [rbp+66F8B593h], edx
                push    rbx
                sbb     ch, [rbx-0Fh]
                stosd
                int     87h             ; used by BASIC while in interpreter
                db      46h, 4Ch
                out     33h, rax
                xchg    eax, ebp
                test    ecx, ebp
                movsd
                leave
                push    rsp
; ---------------------------------------------------------------------------
                db  16h
; ---------------------------------------------------------------------------
                xchg    eax, esi
                pop     rdi

loc_B3D:                                ; CODE XREF: seg000:0000000000000B5F
                mov     ds:93CA685DF98A90F9h, eax
                jnz     short near ptr loc_AF3+6
                out     dx, eax
                cwde
                mov     bh, 5Dh ; ']'
                movsb
                pop     rbp
; ---------------------------------------------------------------------------
                db  60h ; `
; ---------------------------------------------------------------------------
                movsxd  rbp, dword ptr [rbp-17h]
                pop     rbx
                out     7Dh, al
                add     eax, 0D79BE769h
; ---------------------------------------------------------------------------
                db  1Fh
; ---------------------------------------------------------------------------
                retf    0CAB9h
; ---------------------------------------------------------------------------
                jl      short near ptr loc_B3D+4
                sal     dword ptr [rbx+rbp+4Dh], 0D3h
                mov     cl, 41h ; 'A'
                imul    eax, [rbp-5B77E717h], 1DDE6E5h
                imul    ecx, ebx, 66359BCCh
                xlat
; ---------------------------------------------------------------------------
                db  60h ; `
; ---------------------------------------------------------------------------
                cmp     bl, [rax]
                and     ebp, [rcx-57h]
                stc
                sub     [rcx+1A533AB4h], al
                jmp     short loc_C05
; ---------------------------------------------------------------------------
                db  4Bh ; K
; ---------------------------------------------------------------------------
                int     3               ; Trap to Debugger
                xchg    ebx, [rsp+rdx-5Bh]
; ---------------------------------------------------------------------------
                db 0D6h
; ---------------------------------------------------------------------------
                mov     esp, 0C5BA61F7h
                out     0A3h, al        ; Interrupt Controller #2, 8259A
                add     al, 0A6h
                pop     rbx
                cmp     bh, fs:[rsi]
                and     ch, cl
                cmp     al, 0F3h
; ---------------------------------------------------------------------------
                db  0Eh
; ---------------------------------------------------------------------------
                xchg    dh, [rbp+rax*4-4CE9621Ah]
                stosd
                xor     [rdi], ebx
                stosb
                xchg    eax, ecx
                push    rsi
                insd
                fidiv   word ptr [rcx]
                xchg    eax, ecx
                mov     dh, 0C0h ; 'L'
                xchg    eax, esp
                push    rsi
                mov     dh, [rdx+rbp+6918F1F3h]
                xchg    eax, ebp
                out     9Dh, al

loc_BC0:                                ; CODE XREF: seg000:0000000000000C26
                or      [rcx-0Dh], ch
                int     67h             ;  - LIM EMS
                push    rdx
                sub     al, 43h ; 'C'
                test    ecx, ebp
                test    [rdi+71F372A4h], cl
; ---------------------------------------------------------------------------
                db    7
; ---------------------------------------------------------------------------
                imul    ebx, [rsi-0Dh], 2BB30231h
                xor     ebx, [rbp-718B6E64h]
                jns     short near ptr loc_C56+1
                ficomp  dword ptr [rcx-1Ah]
                and     eax, 69BEECC7h
                mov     esi, 37DA40F6h
                imul    r13, [rbp+rdi*8+529F33CDh], 0FFFFFFFFF35CDD30h
                or      [rbx], edx
                imul    esi, [rbx-34h], 0CDA42B87h
; ---------------------------------------------------------------------------
                db  36h ; 6
                db  1Fh
; ---------------------------------------------------------------------------

loc_C05:                                ; CODE XREF: seg000:0000000000000B86
                add     dh, [rcx]
                mov     edi, 0DD3E659h
                ror     byte ptr [rdx-33h], cl
                xlat
                db      48h
                sub     rsi, [rcx]
; ---------------------------------------------------------------------------
                db  1Fh
                db    6
; ---------------------------------------------------------------------------
                xor     [rdi+13F5F362h], bh
                cmpsb
                sub     esi, [rdx]
                pop     rbp
                sbb     al, 62h ; 'b'
                mov     dl, 33h ; '3'
; ---------------------------------------------------------------------------
                db  4Dh ; M
                db  17h
; ---------------------------------------------------------------------------
                jns     short loc_BC0
                push    0FFFFFFFFFFFFFF86h

loc_C2A:                                ; CODE XREF: seg000:0000000000000C8F
                sub     [rdi-2Ah], eax
; ---------------------------------------------------------------------------
                db 0FEh
; ---------------------------------------------------------------------------
                cmpsb
                wait
                rcr     byte ptr [rax+5Fh], cl
                cmp     bl, al
                pushfq
                xchg    ch, cl
; ---------------------------------------------------------------------------
                db  4Eh ; N
                db  37h ; 7
; ---------------------------------------------------------------------------
                mov     ds:0E43F3CCD3D9AB295h, eax
                cmp     ebp, ecx
                jl      short loc_C87
                retn    8574h
; ---------------------------------------------------------------------------
                out     3, al           ; DMA controller, 8237A-5.
                                        ; channel 1 base address and word count

loc_C4C:                                ; CODE XREF: seg000:0000000000000C7F
                cmp     al, 0A6h
                wait
                push    0FFFFFFFFFFFFFFBEh
; ---------------------------------------------------------------------------
                db  82h
; ---------------------------------------------------------------------------
                ficom   dword ptr [rbx+r10*8]

loc_C56:                                ; CODE XREF: seg000:0000000000000BDE
                jnz     short loc_C76
                xchg    eax, edx
                db      26h
                wait
                iret
; ---------------------------------------------------------------------------
                push    rcx
; ---------------------------------------------------------------------------
                db  48h ; H
                db  9Bh
                db  64h ; d
                db  3Eh ; >
                db  2Fh ; /
; ---------------------------------------------------------------------------
                mov     al, ds:8A7490CA2E9AA728h
                stc
; ---------------------------------------------------------------------------
                db  60h ; `
; ---------------------------------------------------------------------------
                test    [rbx+rcx], ebp
                int     3               ; Trap to Debugger
                xlat

loc_C72:                                ; CODE XREF: seg000:0000000000000CC6
                mov     bh, 98h
; ---------------------------------------------------------------------------
                db  2Eh ; .
                db 0DFh
; ---------------------------------------------------------------------------

loc_C76:                                ; CODE XREF: seg000:loc_C56
                jl      short loc_C91
                sub     ecx, 13A7CCF2h
                movsb
                jns     short near ptr loc_C4C+1
                cmpsd
                sub     ah, ah
                cdq
; ---------------------------------------------------------------------------
                db  6Bh ; k
                db  5Ah ; Z
; ---------------------------------------------------------------------------

loc_C87:                                ; CODE XREF: seg000:0000000000000C45
                or      ecx, [rbx+6Eh]
                rep in eax, 0Eh         ; DMA controller, 8237A-5.
                                        ; Clear mask registers.
                                        ; Any OUT enables all 4 channels.
                cmpsb
                jnb     short loc_C2A

loc_C91:                                ; CODE XREF: seg000:loc_C76
                scasd
                add     dl, [rcx+5FEF30E6h]
                enter   0FFFFFFFFFFFFC733h, 7Ch
                insd
                mov     ecx, gs
                in      al, dx
                out     2Dh, al
                mov     ds:6599E434E6D96814h, al
                cmpsb
                push    0FFFFFFFFFFFFFFD6h
                popfq
                xor     ecx, ebp
                db      48h
                insb
                test    al, cl
                xor     [rbp-7Bh], cl
                and     al, 9Bh
; ---------------------------------------------------------------------------
                db  9Ah
; ---------------------------------------------------------------------------
                push    rsp
                xor     al, 8Fh
                cmp     eax, 924E81B9h
                clc
                mov     bh, 0DEh
                jbe     short near ptr loc_C72+1
; ---------------------------------------------------------------------------
                db  1Eh
; ---------------------------------------------------------------------------
                retn    8FCAh
; ---------------------------------------------------------------------------
                db 0C4h ; -
; ---------------------------------------------------------------------------

loc_CCD:                                ; CODE XREF: seg000:0000000000000D22
                adc     eax, 7CABFBF8h
; ---------------------------------------------------------------------------
                db  38h ; 8
; ---------------------------------------------------------------------------
                mov     ebp, 9C3E66FCh
                push    rbp
                dec     byte ptr [rcx]
                sahf
                fidivr  word ptr [rdi+2Ch]
; ---------------------------------------------------------------------------
                db  1Fh
; ---------------------------------------------------------------------------
                db      3Eh
                xchg    eax, esi

loc_CE2:                                ; CODE XREF: seg000:0000000000000D5E
                mov     ebx, 0C7AFE30Bh
                clc
                in      eax, dx
                sbb     bh, bl
                xchg    eax, ebp
; ---------------------------------------------------------------------------
                db  3Fh ; ?
; ---------------------------------------------------------------------------
                cmp     edx, 3EC3E4D7h
                push    51h
                db      3Eh
                pushfq
                jl      short loc_D17
                test    [rax-4CFF0D49h], ebx
; ---------------------------------------------------------------------------
                db  2Fh ; /
; ---------------------------------------------------------------------------
                rdtsc
                jns     short near ptr loc_D40+4
                mov     ebp, 0B2BB03D8h
                in      eax, dx
; ---------------------------------------------------------------------------
                db  1Eh
; ---------------------------------------------------------------------------
                fsubr   dword ptr [rbx-0Bh]
                jns     short loc_D70
                scasd
                mov     ch, 0C1h ; '+'
                add     edi, [rbx-53h]
; ---------------------------------------------------------------------------
                db 0E7h
; ---------------------------------------------------------------------------

loc_D17:                                ; CODE XREF: seg000:0000000000000CF7
                jp      short near ptr unk_D79
                scasd
                cmc
                sbb     ebx, [rsi]
                fsubr   dword ptr [rbx+3Dh]
                retn
; ---------------------------------------------------------------------------
                db    3
; ---------------------------------------------------------------------------
                jnp     short near ptr loc_CCD+4
                db      36h
                adc     r14b, r13b
; ---------------------------------------------------------------------------
                db  1Fh
; ---------------------------------------------------------------------------
                retf
; ---------------------------------------------------------------------------
                test    [rdi+rdi*2], ebx
                cdq
                or      ebx, edi
                test    eax, 310B94BCh
                ffreep  st(7)
                cwde
                sbb     esi, [rdx+53h]
                push    5372CBAAh

loc_D40:                                ; CODE XREF: seg000:0000000000000D02
                push    53728BAAh
                push    0FFFFFFFFF85CF2FCh
; ---------------------------------------------------------------------------
                db  0Eh
; ---------------------------------------------------------------------------
                retn    9B9Bh
; ---------------------------------------------------------------------------
                movzx   r9, dword ptr [rdx]
                adc     [rcx+43h], ebp
                in      al, 31h
; ---------------------------------------------------------------------------
                db  37h ; 7
; ---------------------------------------------------------------------------
                jl      short loc_DC5
                icebp
                sub     esi, [rdi]
                clc
                pop     rdi
                jb      short near ptr loc_CE2+1
                or      al, 8Fh
                mov     ecx, 770EFF81h
                sub     al, ch
                sub     al, 73h ; 's'
                cmpsd
                adc     bl, al
                out     87h, eax        ; DMA page register 74LS612:
                                        ; Channel 0 (address bits 16-23)

loc_D70:                                ; CODE XREF: seg000:0000000000000D0E
                adc     edi, ebx
                db      49h
                outsb
                enter   33E5h, 97h
                xchg    eax, ebx
; ---------------------------------------------------------------------------
unk_D79         db 0FEh                 ; CODE XREF: seg000:loc_D17
                db 0BEh
                db 0E1h
                db  82h
; ---------------------------------------------------------------------------

loc_D7D:                                ; CODE XREF: seg000:0000000000000DB3
                cwde
; ---------------------------------------------------------------------------
                db    7
                db  5Ch ; \
                db  10h
                db  73h ; s
                db 0A9h
                db  2Bh ; +
                db  9Fh
; ---------------------------------------------------------------------------

loc_D85:                                ; CODE XREF: seg000:0000000000000DD1
                dec     dh
                jnz     short near ptr loc_DD3+3
                mov     ds:7C1758CB282EF9BFh, al
                sal     ch, 91h
                rol     dword ptr [rbx+7Fh], cl
                fbstp   tbyte ptr [rcx+2]
                repne mov al, ds:4BFAB3C3ECF2BE13h
                pushfq
                imul    edx, [rbx+rsi*8+3B484EE9h], 8EDC09C6h
                cmp     [rax], al
                jg      short loc_D7D
                xor     [rcx-638C1102h], edx
                test    eax, 14E3AD7h
                insd
; ---------------------------------------------------------------------------
                db  38h ; 8
                db  80h
                db 0C3h
; ---------------------------------------------------------------------------

loc_DC5:                                ; CODE XREF: seg000:0000000000000D57
                                        ; seg000:0000000000000DD8
                cmp     ah, [rsi+rdi*2+527C01D3h]
                sbb     eax, 5FC631F0h
                jnb     short loc_D85

loc_DD3:                                ; CODE XREF: seg000:0000000000000D87
                call    near ptr 0FFFFFFFFC03919C7h
                loope   near ptr loc_DC5+3
                sbb     al, 0C8h
                std
