do_filp_open    proc near
...
                push    ebp
                mov     ebp, esp
                push    edi
                push    esi
                push    ebx
                mov     ebx, ecx
                add     ebx, 1
                sub     esp, 98h
                mov     esi, [ebp+arg_4] ; acc_mode (5§ème§ argument)
                test    bl, 3
                mov     [ebp+var_80], eax ; dfd (1er argument)
                mov     [ebp+var_7C], edx ; pathname (2§ème§ argument)
                mov     [ebp+var_78], ecx ; open_flag (3§ème§ argument)
                jnz     short loc_C01EF684
                mov     ebx, ecx        ; ebx <- open_flag
