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
´´´ç

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






