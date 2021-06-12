s0:DC "Calculates n!\0"
s1:DC "Enter n:\0"
s2:DC "!="

addi x5,x0,s0
ecall x0,x5,4 ;print info

addi x5,x0,s1
ecall x1,x5,4 ;prompt n
ecall x6,x0,5 ;get n

addi x1,x0,1
addi x7,x0,1
loop: mul x7,x7,x1
addi x1,x1,1
blt x1,x6,loop ;loop until reaching n
beq x1,x6,loop ;loop one more time if = n

ecall x0,x6,0 ;print n
addi x5,x0,s2
ecall x0,x5,4 ;print !=
ecall x0,x7,0 ;print result