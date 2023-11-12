# HTML - HyperText Markup Language

## ¿Qué es HTML?

HTML (Lenguaje de Marcado de Hipertexto) sirve para describir el contenido de una página web.

## ¿Cómo empezar?

Lo primero será crear un archivo `.html`.

## Trucos HTML
- HTML no es `keySensitive` pero es recomendable que se escriba todo en minusculas
- Para escribir varias líneas a la vez, se usa la tecla "Alt".
- Al comenzar un documento HTML con "!" y "Enter", se generan las etiquetas básicas.
- Para crear varias etiquetas del mismo tipo, se utiliza el nombre de la etiqueta seguido por el "símbolo de multiplicar" (ejemplo: `li*5`).

### Etiquetas

- **h1** -> Título (hay más niveles de títulos h2/h3/h4/h5/h6)

    ```html
    <h1> Ejemplo de título principal </h1>
    <h2> Ejemplo de título medio </h2>
    <h3> Ejemplo de título pequeño </h3>
    ```

- **p** -> Párrafo (para escribir párrafos)

    ```html
    <p> Ejemplo de párrafo </p>
    ```

- **strong** -> Negrita (para resaltar algo)

    ```html
    <p> Ejemplo de <strong> palabra en negrita </strong> </p>
    ```

- **ul** -> Lista desordenada
- **ol** -> Lista ordenada
- **li** -> Elemento de lista

    ```html
    Lista desordenada
    <ul>
        <li>Roberto</li>
        <li>Raquel</li>
        <li>Gustavo</li>
    </ul>

    Lista ordenada
    <ol>
        <li>Roberto</li>
        <li>Raquel</li>
        <li>Gustavo</li>
    </ol>
    ```

- **img** -> Insertar imagen

    ```html
    <img src="./img/dylan.PNG" alt="Foto personal de Dylan Alves Pinto">
    ```

- **input** -> Entrada de datos

    ```html
    <input type="range">
    <input type="datetime-local">
    <!-- y así sucesivamente... -->
    ```

### Atributos

Los atributos proporcionan más información a un elemento HTML.

- **src** -> Atributo que indica la ruta de la imagen a cargar.

- **alt** -> Atributo para describir la imagen (útil si la imagen no carga o para personas con problemas de vista).

- **id** -> Atributo para identificar un elemento (no puede tener el mismo nombre que otro id).

- **class** -> Atributo para identificar un elemento (a diferencia del id este si se puede repetir)

- **height** -> Atributo para establecer la altura de la imagen.

- **width** -> Atributo para establecer el ancho de la imagen.

- **title** -> Atributo para definir el título de la imagen (visible al colocar el ratón sobre la imagen).

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



### Atributos Booleanos en HTML

En HTML, los atributos booleanos no requieren un valor específico; su simple presencia implica "verdadero" o "true".

1. **readonly**: Campo de entrada de solo lectura.

    ```html
    <input type="text" readonly>
    ```

2. **disabled**: Deshabilita un elemento de formulario, como un botón.

    ```html
    <button disabled>Botón deshabilitado</button>
    ```

3. **checked**: Indica que un checkbox o radio está marcado por defecto.

    ```html
    <input type="checkbox" checked>
    ```

4. **selected**: Indica que una opción dentro de un `select` está seleccionada por defecto.

    ```html
    <select>
        <option selected>Opción seleccionada</option>
        <option>Otra opción</option>
    </select>
    ```

5. **autofocus**: Elemento que debe tener el foco automáticamente al cargar la página.

    ```html
    <input type="text" autofocus>
    ```

En estos ejemplos, la simple presencia del atributo implica que está activado. Algunos atributos admiten tanto la forma corta como la larga, por ejemplo, `readonly` y `readonly="readonly"` son equivalentes, pero se prefiere la forma corta por razones de concisión.

## Estructura de un documento HTML

**html**: Se usa para poner dentro el codigo html

**head**: Se utiliza para incluir metadatos y enlaces a recursos externos en un documento HTML.

# HTML Semántico

En el desarrollo web, HTML semántico se refiere al uso significativo de etiquetas para estructurar y describir el contenido de una página web. Este enfoque mejora la accesibilidad, facilita la comprensión del código y proporciona beneficios para el SEO.

Algunas de las etiquetas semánticas más comunes son:

- **`<header>`**: Define la cabecera de un documento o de una sección. Contiene elementos introductorios o de navegación.

    ```html
    <header>
        <h1>Encabezado Principal</h1>
        <nav>
            <ul>
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Acerca de</a></li>
                <li><a href="#">Contacto</a></li>
            </ul>
        </nav>
    </header>
    ```

- **`<nav>`**: Representa una sección de navegación. Contiene enlaces a otras páginas o secciones de la misma página.

    ```html
    <nav>
        <ul>
            <li><a href="#">Inicio</a></li>
            <li><a href="#">Acerca de</a></li>
            <li><a href="#">Contacto</a></li>
        </ul>
    </nav>
    ```

- **`<main>`**: Define el contenido principal de un documento. Debería contener el contenido exclusivo de esa página.

    ```html
    <main>
        <article>
            <h2>Artículo 1</h2>
            <p>Contenido del artículo...</p>
        </article>
        <article>
            <h2>Artículo 2</h2>
            <p>Contenido del artículo...</p>
        </article>
    </main>
    ```

- **`<article>`**: Representa un contenido independiente y autónomo que puede existir por sí mismo, como un artículo de noticias o un blog.

    ```html
    <article>
        <h2>Título del Artículo</h2>
        <p>Contenido del artículo...</p>
    </article>
    ```

- **`<section>`**: Agrupa contenido temático relacionado en una página. Puede contener varios elementos, incluidos `<header>`, `<article>`, `<footer>`, entre otros.

    ```html
    <section>
        <h2>Sección 1</h2>
        <p>Contenido de la sección...</p>
    </section>
    ```

- **`<aside>`**: Representa contenido tangencial o relacionado, a menudo colocado junto al contenido principal.

    ```html
    <aside>
        <h2>Barra lateral</h2>
        <p>Contenido adicional...</p>
    </aside>
    ```

- **`<footer>`**: Define el pie de una página o de una sección. Generalmente contiene información de copyright, enlaces de contacto, etc.

    ```html
    <footer>
        <p>&copy; 2023 Mi Sitio Web</p>
        <p>Contacto: info@misitioweb.com</p>
    </footer>
    ```

Este enfoque facilita la comprensión del código y mejora la estructura y la presentación del contenido en la web.


