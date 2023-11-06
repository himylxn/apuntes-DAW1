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

### Clase Alumno

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
	
	public void mostrarNombre(String nombre) {
		System.out.println("Hola, soy un alumno y se decir mi nombre que es " + nombre);
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
### Clase Main

```java

 package POO;

public class Main {

	public static void main(String[] args) {

		//Lo primero seria crear nuetros alumnos (objetos)

		//Creo el alumno 1
		Alumno alumno1 = new Alumno();

		//Creo el alumno 2
		Alumno alumno2 = new Alumno();
		
		// Para usar el metodo "saber si alumno aprobo"
		
		// Creamos una variable para meterle dentro la nota del alumno
        double calificacionAlumno1 = 6.5; 

		// Una vez que la tenemos usamos el metodo main de esta manera
        alumno1.saberAprobado(calificacionAlumno1); 
        
        double calificacionAlumno2 = 1;
        
        alumno2.saberAprobado(calificacionAlumno2);
        
        // Para usar el metodo "mostrar nombre"
        
		//Dentro de los parentesis ponemos el nombre del alumno ya que en la clase "Alumno" pusimos que cogiera un "String nombre"
        alumno1.mostrarNombre("Juan");
        
        alumno2.mostrarNombre("José");
	}

}

```

### Resultado

```java
Aprobe la materia:)
Jo suspendi:(
Hola, soy un alumno y se decir mi nombre que es Juan
Hola, soy un alumno y se decir mi nombre que es José
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
		
		Alumno alumno1 = new Alumno (); 
		
		//Estamos usando el contructor con parametros 
		//Hay que poner los valores en el orden en el que los asignamos en el contructor 
		// Los valores hay que pasarlos por orden y separado por comas
		
		Alumno alumno2 = new Alumno (2, "Dylan", "Alves Pinto"); 
		
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

#### Los setters y lo getters se utilizan para traer y establecer valores

#### "*Get*" = Traer
#### "*Set*" = Colocar o establecer valores 

## Practica
  
### Clase Alumno

```java
package POO;

public class Alumno {

	int id; //Le asignamos el atributo id 
	String nombre; //Le asignamos el atributo nombre
	String apellido; //Le asignamos el atributo apellido

	//Setters and Getters
	
	//Sirve para obtener el atributo "id" de un objeto en particular
	
	public int getId() {
		return id; // retorna el atributo id 
	}

	// El set es un procedimiento que no retorna ningun valor
	// Se usa para para recibir un dato por parametro que se encarga de establecerlo en este caso el "id"
	public void setId(int id) {
		this.id = id;
	}

	//Sirve para obtener el atributo "id" de un objeto en particular
	public String getNombre() {
		return nombre; // retorna el atributo nombre
	}

	// El set es un procedimiento que no retorna ningun valor
	// Se usa para para recibir un dato por parametro que se encarga de establecerlo en este caso el "nombre"
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	//Sirve para obtener el atributo "id" de un objeto en particular
	public String getApellido() {
		return apellido; // retorna el atributo apellido
	}

	// El set es un procedimiento que no retorna ningun valor
	// Se usa para para recibir un dato por parametro que se encarga de establecerlo en este caso el "apellidos"
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
}



```

### Clase Main Usando Metodos "*Get*"

```java
package POO;

public class Main {

	public static void main(String[] args) {
		
		//Estamos usando el contructor vacio
		
		Alumno alumno1 = new Alumno (); 
		
		Alumno alumno2 = new Alumno (2, "Dylan", "Alves Pinto"); 
		
		//Mostramos la id al amlumno 2 usando "get"
		//En este caso nos enseñará que la "id" es 2 ya que lo asignamos anteriormente con el constructor con parametros
		System.out.println("La id del alumno 2 es " + alumno2.getId());
		
		//Mostramos el nombre al amlumno 2 usando "get"
		//En este caso nos enseñará que el "nombre" es 2 ya que lo asignamos anteriormente con el constructor con parametros
		System.out.println("El nombre del alumno 2 es " + alumno2.getNombre());
		
		//Mostramos el apellido al amlumno 2 usando "get"
		//En este caso nos enseñará que el "apellido" es 2 ya que lo asignamos anteriormente con el constructor con parametros
		System.out.println("El apellido de alumno 2 es " + alumno2.getApellido());	
		
	}

}

```
### Resultado al ejecutar
```java
La id del alumno 2 es 2
El nombre del alumno 2 es Dylan
El apellido de alumno 2 es Alves Pinto

```

### Clase Main Usando Metodos "*Set*"

```java
package POO;

public class Main {

	public static void main(String[] args) {
		
		
		
		Alumno alumno1 = new Alumno (); 
		Alumno alumno2 = new Alumno (2, "Dylan", "Alves Pinto"); 
		
		//Mostramos la id al amlumno 2 usando "get"
		//En este caso nos enseñará que la "id" es 2 ya que lo asignamos anteriormente con el constructor con parametros
		System.out.println("La id del alumno 2 es " + alumno2.getId());
		
		//Mostramos el nombre al amlumno 2 usando "get"
		//En este caso nos enseñará que el "nombre" es 2 ya que lo asignamos anteriormente con el constructor con parametros
		System.out.println("El nombre del alumno 2 es " + alumno2.getNombre());
		
		//Mostramos el apellido al amlumno 2 usando "get"
		//En este caso nos enseñará que el "apellido" es 2 ya que lo asignamos anteriormente con el constructor con parametros
		System.out.println("El apellido de alumno 2 es " + alumno2.getApellido());
		
		System.out.println("-----------------------------"); //Separación
		
		//Usando los "set"
		
		// Asignamos valores a alumno1 (anteriormente no tenia)
		alumno1.setId(1);
		alumno1.setNombre("Juan");
		alumno1.setApellido("Perez");
		
		
		System.out.println("La id del alumno 1 es " + alumno1.getId());
				
		System.out.println("El nombre del alumno 1 es " + alumno1.getNombre());
				
		System.out.println("El apellido de alumno 1 es " + alumno1.getApellido());
		
		System.out.println("-----------------------------"); //Separación
		
		//Ahora vamos a modificar los valores de alumno2 (ya tenia datos asignados anteriormente)
		
		// Imaginemos que nos confundimos anteriormente al asignar que el id de alumno2 es 2 y en realidad queriamos que fuera 22
		// Para modificar utilizamos "set"
		alumno2.setId(22);
		
		//Enseñamos por pantalla y vemos los cambios
		System.out.println("El nuevo id del alumno 2 es " + alumno2.getId());
		
		System.out.println("El nombre del alumno 2 es " + alumno2.getNombre());
				
		System.out.println("El apellido de alumno 2 es " + alumno2.getApellido());
		
	}

}
```


### Resultado al ejecutar
```java
La id del alumno 2 es 2
El nombre del alumno 2 es Dylan
El apellido de alumno 2 es Alves Pinto
-----------------------------
La id del alumno 1 es 1
El nombre del alumno 1 es Juan
El apellido de alumno 1 es Perez
-----------------------------
El nuevo id del alumno 2 es 22
El nombre del alumno 2 es Dylan
El apellido de alumno 2 es Alves Pinto
```

## Herencia

#### La herencia en Java es un concepto de programación que permite que una clase comparta propiedades y comportamientos de otra clase. Es útil para reutilizar código y organizar clases de manera lógica. Por ejemplo, puedes crear una nueva clase basada en una existente y agregar o modificar su funcionalidad según sea necesario.

### Practica
#### Para éste ejercicio voy a crear un nuevo proyecto
#### Creamos la que va a ser la "*clase madre*" o "*superclase*", la voy a llamar persona

### Clase Persona

```java
package Herencia;

public class Persona {

	//Creo los atributos de Persona
	String dni;
	String nombre;
	String Apellido;
	String domicilio;
	String telefono;
	
	//Creamos un contructor sin datos
	public Persona() {
		
	}
	
	//Creamos el contructor con datos
	public Persona(String dni, String nombre, String apellido, String domicilio, String telefono) {
		this.dni = dni;
		this.nombre = nombre;
		Apellido = apellido;
		this.domicilio = domicilio;
		this.telefono = telefono;
	}

	
	//Creamos getters y setters
	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return Apellido;
	}

	public void setApellido(String apellido) {
		Apellido = apellido;
	}

	public String getDomicilio() {
		return domicilio;
	}

	public void setDomicilio(String domicilio) {
		this.domicilio = domicilio;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
}
```
### Siguiente paso 
#### Creo una nueva clase llamada Empleado y otra llamada Consultor las cuales vamos a hacer que hereden de la clase "Persona" (superclase)

### Clase Empleado
#### Para asignar que queremso que herede de la superclase se hace así:

```java
package Herencia;

//Para hacer que herede de la superclase Persona se asigna la palabra reservada "extends" y luego la clase de la que quieres que herede
public class Empleado extends Persona{ 

}
```

### Clase Consultor
#### Para asignar que queremso que herede de la superclase se hace así:

```java
package Herencia;

//Para hacer que herede de la superclase Persona se asigna la palabra reservada "extends" y luego la clase de la que quieres que herede
public class Consultor extends Persona{ 

}
```
### Clase Empleado
### Ahora asignamos atributos propio de "*Empleado*"

```java
package Herencia;

//Para hacer que herede de la superclase Persona se asigna la palabra reservada "extends" y luego la clase de la que quieres que herede
public class Empleado extends Persona{
	
	//Atributos propios del empleado
	int num_empleado;
	String cargo;
	Double sueldo;
	
}
```

#### Una vez que tenemos los atributos propios de la clase "*Empleado*" probaremos a poner los atributos de la clase madre:

```java
package Herencia;

//Para hacer que herede de la superclase Persona se asigna la palabra reservada "extends" y luego la clase de la que quieres que herede
public class Empleado extends Persona{
	
	//Atributos propios del empleado
	int num_empleado;
	String cargo;
	Double sueldo;
	
	
	//constructor sin atributos
	public Empleado() {
	}


	//Constructor con los atributos propios y con los de la superclase Persona
	//(super) palabra reservada que sirve para llamar a la superclase
	public Empleado(String dni, String nombre, String apellido, String domicilio, String telefono, int num_empleado,
			String cargo, Double sueldo) {
		super(dni, nombre, apellido, domicilio, telefono); //atributos de la superclase
		this.num_empleado = num_empleado; //atributo de la clase propia
		this.cargo = cargo; //atributo de la clase propia
		this.sueldo = sueldo; //atributo de la clase propia
	}

	//getters y setters de la clase
	public int getNum_empleado() {
		return num_empleado;
	}


	public void setNum_empleado(int num_empleado) {
		this.num_empleado = num_empleado;
	}


	public String getCargo() {
		return cargo;
	}


	public void setCargo(String cargo) {
		this.cargo = cargo;
	}


	public Double getSueldo() {
		return sueldo;
	}


	public void setSueldo(Double sueldo) {
		this.sueldo = sueldo;
	}
}

```

#### Los metodos y los setters/getters se pueden poner de forma automatica como lo vimos anteriormente

### Haremos lo mismo para la clase consultor

### Clase Consultor

```java
	package Herencia;

//Para hacer que herede de la superclase Persona se asigna la palabra reservada "extends" y luego la clase de la que quieres que herede
public class Consultor extends Persona{
	
	//Atributos propios del empleado
	String nombre_consultora;
	int num_contructor;
	
	
	//constructor sin atributos
	public Consultor() {
	}
	
	
	//Constructor con los atributos propios y con los de la superclase Persona
	//(super) palabra reservada que sirve para llamar a la superclase
	public Consultor(String dni, String nombre, String apellido, String domicilio, String telefono,
			String nombre_consultora, int num_contructor) {
		super(dni, nombre, apellido, domicilio, telefono); //atributos de la superclase
		this.nombre_consultora = nombre_consultora; //atributo de la clase propia
		this.num_contructor = num_contructor; //atributo de la clase propia
	}
	
	//getters y setters de la clase
	public String getNombre_consultora() {
		return nombre_consultora;
	}
	public void setNombre_consultora(String nombre_consultora) {
		this.nombre_consultora = nombre_consultora;
	}
	
	
	public int getNum_contructor() {
		return num_contructor;
	}
	public void setNum_contructor(int num_contructor) {
		this.num_contructor = num_contructor;
	}
}
```

## Pruebas

### Clase Herencia (Main)

```java
package Herencia;

public class Herencia {

	public static void main(String[] args) {
		
		//Ejemplo Empleado
		
		//creamos el objeto empleado1
		Empleado empleado1 = new Empleado();
		
		//asignamos un valor con set
		empleado1.setNum_empleado(1); //Atributo propio del empleado
		
		//mostramos por pantalla usando el get
		System.out.println("Numero Empleado (Atributo propio del empleado) : " + empleado1.getNum_empleado());  //Atributo propio del empleado
		
		//asignamos un valor con set
		empleado1.setNombre("Ramón");
		
		//asignamos un valor con get
		System.out.println("Nombre Empleado (Atributo heredado de la superclase) : " + empleado1.getNombre()); //Atributo heredado de la superclase
		
		
		
		System.out.println("---------------------"); //solo espaciado
		
		
		//Ejemplo consultor
		Consultor consultor1 = new Consultor();
		
		//Atributo propio del empleado
		consultor1.setNum_consultor(1); //Asignamos un valor con set
		
		//Atributo propio del empleado
		System.out.println("Numero consultor (Atributo propio del empleado) : " + consultor1.getNum_consultor()); //Mostramos por pantalla usando el get
		
		
		
		//Atributo heredado de la superclase
		consultor1.setNombre("Juanma"); //asignamos un valor con set
				
		//Atributo heredado de la superclase
		System.out.println("Nombre Empleado (Atributo heredado de la superclase) : " + consultor1.getNombre()); //asignamos un valor con get
	}
}
```

### Resultado Ejecución

```java
Numero Empleado (Atributo propio del empleado) : 1
Nombre Empleado (Atributo heredado de la superclase) : Ramón
-------------------------------------------------------------
Numero Consultor (Atributo propio del Cosultor) : 1
Nombre Cosultor (Atributo heredado de la superclase) : Juanma
```









