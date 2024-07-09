Partiendo del repositorio libro creado en el ejercicio anterior:

- Crea una nueva rama bibliografía y muestra las ramas del respositorio.
```bash
git branch bibliografia
git branch -vv
```

- Cambia a la rama bibliografía y crea el fichero bibliografía.txt y añade la siguiente referencia:

caperucita roja,  Trina Schart Hyman, Charles Perrault

```bash
git checkout bibliografia
nano bibliografia.txt
```


- Comitea los cambios con el mensaje “Añadida primera referencia bibliográfica”.
```bash
git add bibliografia.txt
git commit -m "Añadida primera referencia bibliográfica"
```


- Fusionar la rama bibliografía con la rama master y eliminar la rama bibliografía.
```bash
git merge master bibliografia
git branch -d bibliografia
```


- Crea la rama harrypotter. En esta rama modifica el fichero bibliografía.txt para que contenga las siguientes referencias:
 Harry Potter y la piedra filosofal, J. K. Rowling
 Harry Potter y el cáliza de fuego, J. K. Rowling

 ```bash
 git branch harrypotter
 git checkout harrypotter 

 ```


- Comitea los cambios con el mensaje “Añadida bibliografía de harry potter”.
```bash
git add .
git commit -m "Añadida bibliografía de harry potter"
```

- En la rama master modifica el fichero bibliografía.txt y añadie la siguiente línea:

El Rey León, Rob Minkoff, Roger Allers

```bash
git checkout master
nano bibliografia.txt
```
Fusiona la rama harrypotter con la rama master. Resuelve el conflicto y comitea los cambios.
```bash
git merge master harrypotter

# Da error porque se sobrescriben. Ahora lo que se haria seria coger en "bibliografia.txt" lo que quieras y lo que no, se borra.

git commit -m "Conflicto resuelto fusion master con harrypotter"
```