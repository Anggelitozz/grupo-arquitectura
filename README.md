# PROYECTO-01
En el proyecto se podrá encontrar la implementación en Nand2Tetris de las siguientes compuertas lógicas.

<h1>Funcion NOT</h1>
<img style="height:150px" src="./diagramas/not">
<p>Su función principal es invertir una señal de entrada binaria, cambia un 1 en un 0 y viceversa.</p>

<h1>Funcion OR</h1>
<img style="height:150px" src="./diagramas/or.png">
<p>Esta función tiene al menos dos entradas y una sola salida, se puede decir que funciona como una suma. La tabla de verdad de una compuerta OR muestra cómo se comporta en función de las entradas:</p>
<ul>
  <li>Si al menos una de las entradas es 1, la salida es 1</li>
  <li>Solo si todas las entradas son 0, la salida es 0</li>
</ul>

<h1>Funcion MUX</h1>
<img style="height:150px" src="./diagramas/MUX.png">
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
<img style="height:400px" src="./diagramas/MUX4WAY16.png">
<p>Esta Función toma 4 arrays de 16 entradas cada uno, recibe dos selectores, concantenado la salida de dos compuertas MUX16 unidas al selector 1 a una MUX16 unida al selector 2 de tal manera que:
</p>
<ul>
  <li>Si en el primer selector recibe 0 y el segundo 0 el array de 16 salidas sera igual al array de 16 de entradas de a</li>
  <li>Si en el primer selector recibe 0 y el segundo 1 el array de 16 salidas sera igual al array de 16 de entradas de b</li>
  <li>Si en el primer selector recibe 1 y el segundo 0 el array de 16 salidas sera igual al array de 16 de entradas de c</li>
  <li>Si en el primer selector recibe 1 y el segundo 1 el array de 16 salidas sera igual al array de 16 de entradas de d</li>
</ul>
<h1>Funcion MUX8WAY16</h1>
<img style="height:400px" src="./diagramas/MUX8WAY16.png">
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
