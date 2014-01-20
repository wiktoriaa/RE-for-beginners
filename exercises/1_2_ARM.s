        PUSH     {r4,lr}
        MOV      r4,r0
        BL       __rt_ctype_table
        LDR      r2,[r0,#0]
|L0.16|
        LDR      r0,[r4,#0]
        LDRB     r0,[r2,r0]
        TST      r0,#1
        ADDNE    r4,r4,#4
        BNE      |L0.16|
        LDRB     r1,[r4,#0]
        MOV      r0,#0
        CMP      r1,#0x2b
        CMPNE    r1,#0x2d
        ADDEQ    r4,r4,#4
        B        |L0.76|
|L0.60|
        ADD      r0,r0,r0,LSL #2
        ADD      r0,r3,r0,LSL #1
        SUB      r0,r0,#0x30
        ADD      r4,r4,#4
|L0.76|
        LDR      r3,[r4,#0]
        LDRB     r12,[r2,r3]
        CMP      r12,#0x20
        BEQ      |L0.60|
        CMP      r1,#0x2d
        RSBEQ    r0,r0,#0
        POP      {r4,pc}
