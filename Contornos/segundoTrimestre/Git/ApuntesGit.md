# Git

## Instalar Git
```git
apt-get install git
```
Configuracion:
```git
git config --glogbal user.name "a21dylanap"
git config --global user.email "a21dylanap@iessanclemente.net"
```

Comprobar configuracion:
```git
git config --list
```

## Inicializar un repositorio
```git
mkdir ejemplo
cd ejemplo
git init .
```

## Ver estado de los archivos
```git
git status
```
## Ver estado abreviado
```git
git status --short
```

## Empezamos a realizar seguimiento de archivos
```git
git add .
git add ejemmplo.txt
```

## Para hacer un commit (confirmar cambios)
```git
git commit -m "mensaje del commit"
```

## Para ignorar archivos
```git
nano archivo.txt (archivo que quieras ignorar)
nano .gitignore (dentro escribimos nombre del archivo a ser ignorado: archivo.txt)
```

## Para ver todas las modificaciones
```git
git log
```

## Para revertir cambios
Copiamos el hash del commit al que queremos volver (primeros 10 numeros) con:

```git
git log
```
Y luego con este comando revertiremos los cambios
```git
git checkout 877607676(los primeros 10 numeros del commit)
```

## Para volver a la rama master

```git
git checkout master
```
## Ver cambios no preparados
```git
git diss
```

## Eliminar archivos
```git
rm ejemplo.txt
git rm canciones.txt
git commit -m "archivo eliminado"
```

## Cambiar nombre de un archivo
```git
git mv ejemplo.txt ejemploCambiarArchivo.txt
```

## Monstrar ultimas 2 entradas del historial
```git
git log -p -2
```
## Listar confirmaciones de las ultimas 2 semanas
```git
git log --since=2.weeks
```

## Listar todas las ramas
```git
git brach
```

# Git Remotos

## Obtener remotos remoto
```git
git clone url(del repositorio que quieras clonar)
```
## Ver repositorios remotos
```git
git remote
git remote -v (esta opcion muestra las urls que git a asociado al nombre)
```

## Añadir repos remoto 
```git
git remote add [nombre] [url]
```

## Obtener datos de tus proyectos remotos
```git
git fetch [remote-name]
```
## Enviar un proyecto a un servidor para compartir
```git
git push [nombre-remoto] [nombre-rama]
```
Ejemplo:
```git
git push origin master
```

## Eliminar remotos
```git
git remote rm ejemplo
```

## Renombrar remotos
```git
git remote rename ejemplo ejemploCambiadoElNombre
```