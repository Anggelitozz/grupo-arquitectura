(Sys.init) // function Sys.init 0

	@6 // push constant 6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@8 // push constant 8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@return_address // call Class1.set 2
	D=A
	@SP
	AM=M+1
	A=A-1
	M=D
	@LCL
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@ARG
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@THIS
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@THAT
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Class1.set
	0;JMP
(return_address)

	@23 // push constant 23
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@15 // push constant 15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@return_address // call Class2.set 2
	D=A
	@SP
	AM=M+1
	A=A-1
	M=D
	@LCL
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@ARG
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@THIS
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@THAT
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@funcName
	0;JMP
(return_address)

	@return_address // call Class1.get 0
	D=A
	@SP
	AM=M+1
	A=A-1
	M=D
	@LCL
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@ARG
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@THIS
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@THAT
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@funcName
	0;JMP
(return_address)

	@return_address // call Class2.get 0
	D=A
	@SP
	AM=M+1
	A=A-1
	M=D
	@LCL
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@ARG
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@THIS
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@THAT
	D=M
	@SP
	AM=M+1
	A=A-1
	M=D
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@funcName
	0;JMP
(return_address)

(WHILE) // label WHILE

	@WHILE// goto WHILE
	0;JMP

(END) // END loop
	@END
	0;JMP

(Class1.set) // function Class1.set 0

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

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

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

	@0 // push constant 0
	D=A
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

(Class1.get) // function Class1.get 0

	@16 // push static 0
	D=A
	@0
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

(Class2.set) // function Class2.set 0

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

	@16 // pop static 0
	D=A
	@0
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

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

	@0 // push constant 0
	D=A
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

(Class2.get) // function Class2.get 0

	@16 // push static 0
	D=A
	@0
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



