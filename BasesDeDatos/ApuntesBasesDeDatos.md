# Bases de Datos
**Dylan Alves Pinto** 

## TEMA 3

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

