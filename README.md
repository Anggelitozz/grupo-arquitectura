# PROYECTO-03: Lógica Secuencial

# PROYECTO-02: Lógica Aritmética
<h1>ALU</h1>
<img style="height:400px" src="./02/diagramas/ALU.png">
ALU funciona de manera condicional sobre ambas entradas X y Y ambas de 16 bits si se niegan o simplemente cero,
hay un selector que decide sobre la suma o el AND de ambos resultados y finalmente para mirar si el resultado es
cero se hacen operaciones or anidadas de todas las posiciones del resultado y  se coge el ultimo bit para mirar el
signo de esta operación.

# PROYECTO-01: Lógica Booleana
En el proyecto que presentamos a continuación, se llevará a cabo la implementación de una serie de compuertas lógicas utilizando la plataforma Nand2Tetris. Estas compuertas lógicas son componentes fundamentales de la electrónica digital y la informática, desempeñando un papel crucial en la construcción de circuitos y sistemas digitales. A través de este trabajo, exploraremos la creación y funcionalidad de estas compuertas, demostrando cómo pueden combinarse para realizar operaciones lógicas más complejas.

<h1>Funcion NOT</h1>
<img style="height:150px" src="./01/diagramas/not">
<p>Su función principal es invertir una señal de entrada binaria, cambia un 1 en un 0 y viceversa.</p>

<h1>Funcion OR</h1>
<img style="height:150px" src="./01/diagramas/or.png">
<p>Esta función tiene al menos dos entradas y una sola salida, se conoce como la compuerta suma. La tabla de verdad de una compuerta OR muestra cómo se comporta en función de las entradas:</p>
<ul>
  <li>Si al menos una de las entradas es 1, la salida es 1</li>
  <li>Solo si todas las entradas son 0, la salida es 0</li>
</ul>

<h1>Funcion AND</h1>
<img style="height:150px" src="./01/diagramas/and.png">
<p>Esta función presenta dos entradas y una sola salida, su funcionamiento es similar a una multiplicación de entradas. La tabla de verdad de una compuerta AND muestra cómo se comporta en función de las entradas:</p>
<ul>
  <li>La salida es 1 solo si todas las entradas son 1</li>
  <li>Si alguna de las entradas es 0, la salida es 0</li>
</ul>

<h1>Funcion XOR</h1>
<img style="height:150px" src="./01/diagramas/xor.png">
<p>Esta función presenta dos entradas y una sola salida, también llamado OR exclusivo. La tabla de verdad de una compuerta XOR muestra cómo se comporta en función de las entradas:</p>
<ul>
  <li>La salida es 1 cuando un número impar de entradas son 1</li>
  <li>Si el número de entradas 1 es par, la salida es 0</li>
</ul>

<h1>Funcion MUX</h1>
<img style="height:150px" src="./01/diagramas/MUX.png">
<p>Esta función multiplexor toma de salida a si el selector es 0 o  toma la entrada b si el selector es 1,
  entonces se utilizan una nand de dos nands que una tiene a y el selector negado y la otra una nand que
  tiene b y el selector
</p>
<h1>Funcion MUX16</h1>
<img style="height:150px" src="./diagramas/MUX16.png">
<p>Esta Función toma un array de 16 entradas de a y b donde al evaluar
  la función MUX retorna un array de 16 salidas, dependiendo si el selector es 0 el array de la
  salida es igual al array de entradas a si entonces el selector es 1 el array de salidas es igual
  al array de entradas b
</p>
<h1>Funcion MUX4WAY16</h1>
<img style="height:400px" src="./01/diagramas/MUX4WAY16.png">
<p>Esta Función toma 4 arrays de 16 entradas cada uno, recibe dos selectores, concantenado la salida de dos compuertas MUX16 unidas al selector 1 a una MUX16 unida al selector 2 de tal manera que:
</p>
<ul>
  <li>Si en el primer selector recibe 0 y el segundo 0 el array de 16 salidas sera igual al array de 16 de entradas de a</li>
  <li>Si en el primer selector recibe 0 y el segundo 1 el array de 16 salidas sera igual al array de 16 de entradas de b</li>
  <li>Si en el primer selector recibe 1 y el segundo 0 el array de 16 salidas sera igual al array de 16 de entradas de c</li>
  <li>Si en el primer selector recibe 1 y el segundo 1 el array de 16 salidas sera igual al array de 16 de entradas de d</li>
</ul>
<h1>Funcion MUX8WAY16</h1>
<img style="height:400px" src="./01/diagramas/MUX8WAY16.png">
<p>Esta Función toma 8 arrays de 16 entradas cada uno, recibe tres selectores, concantenado la salida de dos compuertas MUX4WAY16 unidas al selector 1y2 a una MUX16 unida al selector 3 de tal manera que:
</p>
<ul>
  <li>Si en el primer selector recibe 0 , el segundo 0 y el tercero 0 el array de 16 salidas sera igual al array de 16 de entradas de a</li>
  <li>Si en el primer selector recibe 0 , el segundo 0 y el tercero 1 el array de 16 salidas sera igual al array de 16 de entradas de b</li>
  <li>Si en el primer selector recibe 0 , el segundo 1 y el tercero 0 el array de 16 salidas sera igual al array de 16 de entradas de c</li>
  <li>Si en el primer selector recibe 0 , el segundo 1 y el tercero 1 el array de 16 salidas sera igual al array de 16 de entradas de d</li>
  <li>Si en el primer selector recibe 1 , el segundo 0 y el tercero 0 el array de 16 salidas sera igual al array de 16 de entradas de e</li>
  <li>Si en el primer selector recibe 1 , el segundo 0 y el tercero 1 el array de 16 salidas sera igual al array de 16 de entradas de f</li>
  <li>Si en el primer selector recibe 1, el segundo 1 y el tercero 0 el array de 16 salidas sera igual al array de 16 de entradas de g</li>
  <li>Si en el primer selector recibe 1 , el segundo 1 y el tercero 1 el array de 16 salidas sera igual al array de 16 de entradas de h</li>
</ul>

<h1>Funcion DMUX</h1>
<img style="height:150px" src="./01/diagramas/DMUX.png">
<p>Para la creación del Demultiplexor(DMUX) se emplean 5 NANDs o 2 NANDs y una NOT, tiene 1 entrada y s1 que es una señal de control y dos salidas
</p>
<h1>Funcion DMUX4WAY</h1>
<img style="height:400px" src="./01/diagramas/DMUX4WAY.png">
<p>Para el demultiplexor de 4 vías se usan 3 demultiplexores, tiene 1 entrada, dos señales de control y 4 salidas
</ul>
<h1>Funcion DMUX8WAY</h1>
<img style="height:400px" src="./01/diagramas/DMUX8WAY.png">
Para el demultiplexor de 4 vías se usan 3 demultiplexores, tiene 1 entrada, 3 señales de control y 8 salidas
<h1>NOT16</h1>
<img style="height:400px" src="./01/diagramas/NOT16.png">
<p>La función de una compuerta Not16 es invertir lógicamente cada uno de los 16 bits de entrada. En otras palabras, toma una entrada de 16 bits y produce una salida de 16 bits donde cada bit de salida es el complemento del bit de entrada correspondiente.
</p>

  
<h1>OR16</h1>
<img style="height:400px" src="./01/diagramas/OR16.png">
<p>La función de una compuerta Or16 es realizar una operación lógica OR en paralelo en cada uno de los 16 bits de entrada. En otras palabras, toma dos entradas de 16 bits (a y b) y produce una salida de 16 bits (out), donde cada bit de salida es el resultado de la operación lógica OR aplicada a los bits correspondientes de a y b.
</p>


<h1>OR8WAY</h1>
<img style="height:400px" src="./01/diagramas/OR8WAY.png">
<p>La función de una compuerta Or8Way es realizar una operación lógica OR en ocho bits de entrada de manera que la salida sea 1 si al menos uno de los bits de entrada es 1, y 0 si todos los bits de entrada son 0. En otras palabras, Or8Way toma ocho entradas y produce una sola salida, donde la salida será 1 si al menos una de las entradas es 1, y 0 solo si todas las entradas son 0.
</p>

  
<h1>AND16</h1>
<img style="height:400px" src="./01/diagramas/AND16.png">
<p>La función de una compuerta And16 es realizar una operación lógica AND en paralelo en cada uno de los 16 bits de entrada. En otras palabras, toma dos entradas de 16 bits (a y b) y produce una salida de 16 bits (out), donde cada bit de salida es el resultado de la operación lógica AND aplicada a los bits correspondientes de a y b.
</p>

