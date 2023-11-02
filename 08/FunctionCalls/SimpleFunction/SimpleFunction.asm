(SimpleFunction.test) // function SimpleFunction.test 2
	@SP
	AM=M+1
	A=A-1
	M=0
	@SP
	AM=M+1
	A=A-1
	M=0

	@LCL // push local 0
	D=M
	@0
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@LCL // push local 1
	D=M
	@1
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

	@SP // not
	A=M
	A=A-1
	M=!M

	@ARG // push argument 0
	D=M
	@0
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

	@ARG // push argument 1
	D=M
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

	@LCL // return
	D=M
	@R13
	M=D
	@R13
	D=M
	@5
	A=D-A
	D=M
	@R14
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@R13
	D=M
	@1
	A=D-A
	D=M
	@THAT
	M=D
	@R13
	D=M
	@2
	A=D-A
	D=M
	@THIS
	M=D
	@R13
	D=M
	@3
	A=D-A
	D=M
	@ARG
	M=D
	@R13
	D=M
	@4
	A=D-A
	D=M
	@LCL
	M=D
	@R14
	A=M
	0;JMP

(END) // END loop
	@END
	0;JMP

