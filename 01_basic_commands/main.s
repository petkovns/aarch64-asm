// first.s
.text
 
.globl main
 
main:
    add w0, w0, #2
     
    mov x0, #0                // x0 ← 0
    mov x1, #0x1234           // x0 ← 0x1234
    add x2, x0, x1, sxtw #1   // x2 ← x0 + (ExtendSigned16To64(x1) << 1)
                            // this sets x2 to 0x2468

    ret

