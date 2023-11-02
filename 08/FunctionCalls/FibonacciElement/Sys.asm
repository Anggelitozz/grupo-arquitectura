
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
