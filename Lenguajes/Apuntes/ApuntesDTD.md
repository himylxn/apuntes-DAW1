# Apuntes DTD

ELEMENT ->

### " * " -> 0 o más
### " ? " -> ninguna o 1
### " + " -> 1 o muchas
### "EMPTY" -> cuando está vacio

Ejemplo: 
<!ELEMENT bebida (refrescos*, agua?)> -> se puede seleccionar los 2

<!ELEMENT bebida (refrescos* | agua?)>  -> o uno o otro.
ATTLIST->
### "CDATA" -> cuando es un dato
### "ID" -> cuando es un identificador
### "#REQUIRED" -> cuando es obligatorio   
### "#IMPLIED" -> cuando el atributo es opcional
