# Apuntes Contornos

## Diagrama de clases

La conferencia puede tener varias sesiones. Una sesión posee fecha y hora de inicio, pertenece solo a una conferencia y no tiene razón de ser sin una conferencia.

**``Nota``**: Los atributos fecha/hora se pueden poner de tipo string, pero también podemos presuponer que habrá el formato Date/Hour en el lenguaje que utilicemos, por lo que podemos poner el tipo de atributo de esa clase.

Los participantes en una sesión pueden ser oradores o público.

**``Nota``**: Herencia; relación de generalización desde las clases orador/público a la clase Participante. Todos ellos tienen que inscribirse en la conferencia. Puede cancelarse o confirmarse una inscripción.

**``Nota``**: lo hacemos con métodos pero podría hacerse con una clase 
intermedia "Inscripción" que relacionase Sesión con Participante.

Uno o más artículos científicos se presentan en una sesión. Cada artículo puede ser corto o largo y trata de un tema determinado. Un autor puede tener uno o varios artículos presentados en la conferencia. Coloca los atributos que te parezcan convenientes.

![](./img/Diagrama1.PNG)
