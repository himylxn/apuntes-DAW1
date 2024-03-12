# Gestion de Permisos y usuarios en linux

## Comando chmod
Para cambiar los permisos se hace con el comando "chmod".

La sintaxis del comando chmod es la siguiente:

```bash
chmod [opciones] permiso nombre_archivo_o_carpeta
```

Iniciales de a quién va dirigido el permiso:

- usuario=u
- grupo=g
- resto=o (other)

Seguido del signo correspondiente a la acción:

- Signo + para añadir el permiso
- Signo – para quitar el permiso


Por ultimo el tipo de permiso: lectura=r, escritura=w y ejecución=x

Veamos algunos ejemplos con el archivo «ejemplo.txt»

- Otorgar el permiso de escritura al usuario propietario sobre el archivo «ejemplo.txt»:
```bash
chmod u+w ejemplo.txt
```

- Eliminar el permiso de escritura al resto de usuarios sobre el archivo «ejemplo.txt»:
```bash
chmod o+w ejemplo.txt
```

- Otorgar el permiso de lectura al grupo propietario sobre el archivo «ejemplo.txt»:
```bash
chmod g+r ejemplo.txt
```

- También se puede otorgar diferentes permisos en una misma ejecución del comando, solo hay que separar por comas:
```bash
chmod u+w,g-r,o-r ejemplo.txt
```

# Particiones

Una particiones es una division lógica en una unidad de almacenamiento

## DISCOS MBR

Particiones primarias:
- Como maximo 4 particiones priarias si no hay 1 extendida
- Maximo 3 primarias y 1 extendida

Partición Activa:
- Es la particion que elegida para arrancar el sistema operativo

Partición extedida:
- Como maximo 1 extendida
- En la extendida no se pude gurdar informacion directamente si no que hay que crear dentro particiones logicas.

Particiones logicas:
- Puedes crear todas las que quieras
- Son las particiones que dividen una extendida

COSAS QUE TENER EN CUENTA A LA HORA DE CREAR PARTCIONES:
- Para empezar a guardar informacion en los discos duros minimo hay que hacer una particion.
- Nun disco duro solo puede haber 4 particiones entre primarias y extendida (3 priamrrias y una extendida o 4 primarias como máximo)
- Cuando haces una particion hay que formatearla, es decir elegir un sistema de archivos para guardar los datos (NTFS,ext4,exFAT,FAT32) y por ultimo hay que montarla.

## DISCOS GPT

- Por defecto vas a poder crear hasta 128 particiones
- Pueden ser todas particiones primarias
- Podemos trabajar con discos de capacidades inmensas


## DEFINICIONES 

### MBR herdado (legacy)

- Se refiere a un sistema informatico que ha quedado obsoleto pero aún se utiliza

### Memoria SWAP o de intercambio
- Es un area del disco duro que se utiliza para almazenar temporalmente procesos para ayudar a la memoria RAM a no sobrecargarse.


## RAID

Los RAID son una tecnologia de almacenamiento que combina multiples discos para mejorar la redunda y/o el rendimiento del sistema.

Un sistema RAID se trata de:
- Aumenta la integridad de los datos en los discos
- Mejora la tolerancia a fallos
- Mejora el rendimiento

### RAID 0
Este sistema consiste en repartir informacion entre os discos.

Ventajas:
- Rapido y barato
- No se pierde capacidad
- Es muy rapido

Desventajas:
- Si uno de los discos se estropea se perderan los datos

### RAID 1 
Este sistema consiste en dividir la informacion en los d.

Ventajas:
- Es muy rapido

Desventajas:
- Perdemos 

### RAID 3 y 4
Usa redundancia para recuperar lo datos en caso de que se pierdan. Minimo se necesitan 3 discos.

Ventajas:
- En caso de perdida no pasa nada ya que se recuperan los datos

Desventajas:
- Lento

### RAID 5
Este sistema consiste en que reparte la paridad entre los distintos discos. Podemos perder 1 disco sin que pase nada.

Ventajas:
- Es muy seguro

Desventajas:
- Un poco mas lento que el 1 y el 2

### RAID 5
Este sistema mejora el raid 5. Permite perder 2 discos en vez de 1.

Ventajas:
- Es muy seguro, podemos perder hasta 2 discos

Desventajas:
- Perdemos bastante capacidad

### RAID 10
Este sistema es una mezcla entre RAID 1 y el 0. Se duplica y se divide

Ventajas:
- Es rapido

Desventajas:
- Perdemos la mitad

### JBOD
No es un RAID, solo consiste en fusionar varios discos para crear 1 solo de mayor capacidad.


# Administracion de discos en linux

## Fdisk y otros

Comandos:

- fdisk -l: listar los discos duros
- fdisk /dev/sdb: Para hacer las particiones siguiendo los pasos
- lsblk: tambien permite listar los discos duros
- df: da informacion sobre la utilizacion de espacio en los discos


# BASH

Los scripts suelen tener la extension sh aunque no es obligatoria

Ejemplo de script
```bash
#/bin/bash
# Comentario
echo "Ola mundo"
```

1. La primera linea se denomina "shebang" y su utilidad es indicar cual es el interprete que se se usa, en este caso es el bash.

2. La segunda es un comentario

3. Comando "echo" más la cadena de texto


## Como se ejecuta un script

´´´bash
./script.sh
´´´

Imprtante dar permisos para poder ejecutar el archivo con:

´´´bash
chmod +x script.sh
´´´

## Como crear una variable en bash

´´´bash
variable1="hola muy buenos dias"
´´´

Ejemplo:

´´´bash
variable1="Hola me llamo"
variable2="Dylan"
´´´


## Salida en bash

´´´bash
variable1="Hola me llamo"
variable2="Dylan"

echo "La frase que forme con las variables es $variable1 $variable2"
´´´

## Entrada en bash

´´´bash
read -p 
´´´



# PowerShell

PowerShell es una herramienta muy potente y util para la automatizacion de tareas con lineas de comandos y lenguaje de scripting.






