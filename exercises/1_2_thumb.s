        PUSH     {r4-r6,lr}
        MOVS     r4,r0
        BL       __rt_ctype_table
        LDR      r2,[r0,#0]
        B        |L0.14|
|L0.12|
        ADDS     r4,r4,#4
|L0.14|
        LDR      r0,[r4,#0]
        LDRB     r0,[r2,r0]
        LSLS     r0,r0,#31
        BNE      |L0.12|
        LDRB     r1,[r4,#0]
        CMP      r1,#0x2b
        BEQ      |L0.32|
        CMP      r1,#0x2d
        BNE      |L0.34|
|L0.32|
        ADDS     r4,r4,#4
|L0.34|
        MOVS     r0,#0
        B        |L0.48|
|L0.38|
        MOVS     r5,#0xa
        MULS     r0,r5,r0
        ADDS     r4,r4,#4
        SUBS     r0,r0,#0x30
        ADDS     r0,r3,r0
|L0.48|
        LDR      r3,[r4,#0]
        LDRB     r5,[r2,r3]
        CMP      r5,#0x20
        BEQ      |L0.38|
        CMP      r1,#0x2d
        BNE      |L0.62|
        RSBS     r0,r0,#0
|L0.62|
        POP      {r4-r6,pc}
