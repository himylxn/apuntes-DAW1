# Programación JAVA

## Variables y Constantes

 - ### Una "*variable*" es un nombre que se asocia con una porción de la memoria del ordenador
  - ### Un claro ejemplo del uso de "*variables*" es en matemáticas, donde un valor "x" puede tener infinita cantidad de valores asignados, por ejemplo x=5
   - ### Las "*constantes*" son valores que se mantienen siempre de igual manera y que no dependen de una asignación para obtener el mismo. Por ejemplo el valor del IVA (21%)


   ## Tipos de variables

   - Entero -> "*int*"
        - Entero Largo -> "*long*"
   - Decimales -> "*double*" y "*float*"
   - Booleanos -> "*boolean*"
   - Caracteres -> "*char*"
   - Cadena de Caracteres/Texto -> "*String*"

   ## Operadores

   Un operador es un símbolo especial que indica al compilador que debe efectuar una determinada operación

   Estas operciones pueden ser de aignación, aritmeticas, condicionales, relacionales, entre otras.

   Por ejemplo:

   - ### Aritmeticas -> Sirve para calcular
        - Sumar -> "+"
        - Restar -> "-"
        - Multiplicar -> "*"
        - Dividir -> "/"

### Practica

``` java
        int num1 = 4;
		int num2 = 2;
		
		int resultadoSuma = num1 + num2;
		int resultadoResta = num1 - num2;
		int resultadoMultiplicacion = num1 * num2;
		int resultadoDivisión = num1 / num2;

		
		
		//Suma
		System.out.println("El resultado de la suma es de: " + resultadoSuma);
		
		//Resta
		System.out.println("El resultado de la resta es de: " + resultadoResta);
		
		//Multiplicación
		System.out.println("El resultado de la multiplicación es de: " + resultadoMultiplicacion);
		
		//División
		System.out.println("El resultado de la division es de: " + resultadoDivisión);
```
### Resultado

```java
El resultado de la suma es de: 6
El resultado de la resta es de: 2
El resultado de la multiplicación es de: 8
El resultado de la division es de: 2
```
   - ### Relacionales -> Sirve para comparar o relacionar
        - Comparar -> "=="
        - Mayor, Menor -> "> , <"
        - Mayor igual, Menor igual-> ">= , <="
        - Distinto -> "!="


   - ### Condicionales -> 
        - AND ("esto y esto" para hacer una comparación) -> "&&"
        -  OR ("esto o esto")-> "||"
        - NOT (Negar o hacer que algo que era verdadero pase a falso)-> "!"


## Condicional IF (Si)        

Se utiliza para tomar decisiones.

Ejemplo:

- Si tengo dinero, puedo comprarme un coche

### Ejemplo practico

Queremos saber que numero es mas grande y en tal caso que nos mande un mensaje.

``` java
    //Declaro los numeros con variables
		int num1 = 10;
		int num2 = 1;
		
    //Dentro de los parentesis va la condición
        if (num1 > num2) {
			
			System.out.println("num1 es mayor que num2");
		}
```
#### Resultado:
```java
num1 es mayor que num2
```

### Para complementar el "IF" se usa el "ELSE"

El "else" nos permite los contrario que if, si no se cumple tal accion.

Ejemplo:

- Si tengo dinero, puedo comprarme un coche si "no" pues tengo que seguir caminando

### Ejemplo practico

Vamos a complementar el ejercicio anterior

```java
//Declaro los numeros con variables
		int num1 = 10;
		int num2 = 20;
		
		//Dentro de los parentesis va la condición
		if (num1 > num2) {
			
			System.out.println("num1 es mayor que num2");
		}else {
			System.out.println("num2 es mayor que num1");
		}	
```
#### Resultado:
```java
num2 es mayor que num1
```

### Condicionales Multiples IF|ELSE + IF|ELSE

Ahora se empieza a complicar, ahora ya s epuede tener varias condiciones.

Consiste en realizar una primera evaluación de una condición, si esta no se cumple, por el lado del else se plantea una nueva condición y así sucesivamente la cantidad de veces que sean necesarias.

### Ejemplo practico

Vamos a modificar el ejercicio anterior:

### Practica
```java
//Declaro los numeros con variables
		int num1 = 10;
		int num2 = 10;
		
		//Dentro de los parentesis va la condición
		if (num1 > num2) {
			
			System.out.println("num1 es mayor que num2");
		}else {
			
			if (num1 == num2) {
				System.out.println("son iguales");
			}
			
			else {
				System.out.println("num2 es mayor que num1");
			}
			
		}

```

### Resultado
```java
son iguales
```

## Condicional "SWITCH"

La estructura "Switch" permite múltiples caminos a partir de la evaluación de una sola expresión/condición.

Vamos a ver un ejemplo practico para que se entienda mejor:

### Practica

```java
//va a ser para interpretar el dia de la semana (dia de ejemplo 1 (Lunes))
		
		//Numero del dia de la semana
		int dia = 1;
		
		//Variable auxiliar que sirve para guardar el nombre del dia de la semana
		String nombreDia;
		
		
		switch (dia) {
			
			case 1: nombreDia="Lunes";
			break; //brake sirve para que en el momento que encuentre la correcta deje de buscar, sirve para ahorrar recursos
			case 2: nombreDia="Martes";
			break;
			case 3: nombreDia="Miercoles";
			break;
			case 4: nombreDia="Jueves";
			break;
			case 5: nombreDia="Viernes";
			break;
			case 6: nombreDia="Sabado";
			break;
			case 7: nombreDia="Domingo";
			break;
			
			default: nombreDia = "Número de dia invalido"; //Default sirve para que en caso de que no se ponga un numero de 1 al 7 se ponga ese mensje por defecto
		}
		
		System.out.println("El dia que seleccionaste es: " + nombreDia);
```
### Resultado
```java
El dia que seleccionaste es: Lunes
```

## Ejercicio practico (para repasar lo aprepndido hasta ahora)

Una pequeña despensa desea calcular los sueldos de sus empleados. Los puestos de los mismos pueden tener 3 categorias: Repositor, Cajero, Supervisor.

- Los repositores cobran 15.890 + un bono del 10%
- Los cajeros cobran 25.630,89 fijos
- Los supervisores cobran 35.560,20 en bruto al cual se les descuenta un 11% de jubilación.

Se necesita un programa que, dependiendo del tipo de empleado del que se trate, calcule y muestre en pantalla el correspondiente sueldo.



