# Programacón 
Dylan Alves Pinto
# Programacion Orientada  a Objetos (POO / OOP)

### Se basa en el concepto de agrupar código y datos juntos dentro de una misma unidad llamada clase

## Caracteristicas

- #### Abstracción
- #### Encapsulamiento
- #### Polimorfismo
- #### Herencia
- #### UML

## Que son los atributos

### Son las caracteristicas de un objeto

```java
package POO;

public class Coche {
	
	int km; //Le asignamos el atributo km    
	String marca; //Le asignamos el atributo marca
	String modelo; //Le asignamos el atributo modelo

}
```

## Que son las clases

### Es una planntilla, o molde que permite contruir objetos. Por ejempo, si tuvieramos la clase Coche, ésta seria el plano para contruir el Objeto (En este caso uno o varios coches)

- #### Se esciben siempre empezando por MAYÚSCULA
- #### Representan entidades del mundo real
- #### Poseen atributos o metodos
- #### No pueden ser utilizadas directamente, si no medinte instancia a objetos 
- #### Ejemplos : Coche, Persona, Casa, Factura, Producto... etc

## Practica

### Creamos una clase llamada Alumno y le ponemos los atributos que queramos (así estariamos creando un molde para nuetro objeto)

```java
package POO;

public class Coche {

	 /* (public) modificador de acceso 
		(class) Palabra reservada 
		(Alumno) Nombre de la clase	 */
	
	int km; //Le asignamos el atributo km    
	String marca; //Le asignamos el atributo marca
	String modelo; //Le asignamos el atributo modelo

}
```

## Que son los métodos

### Los metodos son las cosas que el objeto puede hacer:

- #### Acelerar
- #### Frenar
- #### Cambiar Marcha

### Careacteristicas de los métodos

- #### Siempre los identificamos como verbos en infinitivo (Acelerar, Frenar)
- #### Pueden existir "*Procedimientos*" (no retornan un valor)
- #### O "*Funciones*" (retornan un valor)

## Practica

```java
package POO;

public class Alumno {

	 /* (public) modificador de acceso 
		(class) Palabra reservada 
		(Alumno) Nombre de la clase	 */
	
	//Atributos
	
	int id; //Le asignamos el atributo id 
	String nombre; //Le asignamos el atributo nombre
	String apellido; //Le asignamos el atributo apellido

	//Métodos
	// (void) se utiliza para aquellos metodos que indican un procedimiento (se realiza algo pero no voy a obtener un respuesta luego, si no que hago un acción y ya)
	
	//Metodo para mostrar nombre
	
	public void mostrarNombre() {
		System.out.println("Hola, soy un alumno y se decir mi nombre");
	}
	
	//Metodo para saber si el alumno está aprobado o no
	
	public void saberAprobado(double calificacion) {
		if (calificacion >= 5) {
			System.out.println("Aprobe la materia:)");
		}else {
			System.out.println("Jo suspendi:(");
		}
	}
}
```

## Que son los objetos?

- #### Un objeto es una "*instancia de una clase*" (crear un objeto de la clase)
- #### Es la representación de un objeto que generalmente existe en la vida real
- #### Posee un "*estado*" (de acuerdo a sus "*atributos*")
- #### Posee un "*comportamiento*" (realizan operacioes de acuerdo a sus "métodos")

## Métodos Constructores

### Sirven para crear objetos

- #### Son funciones especiales que contienen las clases para "*permitir la creación de objetos*" 
- #### Pueden recibir "*datos/parámetros*" como no (contructor vacío)
- #### Se llaman SIEMPRE igual que la clase

## Practica

#### *Para crear los constructores automaticamente se haria con el click izquierdo > Source > Generate Costructor*

### Clase Alumno
```java
package POO;

public class Alumno {

	 /* (public) modificador de acceso 
		(class) Palabra reservada 
		(Alumno) Nombre de la clase	 */
	
	//Atributos (son globales)
	
	int id; //Le asignamos el atributo id 
	String nombre; //Le asignamos el atributo nombre
	String apellido; //Le asignamos el atributo apellido

	//Métodos
	// (void) se utiliza para aquellos metodos que indican un procedimiento (se realiza algo pero no voy a obtener un respuesta luego, si no que hago un acción y ya)
	
	//Metodo para mostrar nombre
	
	public void mostrarNombre() {
		System.out.println("Hola, soy un alumno y se decir mi nombre");
	}
	
	//Metodo para saber si el alumno está aprobado o no
	
	public void saberAprobado(double calificacion) {
		if (calificacion >= 5) {
			System.out.println("Aprobe la materia:)");
		}else {
			System.out.println("Jo suspendi:(");
		}	
	}
	
	//Contructor Vacio 
	public Alumno() {
		
	}

	
	/* 
    - Contructor con parametros
	- Recibe parametros en los "()"
	- Si tienes variables que se llaman igual java los diferencia con la palabra reservada "this" que en español significa "ésta"
	- Vemos que en esta clase hay asignadas las variables globales (id, nombre, apellido) y en el contructor que acabamos de crear tambien hay los mismos. Para diferenciar los globales de los locales se usa el "this"
	- "this" sirve para asignar que la variable es "local" */
	
	public Alumno(int id, String nombre, String apellido) {
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
	}
	
	
}

```
### Clase Main
```java
package POO;

public class Main {

	public static void main(String[] args) {
		
		//Estamos usando el contructor vacio
		
		Alumno Alumno1 = new Alumno (); 
		
		//Estamos usando el contructor con parametros 
		//Hay que poner los valores en el orden en el que los asignamos en el contructor 
		// Los valores hay que pasarlos por orden y separado por comas
		
		Alumno Alumno2 = new Alumno (2, "Dylan", "Alves Pinto"); 
		
	}

}

```

### Explicación "*this*"

- #### Si tienes variables que se llaman igual java los diferencia con la palabra reservada "*this*" que en español significa "*ésta*"

- #### Vemos que en esta clase hay asignadas las variables globales (id, nombre, apellido) y en el contructor que acabamos de crear tambien hay los mismos. Para diferenciar los globales de los locales se usa el "*this*"

- #### "*this*" sirve para asignar que la variable es "local" 

## Getters y Setters

#### *Para crear los constructores automaticamente se haria con el "click izquierdo > Source > Generate Getters and Setters*"

### Que son?

#### Get = Traer
#### Set = Colocar






