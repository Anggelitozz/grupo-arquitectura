(Sys.init) // function Sys.init 0

	@4 // push constant 4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

(WHILE) // label WHILE

(END) // END loop
	@END
	0;JMP

(Main.fibonacci) // function Main.fibonacci 0

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

	@SP // if-goto IF_TRUE
	AM=M-1
	D=M
	@IF_TRUE
	D;JNE

	@IF_FALSE// goto IF_FALSE
	0;JMP

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
