# Apuntes sobre HTML

HTML (Lenguaje de Marcado de Hipertexto) es el lenguaje estándar utilizado para crear y diseñar páginas web. Aquí se presentan algunos elementos clave y buenas prácticas que puedes tener en cuenta:

## Metadatos (`<head>`):
- **`<title>`:** Especifica el título de la página que se muestra en la pestaña del navegador.
- **`<meta charset="utf-8">`:** Define la codificación de caracteres como UTF-8 para admitir caracteres especiales.
- **`<meta name="viewport" content="width=device-width">`:** Hace que la página sea adaptable a diferentes dispositivos.
- **`<meta name="robots" content="index, follow">`:** Instruye a los motores de búsqueda sobre la indexación y el seguimiento de enlaces.
- **`<meta name="theme-color" content="#09f">`:** Define el color de la barra superior del navegador en dispositivos móviles.
- **Favicon (`<link rel="icon" type="image/jpg" href="./img/dylan.PNG">`):** Permite agregar un icono de pestaña personalizado.

## Estructura Básica:
  ```html
<!DOCTYPE html>
<html lang="es">
<head>
  <!-- Metadatos y enlaces -->
</head>
<body>
    <!-- Contenido de la página -->
</body>
</html>

```

# Encabezados
Utiliza `<header>` para la cabecera de la página y `<h1>` para el título principal.
`<nav>` para agrupar enlaces de navegación.

# Contenido Multimedia
`<video>` y `<audio>` para contenido multimedia. Especifica atributos como `autoplay`, `muted`, y `loop` según sea necesario.

# Imágenes
`<img>` para mostrar imágenes. Usa atributos como `src`, `alt`, `height`, y `width` para mejorar la accesibilidad.

# Listas
Utiliza `<ul>` para listas desordenadas y `<ol>` para listas ordenadas. Cada elemento de la lista se define con `<li>`.

# Secciones y Artículos
Usa `<section>` para agrupar contenido relacionado y `<article>` para contenido independiente que puede vivir por sí mismo.

# Formularios
`<form>` para crear formularios. Usa `<input>` para campos de entrada, `<textarea>` para áreas de texto, y `<button>` para botones de envío.

# Enlaces
Utiliza `<a>` para crear enlaces. Puedes abrir enlaces en una nueva pestaña con `target="_blank"`.

# Comentarios
Agrega comentarios para explicar tu código. Se realizan con `<!-- comentario -->`.

# Buenas Prácticas
- **Semántica:** Utiliza etiquetas HTML de manera semántica para describir el significado del contenido.
- **ID y Clases:** Asigna IDs y clases para aplicar estilos y seleccionar elementos con CSS o JavaScript.
- **Accesibilidad:** Usa atributos como `alt` en imágenes para mejorar la accesibilidad.
- **Organización:** Estructura tu código con secciones claras como `<head>`, `<header>`, `<main>`, y `<footer>`.
- **Validación:** Valida tu código HTML utilizando herramientas en línea para asegurar la conformidad con los estándares.

Estos apuntes proporcionan una visión general de HTML y algunas prácticas recomendadas. ¡Experimenta y construye páginas web creativas!


