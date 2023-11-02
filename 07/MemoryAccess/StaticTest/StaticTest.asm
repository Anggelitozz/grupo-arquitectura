	@111 // push constant 111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@333 // push constant 333
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@888 // push constant 888
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@16 // pop static 8
	D=A
	@8
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@16 // pop static 3
	D=A
	@3
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@16 // pop static 1
	D=A
	@1
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@16 // push static 3
	D=A
	@3
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@16 // push static 1
	D=A
	@1
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // sub
	AM=M-1
	D=M
	A=A-1
	M=M-D

	@16 // push static 8
	D=A
	@8
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@SP // add
	AM=M-1
	D=M
	A=A-1
	M=D+M

(END) // END loop
	@END
	0;JMP

