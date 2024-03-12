# PowerShell

"Cmdelet" son los comandos en powerShell 


### Ayuda
Con get-help consigues la ayuda y con el parametro
-examples te da ejemplos

```powershell
get-help get-date -examples
```

### Tuberias

```powershell
get-date | fl day, year
```

### Variables

Asi se crea una variable
```powershell
$fecha = get-date
$fecha
```



Es un lenguaje orientado a objetos entonces se podria hacer esto:
```powershell
$fecha.year
$fecha.day
$fecha.month
```


### Entrada y Salida

Salida:
```powershell
Write-Host Hola Mundo hoy es dia $fecha.day del mes $fecha.month del año $fecha.year
```


Entrada:
```powershell
$nombre = Read-Host Escribe tu nombre:
```

### Scripts

