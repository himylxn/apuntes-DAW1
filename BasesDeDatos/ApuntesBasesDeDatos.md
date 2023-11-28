# Bases de Datos
**Dylan Alves Pinto** 

## TEMA 3



## Parte practica

- **`Nombre de Entidades:`** Utiliza mayúsculas y negrita para destacar el nombre de las entidades.

- **`Clave Primaria:`** Subraya la clave primaria para identificarla claramente.

- **`Atributos Opcionales:`** Se indica con un asterisco (*) para representar que pueden tener valores nulos.

- **`Identificadores Alternativos:`** Utiliza negrita para resaltar identificadores alternativos.

- **`Atributos Compuestos:`** Para atributos compuestos, se especifica cada una de las partes, excepto en el caso de fechas.

- **`Atributos Multivaluados:`** Si no se indica nada, se asume que el primer atributo es obligatorio y el segundo opcional con un asterisco (*), o ambos son obligatorios.

- **`Claves Foráneas:`** Se representan en cursiva (k) y se subrayan si son primarias.

## Tipos de Cardinalidades

- **`N:M (Muchos a Muchos):`** Involucra las claves foráneas de ambos lados.

- **`1:N (Uno a Muchos):`** La clave de "*`1`*" se traslada a "*`N`*" indicando la relación.

- **`N:1 (Muchos a Uno):`** Similar a 1:N, pero ahora la relación es de muchos a uno.

- **`1:1 (Uno a Uno):`** Se requiere revisar ambos lados; es crucial evitar valores nulos.
    - Ejemplo: (0,1) en ambos lados pasa a (1,1).
    - Si hay (0,1) en ambos lados, se crea una tabla nueva.

**`Importante: En caso de cardinalidades (1,1), es obligatorio; si es (0,1), se admiten valores nulos.`**

## Acciones de Borrado y Modificación

- **`Restringidos:`** Al intentar borrar en la entidad origen, verifica si hay datos en otras tablas. No permite el borrado si existen datos relacionados. Se recomienda borrar de abajo hacia arriba.

- **`Cascada:`** El borrado en la entidad origen resulta en la eliminación de todas las filas en las que estaba presente esa entidad. Por ejemplo, al borrar una entidad "profe", se eliminarán todas las filas relacionadas con ese profesor.

- **`Nulos:`** Al realizar un borrado, se asigna el valor "*NULL*". Para permitir valores nulos, la clave debe tener un asterisco (*).

- **`Compuesto con Valor por Defecto:`** Al realizar un borrado, se asigna un valor por defecto predefinido, como "*Por defecto: 99*".

---

# Modelo Relacional con Grafo Relacional CHATGPTTTTTTTTTT

## Reglas para el Grafo Relacional:

1. **Nombres de Relaciones (Tablas):**
   - Los nombres de las relaciones se representan en **MAYÚSCULAS y negrita**.

2. **Atributos de las Relaciones (Tablas):**
   - Se indica el nombre de la relación y, entre paréntesis, se listan todos sus atributos.
   - Para tipos específicos de atributos:
      - Claves primarias se subrayan.
      - Claves candidatas se ponen en **negrita**.
      - Claves foráneas se escriben en *cursiva* y se conectan con una flecha a la relación en la que son clave primaria.
      - Atributos opcionales, que pueden tener valores nulos, se representan con un asterisco como superíndice del nombre del atributo (atributo_opcional*).

3. **Propiedades de los Atributos:**
   - Un mismo atributo puede tener varias propiedades a la vez. Por ejemplo, ser clave foránea y opcional. Se combina la simbología utilizada por separado para cada tipo de atributo.

4. **Claves Foráneas:**
   - Se debe indicar el tipo de BORRADO y MODIFICACIÓN que se produce en cada clave foránea.
   - Tipos de Borrado:
      - *EN CASCADA (CASCADE):* Borrado o modificación en una relación afecta a la otra.
      - *RESTRINGIDO (RESTRICT o NO ACTION):* No se permite el borrado o modificación si hay información asociada en la otra relación.
      - *CON PUESTA A NULOS (SET NULL):* Borrado o modificación pone a NULL las claves foráneas en la otra relación.
      - *CON PUESTA A VALOR POR DEFECTO (SET DEFAULT):* Borrado pone a valor por defecto las claves foráneas en la otra relación.

## Representación Gráfica:
- La representación gráfica del modelo relacional se hace mediante un grafo, donde los nodos representan las relaciones (tablas) y las aristas representan las claves foráneas.

---

## Parte teórica

# Modelo Relacional Resumen Básico

El **modelo relacional** es un enfoque para organizar y estructurar datos en una base de datos, propuesto por Edgar Codd en la década de 1970.

## Tabla

- Los datos se organizan en **tablas**, cada una con un nombre único, compuesta por filas (*tuplas/registros*) y columnas (*atributos/campos*).
- Cada celda contiene un valor único y atómico del tipo de datos definido para esa columna.

## Clave Primaria

- Cada tabla tiene una o más columnas que sirven como **clave primaria**, identificando de manera única cada registro.
- Garantiza la integridad de los datos y facilita el acceso eficiente a los registros.

## Relaciones

- Se establecen mediante **claves foráneas**, donde una columna hace referencia a la clave primaria de otra tabla.
- Permite vincular información entre diferentes tablas y garantizar la consistencia de los datos.

## Normalización

- Proceso para organizar los datos y reducir la redundancia, mejorando la integridad.
- Divide la información en tablas más pequeñas y relacionadas para evitar la repetición de datos y minimizar anomalías.

## Operaciones

- Define operaciones básicas como *SELECT* (recuperar datos), *INSERT* (agregar registros), *UPDATE* (modificar registros) y *DELETE* (eliminar registros).

## Integridad Referencial

- Garantiza que las relaciones entre las tablas sean coherentes y evita claves foráneas huérfanas.


<br>
<br>
<br>

---

### Principal Objetivo del Modelo Relacional

El modelo relacional se propone como principal objetivo, aislar al usuario de las estructuras fisicas de los datos, consiguiendo así la independencia entre aplicaciones y datos.


### Teoria matemática del Modelo Relacional

Este modelo de datos tiene una amplia teoría matemática que lo respalda: `la Teoría Matemática de las relaciones`

Avances:

- ``Uniformidad``: 
  - Los usuarios de la BD Relacional ``la ven como una colección de tablas``.
  - ``La relación``

- ``Sencillez``:
  - El concepto de tabla como un conjunto de filas y columnas es fácil de entender.
  - Emplea lenguajes de tratamiento de datos muy sencillos 

- ``Sencilla fundamentacón teórica``:
  - Álgebra relacional
  - Cálculo relacional de tuplas (CRT) (Una tupla es una fila)

- ``Independencia de la interfaz de usuario``:
  - La independencia de la interfaz de usuario facilita la gestión de datos, ya que los usuarios pueden concentrarse en lo que desean hacer con la información sin tener que preocuparse por cómo está organizada internamente.

### Partes de un modelo de datos

Todo modelo de datos es una combinación de 3 componentes agrupados en 2 partes, la estática y la dinámica.

![](./img/PartesModeloDatos.PNG) 

En el contexto de los modelos de datos, la **parte estática** y **dinámica** se refiere a dos aspectos distintos:

## Parte Estática del Modelo de Datos

### Definición de Estructura:
En esta parte, se describe la **estructura** de la base de datos, incluyendo **tablas**, sus **columnas** y las **relaciones** entre ellas.

### Entidades y Atributos:
Se definen las **entidades** (objetos o conceptos) y los **atributos** (características) asociados a esas entidades.

### Restricciones:
Se especifican las **restricciones de integridad** y las **claves primarias y foráneas** que garantizan la consistencia de los datos.

## Parte Dinámica del Modelo de Datos

### Comportamiento y Acciones:
En esta parte, se describe cómo cambian los datos con el tiempo y cómo **interactúan** las entidades.

### Operaciones y Transiciones:
Se definen las **operaciones** que pueden realizarse en la base de datos, como inserciones, actualizaciones y eliminaciones.

### Eventos y Actividades:
Se identifican los **eventos** que desencadenan cambios en los datos y las **actividades** que se realizan como respuesta a esos eventos.

**En resumen,** la parte estática se centra en la **estructura y características** de los datos, mientras que la parte dinámica se ocupa de **cómo esos datos cambian y se manipulan a lo largo del tiempo**. Ambas partes son esenciales para comprender y diseñar un modelo de datos completo y funcional.


### Estructuras de datos

- La ``estructura básica y única`` del Modelo Relacional es la **``relación``**, también llamada ``informalmente tabla``, que sirve para representar tanto los objetos como las asociaciones entre ellos.

(*``Podemos decir que la tabla es la representación de la relación en el MR``*)

- Los atributos son las propiedades de las relaciones y se definen sobre los dominios.


### Elementos del modelo DOMINIOS, ATRIBUTOS Y RELACIONES

El Universo del Discurso (UD), representación del mundo real o también llamada Minimundo de
una BDR.

### Dominios:

**Dominios (D):** Conjunto de datos del mismo tipo.

- Cada dominio tiene un **nombre** y un **formato**:
  - Por **extensión:** Proporciona todos sus valores.
  - Por **intensión:** Se define mediante un tipo de datos.

- A veces se asocia al dominio su **unidad de medida** (kilos, metros, etc.) y ciertas **restricciones**, como un rango de valores.

![](./img/DominiosEjemplo.PNG) 

Los dominiosse pueden clasificar en:

- ``Generales``: toma valores entre un minimo y un maximo. En el ejemplo anterior el dominio "Salarios".
- ``Restringidos``: toma valores entre unos especificos. En el ejemplo anterior, los dominios "Módulos" y "TiposDocId"

### Atributos:

- Atributo (A): Interpretación de determinado dominio en una relación, es decir, el papel que desempeña en esa relación.

Un atributo y un dominio PUEDEN llamarse igual,pero deber tenerse en cuenta que:

-Un atributo está siempre asociado a una relación (tabla)
  - Un atributo representa una propiedad (una caracterstica) de una relación (tabla)

-  Un dominio exsiste sin depender de una relación (tabla):
   -  varios atributos distintos pueden tomar sus valores del mismo dominio

![](./img/AtributosEjemplo.PNG)

```
Ejemplo: El atributo DNI de la relación ALUMNO y el atributo DNI de la relación PROFESOR,
están definidos sobre el mismo dominio de nombre números_enteros_positivos.
```

### Relación: FALTA EXPLICACION

- Definición fromal de relación (R): 


### CLAVES

- Clave ``primaria``: Conjunto minimo de atributos cuyos valores indentifican unívocamente a una tupla en una relación.
  
- Clave ``candidata`` o ``alternativa``: txt

- Clave ``foránea``: txt


### TERMINOLOGÍA

| Término Formal (MR) | Término Informal para Ficheros |
|----------------------|--------------------------------|
| Relación             | Tabla                          |
| Atributo             | Columna o Campo                |
| Tupla                | Fila o Registro                |
| Grado                | Número de Columnas             |
| Cardinalidad         | Número de Filas                |
| Clave Primaria       | Identificador Único            |
| Dominio              | Conjunto de Valores Posibles   |
| Esquema de Relación  | Descripción de la Tabla        |

### RESTRICCIONES (o reglas) INHERTES

## Restricciones Inherentes del Modelo Relacional (MR)

1. **Restricción de Obligatoriedad de Clave Primaria:**
   - En una relación, no puede haber tuplas iguales. Esto implica que la clave primaria es obligatoria y única para cada tupla en la relación.

2. **Irrelevancia del Orden de Tuplas y Atributos:**
   - El orden de las tuplas y el de los atributos no es relevante. Las consultas y manipulaciones de datos no dependen del orden en que se ingresaron o del orden de los atributos en la relación.

3. **Unicidad de Valores para Cada Atributo:**
   - Cada atributo solo puede tomar un único valor del dominio sobre el que está definido. Esto garantiza la consistencia de los datos y evita ambigüedades.

4. **Restricción de Integridad de Entidad:**
   - Ningún atributo que forme parte de la clave primaria de una relación puede tomar un valor nulo. Esto asegura que la clave primaria, que identifica de manera única cada tupla, siempre esté presente y no pueda ser nula.

Estas restricciones son inherentes al modelo y ayudan a mantener la coherencia y la integridad de los datos en una base de datos relacional.

![](./img/RestriccionesInherentes.PNG)

### RESTRICCIONES SEMÁNTICAS O DE USUARIO

Son herramientas que el diseñador utiliza para personalizar el esquema de relación de una base de datos. Estas restricciones permiten capturar detalles específicos del dominio, mejorar la precisión del modelo y adaptarse a las necesidades particulares del usuario. Su importancia radica en asegurar que la base de datos refleje de manera fiel la realidad que se está modelando, siendo esenciales durante el diseño de bases de datos.

Las restricciones semánticas del MR son las siguientes:

1) RESTRICCIÓN DE CLAVE PRIMARIA (Primary key: permite declarar un atributo o conjunto de atributos como la clave primaria de una relación. Esta clave primaria tiene la función de identificar de manera única cada tupla dentro de la relación, asegurando que no haya duplicados y proporcionando una forma única de referenciar cada registro en la tabla.
    
2) RESTRICCIÓN DE UNICIDAD (Unique): nos permite definir claves alternativas.
   
3) RESTRICCIÓN DE OBLIGATORIEDAD (Not Null): esta restricción asegura que los atributos designados deben tener información válida en cada tupla de la relación y no pueden quedar sin información (NULO). Esto garantiza la integridad de los datos y ayuda a evitar inconsistencias en la base de datos.
   
4) 





