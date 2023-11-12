# Apuntes sobre el Código HTML

## Metadatos en `<head>`
- **`<title>`:** Define el título de la página que aparece en la pestaña del navegador.
- **`<meta charset="utf-8">`:** Especifica la codificación de caracteres UTF-8 para el documento.
- **`<meta name="viewport" content="width=device-width">`:** Hace que la página sea adaptable a diferentes tamaños de pantalla.
- **`<meta name="robots" content="index, follow">`:** Indica a los motores de búsqueda que indexen y sigan los enlaces de la página.
- **`<meta name="theme-color" content="#09f">`:** Define el color de la parte superior del navegador.
- **`<link rel="icon" type="image/jpg" href="./img/dylan.PNG">`:** Agrega un favicon a la página.
- **Open Graph para Compartir:** Proporciona información para mejorar la apariencia al compartir en redes sociales.

## Encabezado (`<header>`)
- **`<h1>`:** Título principal de la página.
- **`<nav>`:** Sección de navegación con enlaces internos y externos.

## Contenido Principal (`<main>`)
- **Introducción:**
  - **`<p>` y `<strong>`:** Párrafo introductorio con texto y palabras en negrita.

- **Experiencia (`<h2>` y `<ul>`):**
  - Lista desordenada (`<ul>`) de experiencias con la clase `list-item`.

- **Estudios (`<h2>` y `<ol>`):**
  - Lista ordenada (`<ol>`) de estudios con tipo de lista "a".

- **Habilidades Adquiridas (`<section>` y `<ul>`):**
  - Lista desordenada que destaca habilidades en desarrollo web.

- **Artículo sobre Desarrollo de Aplicaciones Web (`<section>` y `<article>`):**
  - Descripción breve sobre el desarrollo de aplicaciones web.

- **Preguntas Frecuentes (`<section>` y `<details>`):**
  - Preguntas desplegables con respuestas en detalles (`<details>`).

- **Formulario de Contacto (`<section>` y `<form>`):**
  - Formulario de contacto con campos para nombre, correo electrónico y teléfono.

## Pie de Página (`<footer>`)
- **Información de Contacto:**
  - Enlaces especiales para enviar un correo o llamar por teléfono.

## Apuntes Adicionales
- **Enlaces Externos (`<a>` con `target="_blank"` y `rel="noreferrer"`):**
  - Enlaces a LinkedIn y GitHub que se abren en una nueva pestaña.

- **Imagen Descargable (`<a>` y `<img>` con atributo `download`):**
  - Imagen personal descargable.

# Observaciones
- Se hace uso de IDs y clases para identificar y dar estilo a elementos específicos.
- Se utiliza un enfoque semántico con etiquetas HTML para mejorar la accesibilidad y la comprensión del contenido.
- El código HTML está estructurado con claridad en secciones como `<head>`, `<header>`, `<main>`, y `<footer>`.
- Se aplican buenas prácticas como el uso de metadatos, encabezados, listas y formularios.
- El formulario carece de un método de envío real (`<button type="button">Enviar</button>`), se podría mejorar con un servidor de backend y lógica de procesamiento.
