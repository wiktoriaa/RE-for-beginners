f PROC
        PUSH     {r4-r6,lr}
        MOVS     r4,r0
        MOVS     r5,r0
        B        |L0.50|
|L0.8|
        MOVS     r1,r0
        SUBS     r1,r1,#0x61
        CMP      r1,#0x19
        BHI      |L0.28|
        SUBS     r0,r0,#0x54
        MOVS     r1,#0x1a
        BL       __aeabi_idivmod
        ADDS     r1,r1,#0x61
        B        |L0.46|
|L0.28|
        MOVS     r1,r0
        SUBS     r1,r1,#0x41
        CMP      r1,#0x19
        BHI      |L0.48|
        SUBS     r0,r0,#0x34
        MOVS     r1,#0x1a
        BL       __aeabi_idivmod
        ADDS     r1,r1,#0x41
|L0.46|
        STRB     r1,[r4,#0]
|L0.48|
        ADDS     r4,r4,#1
|L0.50|
        LDRB     r0,[r4,#0]
        CMP      r0,#0
        BNE      |L0.8|
        MOVS     r0,r5
        POP      {r4-r6,pc}
        ENDP
