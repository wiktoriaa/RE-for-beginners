f PROC
        PUSH     {r4-r6,lr}
        MOV      r4,r0
        MOV      r5,r0
        B        |L0.84|
|L0.16|
        SUB      r1,r0,#0x61
        CMP      r1,#0x19
        BHI      |L0.48|
        SUB      r0,r0,#0x54
        MOV      r1,#0x1a
        BL       __aeabi_idivmod
        ADD      r0,r1,#0x61
        B        |L0.76|
|L0.48|
        SUB      r1,r0,#0x41
        CMP      r1,#0x19
        BHI      |L0.80|
        SUB      r0,r0,#0x34
        MOV      r1,#0x1a
        BL       __aeabi_idivmod
        ADD      r0,r1,#0x41
|L0.76|
        STRB     r0,[r4,#0]
|L0.80|
        ADD      r4,r4,#1
|L0.84|
        LDRB     r0,[r4,#0]
        CMP      r0,#0
        MOVEQ    r0,r5
        BNE      |L0.16|
        POP      {r4-r6,pc}
        ENDP
