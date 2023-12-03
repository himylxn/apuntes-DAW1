# Apuntes Contornos

## ``Qué es un algoritmo``

Un algoritmo es un conjunto de instrucciones que permiten resolver un problema.

## ``Software``

Conjunto de programas, instrucciones y reglas informáticas para ejecutar ciertas tareas de un ordenador.

- ``Soporte físico``
- ``Soporte lógico``
- ``Equipo Humano``

## ``Lenguaje de programación``

Un lenguaje de programación sirve para comunicarse con el ordenador (conjunto de símbolos y palabras).

## ``Tipos de Lenguajes``

### ``Lenguajes de Marcas``
Un lenguaje de marcas es un conjunto de instrucciones que se usa para decirle al ordenador cómo organizar y mostrar la información.
- ``HTML``
- ``XML``

### ``Lenguajes de Especificación``

Describen de forma precisa.

- ``CSS``

### ``Lenguaje de Consulta``

Sacar/Manipular información.

- ``SQL``

### ``Lenguajes de Transformación``

Actúan sobre información inicial para obtener una nueva.

## ``Clasificación de los lenguajes de programación``

### ``Proximidad del hardware``

- ``Bajo nivel``
  - Binario, hexadecimal
  - Máquina, ensamblador
  
Dentro del bajo nivel está el lenguaje máquina y el lenguaje ensamblador.

- ``Lenguaje Máquina:``
  - No necesita traducción, reconocido directamente por el procesador.

- ``Lenguaje Ensamblador:``
  - Utiliza etiquetas para facilitar la escritura y lectura. Necesita traducción a lenguaje máquina.

- ``Alto nivel``
  - Cerca del humano 
  - Traducción
  - ``Python``, ``Java``

Intentan parecerse al lenguaje humano para facilitar la lectura y escritura. Necesitan traducción a lenguaje máquina.

### Forma de Traducción

El codigo fuente es el conjunto de intrucciones por humanos que forma un programa de software.

Esye codigo fuente se tiene que traducir a codigo máquina. Para llevar a cabo la traducción del codigo fuente se utilizan los compiladores y/o interpretes.

### Lenguaje COMPILADA

Estos lenguajes disponen de un compilador o programa que traduce el codigo fuente a codigo máquina.

- **``Compila antes de ejecutar``**

### Lenguaje INTERPRETADA

Estos lenguajes necesitan de un interprete o programa en memoria para que en tiempo de ejecución se vaya traduciendo el codigo fuente a lenguaje máquina.

- **``Interpreta línea por línea durante la ejecución.``**
  
### Lenguaje de Maquina Virtual

Este tipo de lenguaje usa una "máquina virtual" para ejecutar un código intermedio generado desde el código fuente. En lugar de traducir directamente a código máquina, se ejecuta en un entorno controlado por la máquina virtual, permitiendo portabilidad entre sistemas operativos y arquitecturas. 

- **``Usa una "máquina virtual" para ejecutar el código, permitiendo portabilidad. Ejemplo: Java.``**




## Diagrama de clases

La conferencia puede tener varias sesiones. Una sesión posee fecha y hora de inicio, pertenece solo a una conferencia y no tiene razón de ser sin una conferencia.

**``Nota``**: Los atributos fecha/hora se pueden poner de tipo string, pero también podemos presuponer que habrá el formato Date/Hour en el lenguaje que utilicemos, por lo que podemos poner el tipo de atributo de esa clase.

Los participantes en una sesión pueden ser oradores o público.

**``Nota``**: Herencia; relación de generalización desde las clases orador/público a la clase Participante. Todos ellos tienen que inscribirse en la conferencia. Puede cancelarse o confirmarse una inscripción.

**``Nota``**: lo hacemos con métodos pero podría hacerse con una clase 
intermedia "Inscripción" que relacionase Sesión con Participante.

Uno o más artículos científicos se presentan en una sesión. Cada artículo puede ser corto o largo y trata de un tema determinado. Un autor puede tener uno o varios artículos presentados en la conferencia. Coloca los atributos que te parezcan convenientes.

![](./img/Diagrama1.PNG)
