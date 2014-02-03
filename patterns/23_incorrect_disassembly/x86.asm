                mov     bl, 0Ch
                mov     ecx, 0D38558Dh
                mov     eax, ds:2C869A86h
                db      67h
                mov     dl, 0CCh
                insb
                movsb
                push    eax
                xor     [edx-53h], ah
                fcom    qword ptr [edi-45A0EF72h]
                pop     esp
                pop     ss
                in      eax, dx
                dec     ebx
                push    esp
                lds     esp, [esi-41h]
                retf
                rcl     dword ptr [eax], cl
                mov     cl, 9Ch
                mov     ch, 0DFh
                push    cs
                insb
                mov     esi, 0D9C65E4Dh
                imul    ebp, [ecx], 66h
                pushf
                sal     dword ptr [ebp-64h], cl
                sub     eax, 0AC433D64h
                out     8Ch, eax
                pop     ss
                sbb     [eax], ebx
                aas
                xchg    cl, [ebx+ebx*4+14B31Eh]
                jecxz   short near ptr loc_58+1
                xor     al, 0C6h
                inc     edx
                db      36h
                pusha
                stosb
                test    [ebx], ebx
                sub     al, 0D3h ; 'L'
                pop     eax
                stosb

loc_58:                                 ; CODE XREF: seg000:0000004A
                test    [esi], eax
                inc     ebp
                das
                db      64h
                pop     ecx
                das
                hlt
; ---------------------------------------------------------------------------
                pop     edx
                out     0B0h, al
                lodsb
                push    ebx
                cdq
                out     dx, al
                sub     al, 0Ah
                sti
                outsd
                add     dword ptr [edx], 96FCBE4Bh
                and     eax, 0E537EE4Fh
                inc     esp
                stosd
                cdq
                push    ecx
                in      al, 0CBh
                mov     ds:0D114C45Ch, al
                mov     esi, 659D1985h
                enter   6FE8h, 0D9h
                enter   6FE6h, 0D9h
                xchg    eax, esi
                sub     eax, 0A599866Eh
                retn
; ---------------------------------------------------------------------------
                pop     eax
                dec     eax
                adc     al, 21h ; '!'
                lahf
                inc     edi
                sub     eax, 9062EE5Bh
                bound   eax, [ebx]

loc_A2:                                 ; CODE XREF: seg000:00000120
                wait
                iret
; ---------------------------------------------------------------------------
                jnb     short loc_D7
                cmpsd
                iret
; ---------------------------------------------------------------------------
                jnb     short loc_D7
                sub     ebx, [ecx]
                in      al, 0Ch
                add     esp, esp
                mov     bl, 8Fh
                xchg    eax, ecx
                int     67h             ;  - LIM EMS
                pop     ds
                pop     ebx
                db      36h
                xor     esi, [ebp-4Ah]
                mov     ebx, 0EB4F980Ch
                repne add bl, dh
                imul    ebx, [ebp+5616E7A5h], 67A4D1EEh
                xchg    eax, ebp
                scasb
                push    esp
                wait
                mov     dl, 11h
                mov     ah, 29h ; ')'
                fist    dword ptr [edx]

loc_D7:                                 ; CODE XREF: seg000:000000A4
                                        ; seg000:000000A8 ...
                dec     dword ptr [ebp-5D0E0BA4h]
                call    near ptr 622FEE3Eh
                sbb     ax, 5A2Fh
                jmp     dword ptr cs:[ebx]
; ---------------------------------------------------------------------------
                xor     ch, [edx-5]
                inc     esp
                push    edi
                xor     esp, [ebx-6779D3B8h]
                pop     eax
                int     3               ; Trap to Debugger
                rcl     byte ptr [ebx-3Eh], cl
                xor     [edi], bl
                sbb     al, [edx+ecx*4]
                xor     ah, [ecx-1DA4E05Dh]
                push    edi
                xor     ah, cl
                popa
                cmp     dword ptr [edx-62h], 46h ; 'F'
                dec     eax
                in      al, 69h
                dec     ebx
                iret
; ---------------------------------------------------------------------------
                or      al, 6
                jns     short near ptr loc_D7+3
                shl     byte ptr [esi], 42h
                repne adc [ebx+2Ch], eax
                icebp
                cmpsd
                leave
                push    esi
                jmp     short loc_A2
; ---------------------------------------------------------------------------
                and     eax, 0F2E41FE9h
                push    esi
                loop    loc_14F
                add     ah, fs:[edx]

loc_12D:                                ; CODE XREF: seg000:00000169
                mov     dh, 0F7h
                add     [ebx+7B61D47Eh], esp
                mov     edi, 79F19525h
                rcl     byte ptr [eax+22015F55h], cl
                cli
                sub     al, 0D2h ; 'T'
                dec     eax
                mov     ds:0A81406F5h, eax
                sbb     eax, 0A7AA179Ah
                in      eax, dx

loc_14F:                                ; CODE XREF: seg000:00000128
                and     [ebx-4CDFAC74h], ah
                pop     ecx
                push    esi
                mov     bl, 2Dh ; '-'
                in      eax, 2Ch
                stosd
                inc     edi
                push    esp

locret_15E:                             ; CODE XREF: seg000:loc_1A0
                retn    0C432h
; ---------------------------------------------------------------------------
                and     al, 86h
                cwde
                and     al, 8Fh
                cmp     ebp, [ebp+7]
                jz      short loc_12D
                sub     bh, ch
                or      dword ptr [edi-7Bh], 8A16C0F7h
                db      65h
                insd
                mov     al, ds:0A3A5173Dh
                dec     ecx
                push    ds
                xor     al, cl
                jg      short loc_195
                push    6Eh ; 'n'
                out     0DDh, al
                inc     edi
                sub     eax, 6899BBF1h
                leave
                rcr     dword ptr [ecx-69h], cl
                sbb     ch, [edi+5EDDCB54h]

loc_195:                                ; CODE XREF: seg000:0000017F
                push    es
                repne sub ah, [eax-105FF22Dh]
                cmc
                and     ch, al

loc_1A0:                                ; CODE XREF: seg000:00000217
                jnp     short near ptr locret_15E+1
                or      ch, [eax-66h]
                add     [edi+edx-35h], esi
                out     dx, al
                db      2Eh
                call    far ptr 1AAh:6832F5DDh
                jz      short near ptr loc_1DA+1
                sbb     esp, [edi+2CB02CEFh]
                xchg    eax, edi
                xor     [ebx-766342ABh], edx

loc_1C1:                                ; CODE XREF: seg000:00000212
                cmp     eax, 1BE9080h
                add     [ecx], edi
                aad     0
                imul    esp, [edx-70h], 0A8990126h
                or      dword ptr [edx+10C33693h], 4Bh
                popf

loc_1DA:                                ; CODE XREF: seg000:000001B2
                mov     ecx, cs
                aaa
                mov     al, 39h ; '9'
                adc     byte ptr [eax-77F7F1C5h], 0C7h
                add     [ecx], bl
                retn    0DD42h
; ---------------------------------------------------------------------------
                db      3Eh
                mov     fs:[edi], edi
                and     [ebx-24h], esp
                db      64h
                xchg    eax, ebp
                push    cs
                adc     eax, [edi+36h]
                mov     bh, 0C7h
                sub     eax, 0A710CBE7h
                xchg    eax, ecx
                or      eax, 51836E42h
                xchg    eax, ebx
                inc     ecx
                jb      short near ptr loc_21E+3
                db      64h
                xchg    eax, esp
                and     dh, [eax-31h]
                mov     ch, 13h
                add     ebx, edx
                jnb     short loc_1C1
                db      65h
                adc     al, 0C5h
                js      short loc_1A0
                sbb     eax, 887F5BEEh

loc_21E:                                ; CODE XREF: seg000:00000207
                mov     eax, 888E1FD6h
                mov     bl, 90h
                cmp     [eax], ecx
                rep int 61h             ; reserved for user interrupt
                and     edx, [esi-7EB5C9EAh]
                fisttp  qword ptr [eax+esi*4+38F9BA6h]
                jmp     short loc_27C
; ---------------------------------------------------------------------------
                fadd    st, st(2)
                db      3Eh
                mov     edx, 54C03172h
                retn
; ---------------------------------------------------------------------------
                db      64h
                pop     ds
                xchg    eax, esi
                rcr     ebx, cl
                cmp     [di+2Eh], ebx
                repne xor [di-19h], dh
                insd
                adc     dl, [eax-0C4579F7h]
                push    ss
                xor     [ecx+edx*4+65h], ecx
                mov     cl, [ecx+ebx-32E8AC51h]
                or      [ebx], ebp
                cmpsb
                lodsb
                iret
