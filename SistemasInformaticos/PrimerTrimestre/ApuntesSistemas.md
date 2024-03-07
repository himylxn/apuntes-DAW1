# Sistemas Apuntes

## Hardware

- **Placa base:**
  - *Es una placa con circuitos que sirve para conectar los componentes del ordenador (CPU, GPU, RAM, Discos Duros, etc...)*
  - *(Es la base de un ordenador)*
  - **Factor de forma:** ATX, mini ITX, micro-ATX, Flex-ATX.

- **Chipset:**
  - *Conjunto de circuitos integrados en la placa base encargado de coordinar el flujo de datos de algunos componentes de la placa base.*
  - *Puente Norte*
  - *Puente Sur*
  - *A día de hoy los hay menos porque los procesadores ya se encargan de esa función*

- **BIOS:**
  - *Pequeño programa instalado en la placa base en una memoria no volátil.*
  - *Sirve para arrancar el ordenador, verificar que todo va bien y decir cómo arrancar el sistema operativo.*
  - *Además, permite hacer pequeñas configuraciones como cambiar el orden de arranque, velocidad del procesador, activar virtualización, etc.*

- **Conectores de alimentación:**
  - *Se usan para pasar la energía de la fuente a la placa base (Conector ATX)*

- **Zócalos para el microprocesador:**
  - *Sirven para conectar un procesador a una placa. Los más conocidos son los de AMD e Intel.*

- **Ranuras de expansión:**
  - *Se usan para conectar tarjetas adicionales a la placa base, como tarjetas de sonido o de red.*
  - *Ejemplos: PCI, PCIe, AGP*

- **Slots de RAM:**
  - *Sirve para conectar las memorias RAM a la placa base. Si la placa lo permite, es mejor poner los módulos en DUAL CHANNEL*

- **Ranuras para discos:**
  - *Sirven para conectar dispositivos de almacenamiento a la placa base a través de conectores IDE, SATA o M.2, entre otros.*

- **Microprocesadores:**
  - *El procesador es el cerebro de un ordenador y se encarga de hacer cálculos y ejecutar instrucciones para que el ordenador realice tareas.*
  - *Cuantos más núcleos tenga, más tareas podrá realizar.*

- **Bus de datos y bus de direcciones:**
  - *Un procesador se tiene que comunicar con el resto de componentes de un PC, principalmente con la RAM.*
  - *El bus de datos es por donde viajan los datos y el bus de direcciones es la señal que indica dónde deben ir esos datos*

- **Núcleos:**
  - *Un núcleo es como si un procesador tuviera varios procesadores dentro que se encargan de hacer que todo se haga de una manera más eficiente. Los procesadores que están dentro del procesador son los núcleos.*

- **Otras características:**
  - *Overclocking: Subirle la frecuencia al procesador para que vaya más rápido, pero también sube el consumo*
  - **Discos duros:**
    - *Dispositivo donde se guardan los datos*
    - *SSD*
    - *HDD*

## Sistemas Operativos

- *Un sistema operativo es un software fundamental que actúa como intermediario entre el hardware y el usuario. Trata de simplificar el manejo de un ordenador y, además, hacerlo más eficiente.*

- **Núcleo (kernel):**
  - *Es el núcleo del sistema operativo y se encarga de la gestión de los recursos.*

- **Servicios:**
  - *Ofrece a los programas una serie de funciones estándar y seguras para realizar tareas.*

- **Shell:**
  - *Es la interfaz que permite que el usuario se comunique con el sistema operativo.*

## Funciones

- *El sistema operativo se encarga de decidir cuántos recursos le va a dar en cada momento a cada aplicación.*
  - *Asigna recursos*
  - *Protección (impide que programas accedan a los recursos asignados a otros programas)*
  - *Contabilidad (mide qué cantidad de recursos le da a cada aplicación)*

## El Sistema Operativo como una Máquina Extendida

- *Un sistema operativo proporciona una capa adicional sobre el hardware que facilita su uso y control.*
  - *En resumen, el Sistema Operativo proporciona una interfaz ampliada a los programas, permitiendo ejecución, manipulación de E/S, operaciones sobre archivos y manejo de errores de manera eficiente y protegida.*

## El Sistema Operativo como Interfaz de Usuario

- *El sistema operativo como interfaz de usuario utiliza el intérprete de comandos shell o en interfaz gráfica como en Windows.*

## Componentes del Sistema Operativo

- **Núcleo:**
  - *Es la parte del sistema operativo que se comunica directamente con el hardware.*

- **Servicios:**
  - *Ofrece a los programas una serie de funciones estándar y seguras para realizar tareas.*
  - *Hay diferentes tipos de servicios, algunos son los encargados de gestionar la memoria, otros los periféricos, otros los archivos, etc.*

- **Shell**

## Estructura del Sistema Operativo

- *Sistemas operativos monolíticos: Todo en uno. Todas las partes del sistema operativo trabajan juntas en un solo programa grande.*

- *Sistemas operativos estructurados: Es un sistema por capas, favoreciendo modularidad y ocultación de información.*

## Procesos

- *Un proceso es un programa en ejecución.*

## Gestión de la Memoria

- *Se encarga de controlar y asignar la memoria a los programas y procesos para que todo vaya eficazmente.*

## Gestión de Entrada/Salida

- *Se encarga de administrar los dispositivos que interactúan con el exterior, como teclados, ratones, impresoras y otros periféricos, facilitando la comunicación eficiente entre el sistema operativo y estos dispositivos.*

## Sistemas de Ficheros

- *Estructura para organizar y almacenar datos en dispositivos de almacenamiento, como discos duros.*


# Comandos

## Comandos precticar

Crea la siguiente estructura de directorios ~/uno/dos/tres de una sola vez, con un solo comando y sin que existan uno, dos o tres.
```shell
mkdir -p /uno/dos/tres
```

Muestra la estructura de directorios completa de tu home.
```shell
tree
```

Lista los directorios etc que empiezan con e
```shell 
ls e*
```

Lista los dispositivos del equipo que empiezan con c y su tercera letra es una r
```shell

```

Listar todos los discos duros y particiones del equipo
```shell
lsblk
```

Lista el contenido del directorio de inicio del usuario actualmente conectado, mostrando archivos ocultos y ordenados del más antiguo al más nuevo.
```shell
ls -a 
```

Como se puede diferenciar un arquivo de un directorio del resultado anterior?
```shell

```

Indica tres comandos para ver el contido de un archivo sin utilizar un editor.
```shell
cat prueba
less prueba
more prueba

```

Indica quienes son los propietarios (usuario y grupos) del archivo /etc/passwd y que comando usastes para saberlo
```shell

```

Un usuario "normal" puede ler el contido de /etc/passwd? Y el de /etc/shadow? Por que?
```shell

```

Crea un directorio denominado propietario en tu home. Ahora haz una copia de /etc/passwd a ese nuevo directorio, quien son sus propietarios?
```shell

```

Crea un ficheiro vacio y oculto que se llame oculto.txt
```shell

```

Ahora mete en el archivo anterior el seguinte contenido "Este archivo está oculto". Solo puedes hacerlo con comandos, no con editores
```shell

```







