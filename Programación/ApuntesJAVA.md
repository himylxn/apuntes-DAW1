# Programación JAVA

## Variables y Constantes

 - Una "*`variable`*" es un nombre que se asocia con una porción de la memoria del ordenador
  - Un claro ejemplo del uso de "*`variables`*" es en matemáticas, donde un valor "x" puede tener infinita cantidad de valores asignados, por ejemplo x=5
   - Las "*`constantes`*" son valores que se mantienen siempre de igual manera y que no dependen de una asignación para obtener el mismo. Por ejemplo el valor del IVA (21%)
<br>
<br>

   ## Tipos de variables

   - Entero -> "*`int`*"
   - Entero Largo -> "*`long`*"
   - Decimales -> "*`double`*" y "*`float`*"
   - Booleanos -> "*`boolean`*"
   - Caracteres -> "*`char`*"
   - Cadena de Caracteres/Texto -> "*`String`*"

<br>
<br>

   ## Operadores

   Un operador es un símbolo especial que indica al compilador que debe efectuar una determinada operación

   Estas operciones pueden ser de aignación, aritmeticas, condicionales, relacionales, entre otras.

   Por ejemplo:

   - ### Aritmeticas -> Sirve para calcular
        - Sumar -> "`+`"
        - Restar -> "`-`"
        - Multiplicar -> "`*`"
        - Dividir -> "`/`"
		- Resto -> "`%`" (Da el resto de una división)

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
        - Comparar -> "`==`"
        - Mayor, Menor -> "`>` , `<`"
        - Mayor igual, Menor igual-> "`>=` , `<=`"
        - Distinto -> "`!=`"


   - ### Condicionales -> 
        - `AND` ("esto y esto" para hacer una comparación) -> "`&&`"
        -  `OR` ("esto o esto")-> "`||`"
        - `NOT` (Negar o hacer que algo que era verdadero pase a falso)-> "`!`"


<br>
<br>
<br>


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

<br>
<br>
<br>


## Condicional "SWITCH"

La estructura "`Switch`" permite múltiples caminos a partir de la evaluación de una sola expresión/condición.

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

```java
// Definimos el paquete en el que se encuentra nuestra clase
package fuckPruebas;

// Importamos la utilidad Scanner para poder leer la entrada del usuario
import java.util.Scanner;

// Definimos la clase principal
public class Ejercicio1 {

    // Método principal
    public static void main(String[] args) {

        // Declaración de variables
        double sueldo = 0; // Variable para almacenar el sueldo
        int categoria; // Variable para almacenar el tipo de categoría

        // Mensaje para que el usuario ingrese el tipo de categoría
        System.out.println("Ingrese el tipo de categoria que desea calcular el sueldo: ");

        // Utilizamos Scanner para leer la entrada del usuario
        Scanner teclado = new Scanner(System.in);
        categoria = teclado.nextInt(); // Almacenamos la categoría ingresada por el usuario

        // Estructura condicional para calcular el sueldo según la categoría
        if (categoria == 1) {
            // Si la categoría es 1, calculamos el sueldo con un aumento del 10%
            sueldo = 15890 + (15890 * 0.10);
        } else {
            if (categoria == 2) {
                // Si la categoría es 2, asignamos un sueldo específico
                sueldo = 25630.89;
            } else {
                if (categoria == 3) {
                    // Si la categoría es 3, calculamos el sueldo con una deducción del 11%
                    sueldo = 35560.20 - (35560.20 * 0.11);
                } else {
                    // Si la categoría no es 1, 2 ni 3, mostramos un mensaje de error
                    System.out.println("Debe ingresar un numero valido");
                }
            }
        }

        // Mostramos el resultado del sueldo solo si la categoría es 1, 2 o 3
        if (categoria == 1 || categoria == 2 || categoria == 3) {
            System.out.println("El total del sueldo para la categoria seleccionada " + categoria + " es igual a: " + sueldo);
        }

    }
}


```

# Notas Detalladas sobre el Ejercicio

## Estructura Básica del Programa
- La clase `Ejercicio1` está definida en el paquete `fuckPruebas`.
- Importa la clase `Scanner` para leer la entrada del usuario.

## Declaración de Variables
- `sueldo`: Variable de tipo `double` para almacenar el salario.
- `categoria`: Variable de tipo `int` para almacenar el tipo de categoría.

## Entrada del Usuario
- Se utiliza un objeto `Scanner` para leer la entrada del usuario.
- El usuario ingresa el tipo de categoría que desea calcular.

## Cálculo del Sueldo según la Categoría
- Utiliza una estructura condicional `if-else` anidada para determinar el salario.
- Si la categoría es 1, se calcula el sueldo con un aumento del 10%.
- Si la categoría es 2, se asigna un sueldo específico.
- Si la categoría es 3, se calcula el sueldo con una deducción del 11%.
- Si la categoría no es 1, 2 ni 3, se imprime un mensaje de error.

## Salida del Resultado
- Se verifica si la categoría es 1, 2 o 3 antes de imprimir el resultado.
- Si es una categoría válida, se muestra el salario calculado.

<br>
<br>
<br>


# Operadores Ternarios

**EL `operador ternario` es una herramienta en JAVA para tomar `decisiones simples` en `una sola linea de código`.**

Permite `tomar decisiones` basadas en una condicion y `asignar un valor` a una variable o expresion en función si la condicion es `verdadera` o `falsa`.


 ```java
 variable = (condicion) ? valor_si_verdadero : valor_si_falso;
 ```
- condicion: Expresión booleana que se evalúa.
- valor_si_verdadero: Valor asignado a la variable si la condición es verdadera.
- valor_si_falso: Valor asignado a la variable si la condición es falsa.

 ```java
 int edad = 20;
String mensaje = (edad >= 18) ? "Eres mayor de edad" : "Eres menor de edad";
System.out.println(mensaje);
 ```

 En este caso:

- Si la condición (edad >= 18) es verdadera, se asigna el valor "Eres mayor de edad" a la variable mensaje.
- Si la condición es falsa, se asigna el valor "Eres menor de edad".

El operador ternario es una herramienta poderosa y concisa para expresar decisiones simples en una sola línea de código. Su uso mejora la legibilidad y es particularmente útil cuando se necesita asignar un valor a una variable basado en una condición única.

# Ejercicio Java con Operador Ternario

## Descripción del Código

El siguiente código Java utiliza el operador ternario para determinar la condición final de un alumno en base a su promedio general.

```java
// Importamos la clase Scanner para poder recibir entrada del usuario
import java.util.Scanner;

// Definimos la clase OperadorTernario
public class OperadorTernario {
    // Método principal (punto de entrada del programa)
    public static void main(String[] args) {
        // Declaramos variables para almacenar el promedio y la condición final
        double promedio;
        String condicionFinal;
        
        // Creamos una instancia de la clase Scanner para leer la entrada del usuario
        Scanner teclado = new Scanner(System.in);
        
        // Solicitamos al usuario que ingrese el promedio general del alumno
        System.out.println("Ingrese el promedio general del alumno: ");
        // Leemos el valor ingresado y lo asignamos a la variable 'promedio'
        promedio = teclado.nextDouble();
        
        // Usamos el operador ternario para determinar la condición final
        // Si el promedio es mayor o igual a 6, se aprueba; de lo contrario, se desaprueba
        condicionFinal = (promedio >= 6) ? "Aprobado" : "Desaprobado";
        
        // Mostramos el resultado al usuario
        System.out.println("La condición final es: " + condicionFinal);
        
        // Cerramos el Scanner para evitar posibles fugas de recursos
        teclado.close();
    }
}
```
# Explicación

1. **Importación de Scanner:** Se importa la clase `Scanner` para permitir la entrada de datos por parte del usuario.

2. **Definición de la Clase y Método Principal:** Se define la clase `OperadorTernario` y el método principal `main`, que es el punto de entrada del programa.

3. **Declaración de Variables:** Se declaran las variables `promedio` para almacenar la calificación del alumno y `condicionFinal` para almacenar la condición resultante (Aprobado/Desaprobado).

4. **Instanciación de Scanner:** Se crea una instancia de la clase `Scanner` llamada `teclado` para leer la entrada del usuario.

5. **Solicitud de Promedio al Usuario:** Se muestra un mensaje solicitando al usuario que ingrese el promedio del alumno.

6. **Lectura del Promedio:** Se lee el valor ingresado por el usuario y se asigna a la variable `promedio`.

7. **Operador Ternario:** Se utiliza el operador ternario para determinar la condición final. Si el promedio es mayor o igual a 6, la condición es "Aprobado"; de lo contrario, es "Desaprobado".

8. **Impresión del Resultado:** Se muestra el resultado al usuario mediante la impresión en la consola.

9. **Cierre de Scanner:** Se cierra la instancia de `Scanner` para evitar posibles problemas de recursos.

Este ejercicio demuestra cómo utilizar el operador ternario en Java para tomar decisiones de manera concisa en una aplicación simple que evalúa el estado de aprobación de un alumno según su promedio.

<br>
<br>
<br>


# Bucle While

El bucle `while` permite ejecutar un bloque de código de manera repetitiva "mientras" se cumpla una determinada condición. Es importante destacar algunos puntos clave:

1. **Evaluación de la Condición:**
   - La condición se evalúa siempre al inicio del ciclo/bucle.
   - Si la condición es verdadera, el programa ingresa al bucle y ejecuta el código dentro de él.

2. **Ejecución del Código:**
   - El bloque de código dentro del bucle se ejecuta mientras la condición sea verdadera.

3. **Actualización de la Condición:**
   - Después de ejecutar el bloque de código, la condición se vuelve a evaluar.
   - Si la condición sigue siendo verdadera, el bucle vuelve a ejecutar el código. Si es falsa, el programa sale del bucle y continúa con el resto del programa.

Este flujo de evaluación de condición, ejecución de código y actualización de condición se repite hasta que la condición del bucle ya no sea verdadera.

El bucle `while` es útil cuando no se conoce de antemano cuántas veces se debe repetir un bloque de código y se quiere que la repetición continúe mientras se cumpla una condición específica.

```java
package fuckPruebas;

public class While {

    public static void main(String[] args) {
        // Inicializamos un contador en 0
        int contador = 0;

        // Utilizamos un bucle while para repetir el bloque de código mientras el contador sea menor o igual a 10
        while (contador <= 10) {
            // Imprimimos un mensaje indicando la vuelta actual del bucle
            System.out.println("Estoy en la vuelta " + contador);

            // Actualizamos el contador incrementándolo en 1 para avanzar a la siguiente vuelta del bucle
            contador = contador + 1;
        }

        // Una vez que el bucle while ha terminado (cuando el contador supera 10), el programa continúa aquí.
    }
}

```

## Ejercicios Practicos

### Imprime, usando while, los números del 0 al 10
```java
package fuckPruebas;

public class While {

    public static void main(String[] args) {
        // Inicializamos una variable llamada 'num' con el valor 0
        int num = 0;

        // Utilizamos un bucle while para repetir un bloque de código mientras la condición sea verdadera
        while (num <= 10) {
            // Imprimimos un mensaje que incluye el valor actual de 'num'
            System.out.println("Num: " + num);

            // Incrementamos 'num' en 1 para avanzar al siguiente valor en la siguiente iteración del bucle
            num++;
        }

    }
}
```

### Imprime, usando while, los números pares que se encuentran entre 0 y 10.

```java
package fuckPruebas;

public class While {

    public static void main(String[] args) {
        // Inicializamos una variable llamada 'num' con el valor 0.
        int num = 0;

        // Utilizamos un bucle while para iterar mientras 'num' sea menor o igual a 10.
        while (num <= 10) {
            // Verificamos si 'num' es un número par. (es par si el resto es 0)
            if (num % 2 == 0) {
                // Si 'num' es par, imprimimos un mensaje indicándolo.
                System.out.println("Número par: " + num);
            }

            // Incrementamos 'num' en 1 para avanzar a la siguiente iteración del bucle.
            num++;
        }

    }
}

```


