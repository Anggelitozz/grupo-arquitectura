## PRESENTACIÓN DEL PROYECTO FINAL: https://youtu.be/c74frafsAAk
# PRACTICA 01
## PROYECTO-01: Lógica Booleana
En el proyecto que presentamos a continuación, se llevará a cabo la implementación de una serie de compuertas lógicas utilizando la plataforma Nand2Tetris. Estas compuertas lógicas son componentes fundamentales de la electrónica digital y la informática, desempeñando un papel crucial en la construcción de circuitos y sistemas digitales. A través de este trabajo, exploraremos la creación y funcionalidad de estas compuertas, demostrando cómo pueden combinarse para realizar operaciones lógicas más complejas.

### Funcion NOT
<img style="height:150px" src="./01/diagramas/not">
<p>Su función principal es invertir una señal de entrada binaria, cambia un 1 en un 0 y viceversa.</p>

### Funcion OR
<img style="height:150px" src="./01/diagramas/or.png">
<p>Esta función tiene al menos dos entradas y una sola salida, se conoce como la compuerta suma. La tabla de verdad de una compuerta OR muestra cómo se comporta en función de las entradas:</p>
<ul>
  <li>Si al menos una de las entradas es 1, la salida es 1</li>
  <li>Solo si todas las entradas son 0, la salida es 0</li>
</ul>

### Funcion AND
<img style="height:150px" src="./01/diagramas/and.png">
<p>Esta función presenta dos entradas y una sola salida, su funcionamiento es similar a una multiplicación de entradas. La tabla de verdad de una compuerta AND muestra cómo se comporta en función de las entradas:</p>
<ul>
  <li>La salida es 1 solo si todas las entradas son 1</li>
  <li>Si alguna de las entradas es 0, la salida es 0</li>
</ul>

### Funcion XOR
<img style="height:150px" src="./01/diagramas/xor.png">
<p>Esta función presenta dos entradas y una sola salida, también llamado OR exclusivo. La tabla de verdad de una compuerta XOR muestra cómo se comporta en función de las entradas:</p>
<ul>
  <li>La salida es 1 cuando un número impar de entradas son 1</li>
  <li>Si el número de entradas 1 es par, la salida es 0</li>
</ul>

### Funcion MUX
<img style="height:150px" src="./01/diagramas/MUX.png">
<p>Esta función multiplexor toma de salida a si el selector es 0 o  toma la entrada b si el selector es 1,
  entonces se utilizan una nand de dos nands que una tiene a y el selector negado y la otra una nand que
  tiene b y el selector
</p>

### Funcion MUX16
<img style="height:150px" src="./diagramas/MUX16.png">
<p>Esta Función toma un array de 16 entradas de a y b donde al evaluar
  la función MUX retorna un array de 16 salidas, dependiendo si el selector es 0 el array de la
  salida es igual al array de entradas a si entonces el selector es 1 el array de salidas es igual
  al array de entradas b
</p>

### Funcion MUX4WAY16
<img style="height:400px" src="./01/diagramas/MUX4WAY16.png">
<p>Esta Función toma 4 arrays de 16 entradas cada uno, recibe dos selectores, concantenado la salida de dos compuertas MUX16 unidas al selector 1 a una MUX16 unida al selector 2 de tal manera que:
</p>
<ul>
  <li>Si en el primer selector recibe 0 y el segundo 0 el array de 16 salidas sera igual al array de 16 de entradas de a</li>
  <li>Si en el primer selector recibe 0 y el segundo 1 el array de 16 salidas sera igual al array de 16 de entradas de b</li>
  <li>Si en el primer selector recibe 1 y el segundo 0 el array de 16 salidas sera igual al array de 16 de entradas de c</li>
  <li>Si en el primer selector recibe 1 y el segundo 1 el array de 16 salidas sera igual al array de 16 de entradas de d</li>
</ul>

### Funcion MUX8WAY16
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

### Funcion DMUX
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

### NOT16
<img style="height:400px" src="./01/diagramas/NOT16.png">
<p>La función de una compuerta Not16 es invertir lógicamente cada uno de los 16 bits de entrada. En otras palabras, toma una entrada de 16 bits y produce una salida de 16 bits donde cada bit de salida es el complemento del bit de entrada correspondiente.
</p>

  
### OR16
<img style="height:400px" src="./01/diagramas/OR16.png">
<p>La función de una compuerta Or16 es realizar una operación lógica OR en paralelo en cada uno de los 16 bits de entrada. En otras palabras, toma dos entradas de 16 bits (a y b) y produce una salida de 16 bits (out), donde cada bit de salida es el resultado de la operación lógica OR aplicada a los bits correspondientes de a y b.
</p>


### OR8WAY
<img style="height:400px" src="./01/diagramas/OR8WAY.png">
<p>La función de una compuerta Or8Way es realizar una operación lógica OR en ocho bits de entrada de manera que la salida sea 1 si al menos uno de los bits de entrada es 1, y 0 si todos los bits de entrada son 0. En otras palabras, Or8Way toma ocho entradas y produce una sola salida, donde la salida será 1 si al menos una de las entradas es 1, y 0 solo si todas las entradas son 0.
</p>

  
### AND16
<img style="height:400px" src="./01/diagramas/AND16.png">
<p>La función de una compuerta And16 es realizar una operación lógica AND en paralelo en cada uno de los 16 bits de entrada. En otras palabras, toma dos entradas de 16 bits (a y b) y produce una salida de 16 bits (out), donde cada bit de salida es el resultado de la operación lógica AND aplicada a los bits correspondientes de a y b.
</p>

## PROYECTO-02: Lógica Aritmética
### HalfAdder
<img style="height:100px" src="./02/diagramas/HalfAdder.png">
HalfAdder se utiliza para realizar la suma binaria de dos números binarios de un solo bit. Tiene dos entradas, A y B, y dos salidas, SUM y CARRY. La salida SUM es el bit menos significativo (LSB) del resultado, mientras que la salida CARRY es el bit más significativo (MSB) del resultado, indicando si hubo un acarreo en la suma de las dos entradas. La compuerta se implementó utilizando las compuertas XOR y AND.

### FullAdder
<img style="height:200px" src="./02/diagramas/Fulladder.png">
Full Adder se utiliza para sumar tres bits de entrada y producir dos bits de salida. Las dos entradas estándar son A y B, mientras que la tercera entrada es el acarreo de entrada (CARRY_IN). La salida SUM es el resultado de la suma de los tres bits de entrada, mientras que la salida CARRY_OUT indica si hubo un acarreo en la suma. La compuerta se implementó utilizando las compuertas XOR, AND y OR.

### Add16
<img style="height:100px" src="./02/diagramas/Add16.png">
El Add16 realiza la suma de dos números binarios de 16 bits. Está compuesto por una serie de FullAdders y HalfAdders interconectados, utiliza estos componentes para realizar la suma bit a bit de los números de entrada.

### Inc16
<img style="height:250px" src="./02/diagramas/Inc16.jpeg">
El Inc16 incrementa en uno un número binario de 16 bits. Esencialmente, el Inc16 es una versión modificada del Add16, se utiliza este para realizar la suma de entrada y luego agrega un bit adicional para manejar el acarreo.

### ALU
<img style="height:400px" src="./02/diagramas/ALU.png">
ALU funciona de manera condicional sobre ambas entradas X y Y ambas de 16 bits si se niegan o simplemente cero,
hay un selector que decide sobre la suma o el AND de ambos resultados y finalmente para mirar si el resultado es
cero se hacen operaciones or anidadas de todas las posiciones del resultado y  se coge el ultimo bit para mirar el
signo de esta operación.

# PRACTICA 02
<h2>¿Cuál es el objetivo de cada uno de esos proyectos con sus palabras y describa que debe hacer para desarrollarlo?</h2>
<p>En la lógica aritmética se evidencian las funciones básicas del computador al ejecutar operaciones de suma y resta de las entradas 
desde un punto de vista bit a bit, toda la lógica para realizar operaciones matematicas y lógicas se encuentra en la ALU.
Mientras que en la lógica secuencial nos muestra como el computador almacena sus valores en memoria, y como es posible cambiar y consultar estos valores.</p>
<h2>Explique las principales diferencias entre la lógica aritmética y la lógica secuencial</h2>
<p>La principal diferencia se basa en la realimentación que existe en sus compuertas para guardar valores en memoria para posteriores operaciones,
mientras que en la lógica aritmética las entrada de una compuerta depende de la salidas de otra.
</p>
****

## PROYECTO-03: Lógica Secuencial
### DFF
<img style="height:150px" src="./03/Diagramas IMG/FlipFlop.jpeg">
<p>Esta función almacena y controlar el flujo de datos binarios. Es un elemento fundamental en la construcción de registros, contadores y otros componentes de circuitos secuenciales.</p>
<p>Funcionamiento:</p>
<ul>
  <li>Entrada de Datos (D): El D Flip-Flop tiene una entrada llamada "D" (Data) que se utiliza para ingresar el dato que se desea almacenar. Esta entrada puede ser 0 o 1, representando los valores lógicos binarios.

  <li>Reloj (Clock): También tiene una entrada llamada "Clock" que controla cuándo se debe leer el valor presente en la entrada D y cargarlo en el Flip-Flop. El Flip-Flop almacena el valor de D solo en los flancos del 
   reloj (flanco ascendente o descendente, dependiendo del tipo de DFF).

  <li>Salida (Q): El D Flip-Flop tiene una salida llamada "Q" que representa el valor almacenado en ese momento. La salida Q refleja el valor de la entrada D solo cuando ocurre un flanco de reloj.

  <li>Salida Inversa (Q'): Algunos D Flip-Flops también tienen una salida inversa, denotada como "Q'", que es la negación de la salida Q. Esto significa que Q' siempre es el complemento lógico de Q.

  <li>Set y Reset (S y R): Algunos D Flip-Flops también incluyen entradas de "Set" y "Reset" para permitir el borrado o establecimiento del valor almacenado. Cuando la entrada Set (S) se activa, la salida Q se establece 
  en 1. Cuando la entrada Reset (R) se activa, la salida Q se borra a 0.
</ul>

### BIT
<img style="height:150px" src="./03/Diagramas IMG/bit.jpg">
<p>es la unidad más pequeña de información en sistemas digitales y computación. Un bit puede tener uno de dos valores posibles: 0 o 1.</p>
<p>Los bits se utilizan en operaciones lógicas como AND, OR, NOT y XOR. Estas operaciones permiten realizar cálculos y tomar decisiones basadas en condiciones lógicas. Por ejemplo:</p>
<ul>
  
  <li>La operación AND entre dos bits solo es igual a 1 si ambos bits son 1; de lo contrario, el resultado es 0.

  <li>La operación OR entre dos bits es igual a 1 si al menos uno de los bits es 1; si ambos son 0, el resultado es 0.
</ul>

### Register
<img style="height:150px" src="./03/Diagramas IMG/register.png">
<p>se utiliza para almacenar y manipular datos de 16 bits. Un registro es un conjunto de elementos de almacenamiento de datos que pueden almacenar información temporalmente y permitir su procesamiento. En el caso de un registro de 16 bits, puede almacenar valores binarios de 16 dígitos (0s y 1s). </p>

<p>Funcionamiento:</p>

<ul>
  
 <li>Estructura: Un registro de 16 bits está compuesto por 16 elementos de almacenamiento, conocidos como flip-flops o biestables, que pueden almacenar un valor binario (0 o 1) cada uno. Cada flip-flop representa un bit 
     individual en el registro.

 <li>Entrada de Datos: Los registros de 16 bits pueden tener una entrada de datos (o múltiples entradas) que permite cargar un valor de 16 bits en el registro. Los datos se ingresan en formato binario.

 <li>Lectura y Escritura: Puedes leer el valor almacenado en el registro de 16 bits desde su salida. También es posible escribir nuevos valores en el registro al proporcionar datos en las entradas correspondientes.

 <li>Operaciones Aritméticas y Lógicas: Los registros de 16 bits son componentes comunes en la aritmética digital y las operaciones lógicas. Se utilizan para realizar sumas, restas, multiplicaciones, divisiones y otras 
 operaciones matemáticas en números de 16 bits. También se pueden utilizar para operaciones lógicas como AND, OR, NOT, XOR, etc.

 <li>Desplazamiento de Bits: Los registros de 16 bits se pueden utilizar para realizar operaciones de desplazamiento de bits, que son útiles en aplicaciones como la manipulación de datos y la criptografía.

 <li>Almacenamiento Temporal: Estos registros son utilizados en aplicaciones donde se necesita almacenar datos temporalmente antes de su procesamiento o transferencia a otros componentes del sistema.

 <li>Conexión en Serie: A menudo, varios registros de 16 bits se pueden conectar en serie para formar registros más anchos, como registros de 32 bits o 64 bits. Esto se utiliza para manejar números más grandes y 
 realizar cálculos más complejos.

 <li>Control: Los registros de 16 bits pueden estar acompañados de circuitos de control que determinan cuándo se deben leer o escribir datos en el registro y cuándo se deben realizar operaciones específicas.
 </ul>

 ### RAM8
<img style="height:150px" src="./03/Diagramas IMG/ram8.png">
<p>es un tipo de memoria volátil utilizada en sistemas digitales para almacenar datos temporalmente. En este caso, la RAM tiene 8 registros de almacenamiento, y cada registro tiene una capacidad de 16 bits, lo que significa que cada uno puede almacenar una palabra de 16 bits de información.</p>

<p>Funcionamiento:</p>
<ul>
  
 <li>Estructura: Esta RAM tiene 8 registros de almacenamiento, numerados típicamente del 0 al 7, que se utilizan para almacenar datos de 16 bits cada uno. Cada registro se puede ver como una caja en la que se almacena 
 una palabra binaria de 16 bits.

 <li>Acceso Aleatorio: La característica clave de la memoria RAM es que permite el acceso aleatorio a cualquier registro. Esto significa que se puede leer o escribir en cualquiera de los 8 registros sin importar su 
 orden.Cada registro se identifica mediante una dirección única.

 <li>Lectura y Escritura: Puedes leer el valor almacenado en un registro específico al proporcionar su dirección y obtener los 16 bits de datos almacenados en ese registro. También puedes escribir nuevos datos en un 
 registro especificado de la misma manera.

 <li>Velocidad: La memoria RAM es conocida por su alta velocidad de acceso, lo que la hace adecuada para almacenar datos temporales utilizados por la CPU mientras se ejecutan programas. La velocidad de acceso de la RAM 
 permite que la CPU acceda rápidamente a los datos necesarios para realizar cálculos y ejecutar programas de manera eficiente.

 <li>Uso Común: Este tipo de RAM se utiliza en una variedad de aplicaciones, desde computadoras personales hasta sistemas embebidos, donde se necesita un almacenamiento temporal de datos para el procesamiento de 
 información.

 <li>Conexión a la CPU: La RAM se conecta a la unidad central de procesamiento (CPU) y actúa como un área de almacenamiento de trabajo donde la CPU puede leer y escribir datos rápidamente.

 <li>Capacidad Limitada: Aunque es rápida, la RAM generalmente tiene una capacidad limitada en comparación con otros tipos de almacenamiento, como los discos duros. Esto significa que solo puede almacenar datos mientras 
  la alimentación esté encendida y se borra cuando se apaga o reinicia el sistema.
</ul>

### RAM64
<p>es un tipo de memoria volátil utilizada para almacenar datos temporalmente. En este caso, la RAM tiene 64 registros de almacenamiento, y cada registro tiene una capacidad de 16 bits (se crea con 8 RAM8).</p>

<p>Funcionamiento:</p>
<ul>
  
 <li>Estructura: Esta RAM tiene 64 registros de almacenamiento, numerados típicamente del 0 al 63, que se utilizan para almacenar datos de 16 bits cada uno. Cada registro se puede ver como una caja en la que se almacena una palabra binaria de 16 bits.

 <li>Acceso Aleatorio: La característica clave de la memoria RAM es que permite el acceso aleatorio a cualquier registro. Esto significa que se puede leer o escribir en cualquiera de los 64 registros sin importar su orden. Cada registro se identifica mediante una dirección única.

 <li>Lectura y Escritura: Puedes leer el valor almacenado en un registro específico al proporcionar su dirección y obtener los 16 bits de datos almacenados en ese registro. También puedes escribir nuevos datos en un registro especificado de la misma manera.

 <li>Velocidad: La memoria RAM es conocida por su alta velocidad de acceso, lo que la hace adecuada para almacenar datos temporales utilizados por la CPU mientras se ejecutan programas. La velocidad de acceso de la RAM permite que la CPU acceda rápidamente a los datos necesarios para realizar cálculos y ejecutar programas de manera eficiente.

 <li>Uso Común: Este tipo de RAM se utiliza en una variedad de aplicaciones, desde computadoras personales hasta sistemas embebidos, donde se necesita un almacenamiento temporal de datos para el procesamiento de información.

 <li>Conexión a la CPU: La RAM se conecta a la unidad central de procesamiento (CPU) y actúa como un área de almacenamiento de trabajo donde la CPU puede leer y escribir datos rápidamente.

 <li>Capacidad Limitada: Aunque es rápida, la RAM generalmente tiene una capacidad limitada en comparación con otros tipos de almacenamiento, como los discos duros. Esto significa que solo puede almacenar datos mientras la alimentación esté encendida y se borra cuando se apaga o reinicia el sistema.
</ul>

### RAM512
<p>es un tipo de memoria volátil utilizada para almacenar datos temporalmente. En este caso, la RAM tiene 512 registros de almacenamiento, y cada registro tiene una capacidad de 16 bits (se crea con 8 ram64).</p>

<p>Funcionamiento:</p>
<ul>
  
 <li>Estructura: Esta RAM tiene 64 registros de almacenamiento, numerados típicamente del 0 al 511, que se utilizan para almacenar datos de 16 bits cada uno. Cada registro se puede ver como una caja en la que se almacena una palabra binaria de 16 bits.

 <li>Acceso Aleatorio: La característica clave de la memoria RAM es que permite el acceso aleatorio a cualquier registro. Esto significa que se puede leer o escribir en cualquiera de los 512 registros sin importar su orden. Cada registro se identifica mediante una dirección única.

 <li>Lectura y Escritura: Puedes leer el valor almacenado en un registro específico al proporcionar su dirección y obtener los 16 bits de datos almacenados en ese registro. También puedes escribir nuevos datos en un registro especificado de la misma manera.

 <li>Velocidad: La memoria RAM es conocida por su alta velocidad de acceso, lo que la hace adecuada para almacenar datos temporales utilizados por la CPU mientras se ejecutan programas. La velocidad de acceso de la RAM permite que la CPU acceda rápidamente a los datos necesarios para realizar cálculos y ejecutar programas de manera eficiente.

 <li>Uso Común: Este tipo de RAM se utiliza en una variedad de aplicaciones, desde computadoras personales hasta sistemas embebidos, donde se necesita un almacenamiento temporal de datos para el procesamiento de información.

 <li>Conexión a la CPU: La RAM se conecta a la unidad central de procesamiento (CPU) y actúa como un área de almacenamiento de trabajo donde la CPU puede leer y escribir datos rápidamente.

 <li>Capacidad Limitada: Aunque es rápida, la RAM generalmente tiene una capacidad limitada en comparación con otros tipos de almacenamiento, como los discos duros. Esto significa que solo puede almacenar datos mientras la alimentación esté encendida y se borra cuando se apaga o reinicia el sistema.
</ul> 

### RAM4k
<p>es un tipo de memoria volátil utilizada para almacenar datos temporalmente. En este caso, la RAM tiene 4096 registros de almacenamiento, y cada registro tiene una capacidad de 16 bits (se crea con 8 ram512).</p>

<p>Funcionamiento:</p>
<ul>
  
 <li>Estructura: Esta RAM tiene 64 registros de almacenamiento, numerados típicamente del 0 al 4095, que se utilizan para almacenar datos de 16 bits cada uno. Cada registro se puede ver como una caja en la que se almacena una palabra binaria de 16 bits.

 <li>Acceso Aleatorio: La característica clave de la memoria RAM es que permite el acceso aleatorio a cualquier registro. Esto significa que se puede leer o escribir en cualquiera de los 4096 registros sin importar su orden. Cada registro se identifica mediante una dirección única.

 <li>Lectura y Escritura: Puedes leer el valor almacenado en un registro específico al proporcionar su dirección y obtener los 16 bits de datos almacenados en ese registro. También puedes escribir nuevos datos en un registro especificado de la misma manera.

 <li>Velocidad: La memoria RAM es conocida por su alta velocidad de acceso, lo que la hace adecuada para almacenar datos temporales utilizados por la CPU mientras se ejecutan programas. La velocidad de acceso de la RAM permite que la CPU acceda rápidamente a los datos necesarios para realizar cálculos y ejecutar programas de manera eficiente.

 <li>Uso Común: Este tipo de RAM se utiliza en una variedad de aplicaciones, desde computadoras personales hasta sistemas embebidos, donde se necesita un almacenamiento temporal de datos para el procesamiento de información.

 <li>Conexión a la CPU: La RAM se conecta a la unidad central de procesamiento (CPU) y actúa como un área de almacenamiento de trabajo donde la CPU puede leer y escribir datos rápidamente.

 <li>Capacidad Limitada: Aunque es rápida, la RAM generalmente tiene una capacidad limitada en comparación con otros tipos de almacenamiento, como los discos duros. Esto significa que solo puede almacenar datos mientras la alimentación esté encendida y se borra cuando se apaga o reinicia el sistema.
</ul>

### RAM16k
<p>es un tipo de memoria volátil utilizada para almacenar datos temporalmente. En este caso, la RAM tiene 16384 registros de almacenamiento, y cada registro tiene una capacidad de 16 bits (se crea con 4 RAM4K).</p>

<p>Funcionamiento:</p>
<ul>
  
 <li>Estructura: Esta RAM tiene 64 registros de almacenamiento, numerados típicamente del 0 al 16384, que se utilizan para almacenar datos de 16 bits cada uno. Cada registro se puede ver como una caja en la que se almacena una palabra binaria de 16 bits.

 <li>Acceso Aleatorio: La característica clave de la memoria RAM es que permite el acceso aleatorio a cualquier registro. Esto significa que se puede leer o escribir en cualquiera de los 16384 registros sin importar su orden. Cada registro se identifica mediante una dirección única.

 <li>Lectura y Escritura: Puedes leer el valor almacenado en un registro específico al proporcionar su dirección y obtener los 16 bits de datos almacenados en ese registro. También puedes escribir nuevos datos en un registro especificado de la misma manera.

 <li>Velocidad: La memoria RAM es conocida por su alta velocidad de acceso, lo que la hace adecuada para almacenar datos temporales utilizados por la CPU mientras se ejecutan programas. La velocidad de acceso de la RAM permite que la CPU acceda rápidamente a los datos necesarios para realizar cálculos y ejecutar programas de manera eficiente.

 <li>Uso Común: Este tipo de RAM se utiliza en una variedad de aplicaciones, desde computadoras personales hasta sistemas embebidos, donde se necesita un almacenamiento temporal de datos para el procesamiento de información.

 <li>Conexión a la CPU: La RAM se conecta a la unidad central de procesamiento (CPU) y actúa como un área de almacenamiento de trabajo donde la CPU puede leer y escribir datos rápidamente.

 <li>Capacidad Limitada: Aunque es rápida, la RAM generalmente tiene una capacidad limitada en comparación con otros tipos de almacenamiento, como los discos duros. Esto significa que solo puede almacenar datos mientras la alimentación esté encendida y se borra cuando se apaga o reinicia el sistema.
</ul>

<img style="height:100px" src="./03/Diagramas IMG/RAM.png">
Cada RAM es una construcción de una cantidad específica de RAMs anterior


# PRACTICA 03
<h2>¿Por qué el lenguaje de máquina es importante para definir la arquitectura computacional?</h2>
<p>El lenguaje de máquina es relevante porque brinda un canal de comunicación directo, permitiendo la interacción entre el programador y la capa física, es decir el hardware subyacente. 
Es un pilar importante para la arquitectura computacional al ser un sistema de códigos que pueden ser interpretados por 
circuitos micro programables que se encargan de determinar cuáles son las acciones que deben de ser realizadas por una máquina. 
Para comprender este lenguaje de bajo nivel es necesario comprender a grandes rasgos el funcionamiento del hardware, 
con esto se es posible desarrollar sistemas operativos y compiladores que permitan interpretar al lenguaje máquina los lenguajes de alto nivel.
</p>

## Proyecto-04: Lenguaje de Máquina
### Mult.asm
<p>se refiere a un archivo que contiene código fuente escrito en lenguaje ensamblador para implementar una operación de multiplicación en una arquitectura de computadora específica. Este archivo suele ser parte de un proyecto o programa más grande que requiere realizar multiplicaciones.El contenido exacto de un archivo "mult.asm" variará según la arquitectura de la computadora para la que se esté escribiendo y los detalles de implementación específicos. El código ensamblador se utiliza para programar a nivel de bajo nivel y se traduce directamente en instrucciones de máquina que la CPU puede ejecutar. La implementación de la multiplicación en lenguaje ensamblador puede variar significativamente según la arquitectura del procesador y las convenciones de programación utilizadas.</p>

<p>Las entradas de este programa son los valores almacenados en R0
y R1 (RAM[0] y RAM[1]). El programa calcula el producto R0 * R1 y almacena el resultado en
R2 (RAM[2]). Suponga que R0 ≥ 0, R1 ≥ 0 y R0 * R1 < 32768 (su programa no necesita probar estos
condiciones). El script Multi.test y el archivo de comparación Mult.cmp suministrados están diseñados para probar su
programa sobre algunos valores representativos.</p>


### Fill.asm

<p>El archivo "fill.asm" generalmente se utiliza para llenar una región de memoria con un valor específico. Su propósito principal es inicializar o configurar una parte de la memoria con datos predeterminados antes de que un programa o sistema operativo comience a utilizarla.

En un programa en lenguaje ensamblador como el que proporcioné anteriormente, el archivo "fill.asm" contiene el código necesario para realizar esta tarea.</p>

<p>
  Este programa ejecuta un bucle infinito que escucha la
teclado. Cuando se presiona una tecla (cualquier tecla), el programa oscurece toda la pantalla escribiendo
"negro" en cada píxel. Cuando no se presiona ninguna tecla, el programa borra la pantalla escribiendo "blanco" en
cada píxel. Puede optar por oscurecer y borrar la pantalla en cualquier patrón espacial, siempre que
presionar una tecla continuamente durante el tiempo suficiente resultará en una pantalla completamente negra, y no presionar
cualquier tecla durante el tiempo suficiente dará como resultado una pantalla limpia. Este programa tiene un script de prueba (Fill.tst) pero no
comparar archivo: debe verificarse inspeccionando visiblemente la pantalla simulada en el emulador de CPU.
Escribirás estos programas ensambladores usando un editor de texto plano, los traducirás a Hack binario
código usando un ensamblador y ejecutarlos usando un emulador de CPU.
</p>

# PRACTICA 04
<h2>Teniendo en cuenta las características del ensamblador, ¿Cuál es la principal limitante que observan?</h2>
<p>Una limitante que observamos es que el ensamblador de Hack solo puede traducir programas escritos en el lenguaje ensamblador simbólico Hack, que es un lenguaje específico para la máquina Hack. Esto significa que no podemos usar el ensamblador para traducir programas escritos en otros lenguajes ensambladores más complejos, como el lenguaje ensamblador x86 o el lenguaje ensamblador ARM. Además, el ensamblador de Hack no tiene ninguna funcionalidad avanzada, como optimización de código, manejo de errores o generación de reportes. Estas limitaciones pueden dificultar el desarrollo y la depuración de programas más sofisticados o portables. </p>


## PROYECTO-05: Arquitectura de Computadores
### Memory
<p>Es un componente de hardware que se utiliza para almacenar datos y programas en una computadora. El chip consta de tres partes principales: RAM16K, Screen y Keyboard, La pantalla y el teclado están disponibles como chips integrados, por lo tanto, no es necesario implementarla. Para la elaboración de este chip es importante la utilización de el chip RAM16K eleborado en la práctica anterior, esto facilita la construcción de la función.
La RAM16K es un chip que se utiliza para almacenar datos en la memoria de acceso aleatorio (RAM) de la computadora, tiene una capacidad de 16384 palabras de 16 bits cada una, lo que equivale a 16 kilobytes de 
memoria. La pantalla es un dispositivo de salida que muestra información visual al usuario, mientras que el teclado es un dispositivo de entrada que permite al usuario ingresar datos en la computadora.</p>

### CPU
<p> Finalmente la CPU es la que recoje las intrucciones en Lenguaje máquina para poder hacer operaciones, por eso es que cada bit de la instrucción es un operador que la CPU interpreta bien sean
operaciones de la ALU, los operadores del Lenguaje de Ensamble como JEQ, JLE, JGT, JLT y como los registros A,D y M que son operandos dentro de la Ejecución de la CPU , guardando la respuesta en una dirección en Memoria del registro</p>

### Computer

<p> Tenemos los componentes básico para conformar una computadora que es una Memoria y una CPU, La memoria almacena en todas sus direcciones en memoria los registros de Lenguaje de Ensamble,
y carga los registros anteriores a la CPU que procesa las instrucciones despues que el ROM reciba las instrucciones en Lenguaje de Ensable para compilarlo en Instrucciones de Lenguaje de Máquina posteriormente
guarda el resultado en los registro de la Memoria para seguir procesando las intrucciones siguiente en Lenguaje de máquina</p>

## Proyecto-06: El ensamblador
<h2>Parte 1</h2>
<p> El ensamblador se divide en cuatro módulos y funciona en dos pasadas. En la primera pasada, se crea una tabla de símbolos para hacer un seguimiento de las etiquetas y asignar direcciones de memoria. En la segunda y tercera pasadas, se analizan las instrucciones, se traducen a códigos binarios y se almacenan en una cola. Luego, se realiza una tercera pasada para construir las instrucciones finales. Se utiliza C++ para la implementación debido a su orientación a objetos y la capacidad de utilizar la Biblioteca de Plantillas Estándar (STL), que incluye mapas y colas. El ensamblador convierte el código ensamblador legible por humanos en instrucciones binarias ejecutables por la máquina.</p>

<h2>Parte 2</h2>
<p> Se implementa la clase SymbolTable en C++ para el ensamblador del lenguaje de programación Hack. La clase SymbolTable se utiliza para mantener un seguimiento de las etiquetas y variables en el código ensamblador. El código se divide en varias funciones, como el constructor, destructor, addLabel, addVariable y lookupSymbol. Estas funciones permiten agregar etiquetas y variables al SymbolTable y buscar la dirección de memoria correspondiente. La implementación de la clase se presenta en el archivo de encabezado "symboltable.hpp".</p>

<h2>Parte 3</h2>
<p>se presenta un módulo de rompecabezas en el contexto de un programa de ensamblador. El objetivo principal es traducir instrucciones de ensamblaje a instrucciones binarias. Se menciona que, en este diseño, el código se integra como parte del analizador en lugar de estar en secciones separadas. Se muestra una instancia de la clase de rompecabezas y se explica que depende de la tabla de ejemplos. Esta tabla de ejemplos se incluye en la clase de rompecabezas, lo que permite el acceso a símbolos predefinidos. El programa utiliza tres diccionarios privados para realizar la traducción: uno para las instrucciones de cómputo, otro para las instrucciones de destino y un tercero para las instrucciones de salto. Se señala que las instrucciones de tipo A tienen un prefijo constante de cero, mientras que las de tipo C tienen un prefijo constante de uno.

explica la función "comp_entry," que convierte instrucciones legibles por humanos en secuencias binarias, y menciona que se puede definir un valor predeterminado si la instrucción no se encuentra en el diccionario. Se destaca que el programa maneja nuevas variables, agregándolas a la tabla de símbolos y asignándoles direcciones binarias de 15 bits si son desconocidas. Luego, se detalla cómo se procesan las instrucciones de tipo A y C, dividiéndolas en partes y buscando estas partes en los diccionarios para ensamblar la instrucción binaria final. Finalmente, se anuncia que este video es la primera parte y se adelanta que el próximo video cubrirá la última parte del ensamblador. En resumen, el video aborda cómo se realiza la traducción de instrucciones de ensamblaje a binario mediante un programa de ensamblador y cómo se configuran las tablas de referencia y se efectúan las conversiones.</p>

<h2>Parte 4</h2>
<p> Se implemento un módulo de ensamblaje de nivel superior en C++. El módulo toma como parámetros la fuente del código de ensamblaje y un archivo opcional de código de máquina de destino. Si no se especifica un archivo de destino, se utiliza el mismo nombre de archivo que el de ensamblaje, con la extensión ".asm" cambiada a ".hack". El proceso comienza con una comprobación de parámetros y luego procesa el código en dos pasadas: la primera para manejar etiquetas y la segunda para generar el código de máquina final. Durante la primera pasada, se eliminan los comentarios y espacios en blanco, y las líneas se almacenan en una cola. Las etiquetas se agregan a una tabla de símbolos. En la segunda pasada, se procesan las líneas, se genera el código de máquina y se almacena en un archivo de salida.Se copila y ejecuta el ensamblador, con opciones para especificar ubicación y nombre de archivo de salida personalizados. El enfoque en la eliminación de comentarios y espacios en blanco es esencial para el funcionamiento correcto del ensamblador. El video ofrece detalles técnicos sobre el proceso de ensamblaje y manipulación del código fuente en un proyecto de ensamblador.</p>

# PRACTICA 05
<p>Esta práctica presenta el desarrollo de dos proyectos del curso Nand to Tetris. El proyecto 7 se enfoca en la implementación de una máquina virtual que permite ejecutar programas escritos en un lenguaje de alto nivel llamado Jack. En cuanto al proyecto 8, este se ocupa del control computacional, es decir, de las estructuras de programación que permiten realizar saltos condicionales y bucles. En ambos proyectos se utiliza el stack aritmético, una estructura de datos que facilita la manipulación de valores numéricos y lógicos. El objetivo de estos proyectos es comprender los principios y mecanismos que subyacen a la ejecución de programas en una computadora real.</p>

<h2>¿Cuál cree que es el futuro de las máquinas virtuales?</h2>
<p>Las máquinas virtuales han evolucionado significativamente en los últimos años y se han convertido en una herramienta esencial para muchos desarrolladores y empresas. Permitiendo a los usuarios ejecutar múltiples sistemas operativos en un solo hardware, lo que puede ser muy útil para probar aplicaciones, ejecutar software antiguo o incluso mejorar la seguridad.
En cuanto al futuro de las máquinas virtuales, es difícil predecir con certeza cómo evolucionarán, es probable que se vuelvan más fáciles de usar y más accesibles para los usuarios comunes. Al ser utilizada por personas no especializadas de diferentes campos de conocimiento, es posible que se vea ampliado el panorama de funcionalidades y utilidades que se puedan implementar por medio de esta. </p>

<p>se propone implementar la API básica de un traductor de VM en dos etapas. Esto permitirá realizar pruebas unitarias incrementales de la implementación utilizando programas de prueba proporcionados. Cuando se menciona que el traductor de VM debe implementar un comando de VM, significa que debe traducir ese comando en una secuencia de comandos de ensamblaje Hack que realice la misma tarea. </p>

<p>Etapa I: Manejo de comandos aritméticos de pila
En esta etapa, se debe implementar la primera versión del traductor de VM básico, enfocándose en los comandos aritméticos y lógicos del lenguaje de VM. También se debe implementar el comando push constante x, que permite agregar un valor constante a la pila. Este comando es útil para probar la implementación de los comandos aritméticos/lógicos de VM. Por ejemplo, se puede probar la implementación del comando agregar VM utilizando los comandos push constante 3, push constante 5 y agregar. Los demás comandos aritméticos y lógicos se prueban de manera similar.</p>

<p>Etapa II: Manejo de comandos de acceso a memoria
En esta etapa, se debe implementar una versión completa del traductor de VM básico que maneje los comandos push y pop del lenguaje VM, abarcando los ocho segmentos de memoria descritos en el capítulo 7. Se sugiere dividir esta etapa en subetapas:</p>

<p>Se empieza manejando el segmento constante.
A continuación, se manejan los segmentos local, argumento, esto y aquello.
Luego, se manejan los segmentos de puntero y temporales, permitiendo en particular la modificación de las bases de los segmentos esto y aquello.
Finalmente, se maneja el segmento estático.</p>

# PRACTICA 06
<p>El proyecto 9 de Nand to Tetris se enfoca en la programación de alto nivel utilizando el lenguaje Jack. En este proyecto, se diseño e implementó aplicación en Jack, como un juego de computadora simple o algún otro programa interactivo, en nuestro caso un juego de la culebrita. El proyecto 9 también introduce al sistema operativo Jack, que es una colección de servicios de software que extienden las capacidades del lenguaje básico y cierran las brechas entre él y el hardware subyacente.</p>

<p>Los lenguajes de programación de alto nivel son aquellos que se diseñaron para ser fáciles de leer y escribir para los humanos. Por otro lado, un intérprete es un programa que lee y ejecuta código fuente escrito en un lenguaje de programación de alto nivel, mientras que un compilador es un programa que traduce el código fuente escrito en un lenguaje de programación de alto nivel a un lenguaje de bajo nivel, como el lenguaje de máquina. Los lenguajes de programación pueden ser interpretados o compilados. 
Los lenguajes de programación de alto nivel son más fáciles de leer y escribir para los humanos, mientras que los lenguajes de bajo nivel son más fáciles de leer y escribir para las computadoras. Los intérpretes traducen el código fuente línea por línea y lo ejecutan inmediatamente, mientras que los compiladores traducen todo el código fuente a la vez y generan un archivo ejecutable que se puede ejecutar en una computadora.</p>

<h2>¿Qué se debe considerar para proponer un nuevo y buen lenguaje de programación, teniendo en cuenta la arquitectura de computador completa?</h2>
<p>Es necesario considerar la arquitectura de la computadora completa, al diseñar un nuevo lenguaje de programación se hace indispensable tener en cuenta la arquitectura de la computadora con el fin de garantizar que el lenguaje sea compatible con la arquitectura subyacente. Que un lenguaje sea viable, debe ser compatible con el conjunto de instrucciones de la CPU, la memoria de la computadora y los dispositivos de entrada/salida. Además, debe ser eficiente para que el programa se ejecute de manera rápida y sin complicaciones. De lo contrario, dificilmente se consolidará como un lenguaje sólido entre las opciones ya existentes y será practico en los diferentes contextos en los cuales se pueda llegar a utilizar.</p>
