# Bases de datos 
Dylan Alves Pinto

# TEMA 3


- #### Nombre entidades: MAYÚSCULAS Y negrita

- #### Clave primaria: subrayamos

- #### Opcionales: aterisco *

- #### Identificadores alternativos: llave y negrita

- #### Compuesto: se pone cada una de las partes (menos en las fechas)

- #### Multivaluado: si no te indican nada poner primero obligatorio y segundo opcional con * o los dos obligatorios

- #### Claves Foraneas: Cursiva (k) si es primaria se subraya

## Tipo de Cardinalidades

- #### N:M: Coge las claves foraneas de ambos lados 
- #### 1:N: La clave de la "*1*" pasa para la "*N*" 
- #### N:1: La clave de la "*1*" pasa para la "*N*" 
- #### 1:1: Hay que mirar ambos lado hay que evitar nulos 
    - #### (Ejemplo (0,1) pasa para (1,1)) 
    -  #### (si hay 0,1 en ambos lados si se crea tabla nueva)


### IMPORTANTE: (si las cardinalidades son (1,1) es obligatorio pero si es (0,1) admitira nulos)

## Borrados y Modificaciones

- #### Restringidos: Cuando intenta borrar en la intentidad origen, comprueba si hay datos en el resto de tablas, si hay no deja. Abría que borrar de abajo a arriba 
- #### Cascada: Si borras en origen se borra todo en lo que estuviera esa entidad (si borras entidad profe se borran todas las filas en la que estuviera dicho profe).
- #### Nulos: Al borrar deja valor "*NULL*". Para poner se nulo la clave tiene que tener asterisco*
- #### Compuesta a valor por defecto: Al borrar deja valor "*Por defecto*" que le hayamos indicado (ejmplo: "*99*").