(Sys.init) // function Sys.init 0

	@R3 // pop pointer 0
	D=M
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

	@5000 // push constant 5000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@R4 // pop pointer 1
	D=M
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

	@return_address // call Sys.main 0
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

	@R6 // pop temp 1
	D=M
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

(LOOP) // label LOOP

	@LOOP// goto LOOP
	0;JMP

(Sys.main) // function Sys.main 5
	@SP
	AM=M+1
	A=A-1
	M=0
	@SP
	AM=M+1
	A=A-1
	M=0
	@SP
	AM=M+1
	A=A-1
	M=0
	@SP
	AM=M+1
	A=A-1
	M=0
	@SP
	AM=M+1
	A=A-1
	M=0

	@4001 // push constant 4001
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@R3 // pop pointer 0
	D=M
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

	@5001 // push constant 5001
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@R4 // pop pointer 1
	D=M
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

	@200 // push constant 200
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@LCL // pop local 1
	D=M
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

	@40 // push constant 40
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@LCL // pop local 2
	D=M
	@2
	D=D+A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

	@6 // push constant 6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@LCL // pop local 3
	D=M
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

	@123 // push constant 123
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@return_address // call Sys.add12 1
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
	@1
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

	@R5 // pop temp 0
	D=M
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

	@LCL // push local 2
	D=M
	@2
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@LCL // push local 3
	D=M
	@3
	A=D+A
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@LCL // push local 4
	D=M
	@4
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

	@SP // add
	AM=M-1
	D=M
	A=A-1
	M=D+M

	@SP // add
	AM=M-1
	D=M
	A=A-1
	M=D+M

	@SP // add
	AM=M-1
	D=M
	A=A-1
	M=D+M

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

(Sys.add12) // function Sys.add12 0

	@4002 // push constant 4002
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@R3 // pop pointer 0
	D=M
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

	@5002 // push constant 5002
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

	@R4 // pop pointer 1
	D=M
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

	@12 // push constant 12
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

