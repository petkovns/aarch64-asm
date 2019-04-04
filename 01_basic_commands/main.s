// main.s
// Assembler directive - now come instructions of the program, can be also .data - now comes the data directive
.text

// Assembler directive - main is global symbol, needed to start the program
.globl main

// Entry point of program
main:

// In aasm64 asm we have 32bit registers w0-w30 and 64bit registers x0-x30.
// In w0 is stored number of program arguments (argc) 

// Assign value, #0 is constant value integer (max 16bit), can be negative
// mov reg, #n (w0 = 0;)
    mov w0, #0
// Assign hex value
    mov w0, 0x1000

// Add value, reg3 can be constant #1
// add reg1, reg2, reg3 (reg1 = reg2 + reg3;) 
    add w0, w0, #1

// Multiplication values
// mul reg1, reg2, reg3 (reg1 = reg2 * reg3;)
    mul w0, w0, #2
// umull + smull for excess bits (32 bit)
// umullh + smullh (two 64 bit registers for 128 bit result)

// Division of values
// div reg1, reg2, reg3 (reg1 = reg2 / reg3;)
    div w0, w0, #2
// udiv + sdiv

// Bitwise operations
// NOT, mvn Rdest, Rsource (Rdest = ~Rsource;)
    mvn w0, w0
// AND, and Rdest, Rsource1, Rsource2  (Rdest = Rsource1 & Rsource2;)
    and w0, w0, #1
// OTHER BITWISE: OR = orr; EXCLUSIVE OR = eor, BIT CLEAR = bic, OR NOT = orn, EXCLUSIVE OR NOT = eon  

// Shifting
// Logical shift left (LSL), discard values bigger than register, add zeros to least significant n bits
// reg, LSL, #n (reg<<n), reg*2^n
    w0, LSL, #3
// Logical shift right (LSR)
    w0, LSR, #2
// Arithmetic shift right (ASR), values in register are not discarted in shift process, but transfer from highest to lowest
//  reg, ASR, #n
    w0, ASR, #3

// Extend value (Convert)
// uxtb - Unsigned byte (8 bit);      ExtendUnsigned8ToXX(reg)
// sxtb - Signed   byte (8 bit);      ExtendSigned8ToXX(reg)
    add x0, x1, w2, sxtb
    add w0, w1, w2, sxtb
// uxth - Unsigned half word (16 bit) ExtendUnsigned16ToXX(reg)
// sxth - Signed   half word (16 bit) ExtendSigned16ToXX(reg)
// uxtw - Unsigned word (32 bit)      ExtendUnsigned32ToXX(reg)
// sxtw - Signed   word (32 bit)      ExtendSigned32ToXX(reg)
    add x0, x1, w2, sxtw

// returns from main, finish program
    ret
