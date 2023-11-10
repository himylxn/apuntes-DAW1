# HTML
Hyper Text Markup Languaje
## Que es HTML
HTML Sirve par describir el contenido de una pagina web

## Como empezar?

Lo primero será crear un archivo .html

## Truquitos HTML

- Para escrbir varial lineas a la vez se usa la tecla "alt"
- Cuando empieces un documento html con "!" y "enter" se pone las etiquetas basicas
- Para crear varias etiquetas se hace con el nombre de la etiqueta y "simbolo multiplicar" (ejemplo: li*5)

### Etiquetas -> 

- h1 -> Titulo (tienes mas niveles de  titulos h2/h3/h4/h5/h6)
```html
<h1> Ejemplo de titulo pricipal</h1>
<h2> Ejemplo de titulo medio</h2>
<h3> Ejemplo de titulo pequeño</h3>
```

- p -> Parrafo (Sirve para poner parrafos)
```html
<p> Ejemplo de parrafo</p>
```

- strong -> Negrita (Sirve para resaltar algo)
```html
<p> Ejemplo de <strong> palabra en negrita <strong> </p>
```

- ul -> Lista desordenada
- ol -> Lista
- li -> Item list

```html
Lista desordenada
<ul>
    <li>Roberto</li>
    <li>Raquel</li>
    <li>Gustavo</li>
</ul>

Lista ordenada
<ol>
    <<li>Roberto</li>
    <li>Raquel</li>
    <li>Gustavo</li>
</ol>
```

- img -> Sirve para poner una imagen

```html
<img src="./img/dylan.PNG" alt="Foto personal de Dylan Alves Pinto">
```
- input -> Sirve para introducir datos
```html
<input type="range">
<input type="datetime-local">
etc...
```

### Atributos ->

Un atributo sirve para proporcionar mas información a un elemento html, como por ejemplo en el caso de "img" cuando usamos "src"

- "src" -> atributo que en este caso nos permite indicar que imagen queremos cargar (para poder poner el link) 

- "alt" -> Sirve para describir la imagen, es util por si la imagen no carga o para las personas que tienen problemas de vista

- "id" -> Sirve para identificar algo (No puede tener un nombre igual a otro id)

- "height" -> Altura (Las comillas son opcionales) 

- "width" -> Ancho (las comillas son opcionales)

- "title" Sirve para definir el titulo de la imagen, se puede visualizar si pones el raton encima de la imagen 

```html
<img 
    id="photo-image"
    height="270"
    width="230"
    title="foto personal Dylan"
    src="./img/dylan.PNG"
    alt="Foto personal de Dylan Alves Pinto"
>
```







