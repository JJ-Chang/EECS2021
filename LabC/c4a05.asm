s0:DC "Stores inputted integer in\niputted memory address.\0"
s1:DC "integer:\0"
s2:DC "memory address:\0"

addi x5,x0,s0
ecall x0,x5,4 ;print info

loop:addi x5,x0,s1
ecall x1,x5,4 ;prompt int
ecall x6,x0,5 ;get int

addi x5,x0,s2
ecall x1,x5,4 ;prompt memory location
ecall x7,x0,5 ;get memory location

add x7,x0,x6 ;store int in x7 (cannot figure out how to use user specified memory address)
beq x0,x0,loop