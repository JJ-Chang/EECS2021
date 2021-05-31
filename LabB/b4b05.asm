src:	DD -1,55,-3,7,0
	add x6,x0,x0
	ld x7,src(x6)
	addi x5,x7,0
	beq x5,x0,end
loop:	bge x7,x5,skip
	addi x7,x5,0
skip:	addi x6,x6,8
	ld x5,src(x6)
	bne x5,x0,loop
end:	addi x5,x7,0
	ebreak x0,x0,0