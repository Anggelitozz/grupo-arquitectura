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

	@0 // push constant 0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@1 // push constant 1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

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

	@2 // push constant 2
	D=A
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

(MAIN_LOOP_START) // label MAIN_LOOP_START

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

(COMPUTE_ELEMENT) // label COMPUTE_ELEMENT

	@THAT // push that 0
	D=M
	@0
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@THAT // push that 1
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

	@R4 // push pointer 1
	D=A
	@1
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@1 // push constant 1
	D=A
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

	@1 // push constant 1
	D=A
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

	@MAIN_LOOP_START// goto MAIN_LOOP_START
	0;JMP

(END_PROGRAM) // label END_PROGRAM

(END) // END loop
	@END
	0;JMP

