# Repositorios remotos


1. Crea un repositorio en GitHub con el nombre libro-git. Añádelo como url remota en nuestro repositorio local de libro creado en el ejercicio anterior.

Creamos en github el repositorio "libro-git" y luego cogemos la url (ssh) y la usamos para añadir nuestro repositorio de github al local
```bash
git remote add origin git@github.com:a21dylanap/libro-git.git
# Origin es solo un nombre, se puede poner el que sea
```



2. Añade todo lo que tenemos que el repositorio libro al repositorio remoto y comprueba que los cambios están subidos correctamente.

```bash
git push origin master
```

Luego vamos al github y vemos que se subio correctamente


3. Colabora en el repositorio remoto de otro compañero. Clona su repositorio. Añade el fichero autores.txt que contenga tu nombre y tu correo electrónico. Haz un commit y sube los cambios al repositorio remoto de tu compañero.

Lo primero es pedirle al compañero que nos pase el link de su repositorio y que nos haga colaborador (sin ser colaborador no se puede hacer)
```bash
git@github.com:AnxoPF/libro-git.git
```

Y luego lo clonamos
```bash
git clone git@github.com:AnxoPF/libro-git.git
```

Ahora entramos y añadimos el fichero autores.txt

Y por ultimo hacemos un commit
```bash
git add .
git commit -m "AñadidoAutores.txt"
git push master origin
```

4. Cuando un compañero/a haya realizado el paso anterior en tu repositorio remoto, sincroníza tu repositorio en local. El resultado debe ser que en local debes tener ese fichero autores.txt.

```bash
git pull origin master
```


5. Modifica ese fichero, cambiando el nombre de tu compañero/a por el tuyo y añadiendo la fecha y la hora donde lo realizas. Sube los cambios al repositorio remoto.


Por ejemplo. Fichero autores.txt en repositorio local del propietario del repositorio remoto:

Sabela Sobrino

Ana Pérez

25/10/2022 10:20h

Este paso lo hizo mi compañero


6. Al mismo tiempo, avisa a tu compañero/a para que, en su repositorio local, vuelva a modificar el fichero autores.txt añdiendo tu nombre en un línea nueva, la fecha y la hora así como el lugar donde se realiza el ejercicio. Una vez modificado, debe subir los cambios a remoto.

Por ejemplo. Fichero autores.txt en repositorio local del colaborador del repositorio remoto:

Sabela Sobrino

Ana Pérez

25/10/2022 15:30h. Santiago de Compostela

Modifique el archivo autores y lo intente añadir pero dio un ERROR FATAL.

```bash
git push origin master 
To github.com:AnxoPF/libro-git.git
 ! [rejected]        master -> master (fetch first)
error: falló el empuje de algunas referencias a 'git@github.com:AnxoPF/libro-git.git'
ayuda: Actualizaciones fueron rechazadas porque el remoto contiene trabajo que
ayuda: no existe localmente. Esto es causado usualmente por otro repositorio
ayuda: empujando a la misma ref. Quizás quieras integrar primero los cambios
ayuda: remotos (ej. 'git pull ...') antes de volver a hacer push.
ayuda: Mira 'Notes about fast-forwards' en 'git push --help' para detalles.
```

7. Resolver los conflictos que se puedan producir en ambos repositorios.

Para solucionar el problema abria que hacer un pull
```bash
git pull

remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Desempaquetando objetos: 100% (3/3), 306 bytes | 306.00 KiB/s, listo.
Desde github.com:AnxoPF/libro-git
   50d6dad..7d4c0cf  master     -> origin/master
Auto-fusionando autores.txt
CONFLICTO (contenido): Conflicto de fusión en autores.txt
Fusión automática falló; arregle los conflictos y luego realice un commit con el resultado.

```

Y ahora entrariamos al archivo, cogeriamos la parte que querramos y ya podriamos hacer el commit y pushear

```bash
git add .
git commit -m "Correccion conflictos"
git push
```