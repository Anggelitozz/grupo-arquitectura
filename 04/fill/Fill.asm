// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

//Put your code here:

@8192
D=A
@max
M=D

(BEGIN)
@0
D=A
@iteration
M=D

(LOOP)
//Incrementar iteración
@iteration
M=M+1

//Resetear
D=M
@max
D=M-D
@BEGIN
D;JEQ


//Leer el teclado
@KBD
D=M
@DRAWBLACK
D;JNE// Pinta en negro los pixeles si una tecla es presionada

  //Pintar pixeles blancos
  @iteration
  D=M
  @SCREEN
  A=A+D
  M=0
  @LOOP
  0;JMP //VOLVER AL PRINCIPIO

  (DRAWBLACK)
  @iteration
  D=M
  @SCREEN
  A=A+D
  M=-1
  @LOOP
  0;JMP

