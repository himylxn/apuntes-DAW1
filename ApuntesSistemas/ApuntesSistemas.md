# Sistemas Apuntes
# Docker
Sirve para virtualizar sin necesidad de infraetructura (VirtualVox), sirve para lanzar lo que no tienes por ejemplo para instalar un servidor XAMP, Wordpress etc...

Docker es un sistema operativo para contenedores. De manera similar a cómo una máquina virtual virtualiza (elimina la necesidad de administrar directamente) el hardware del servidor, los contenedores virtualizan el sistema operativo de un servidor.

## Guia instalación
- #### Hay que hacerse super usuario con "*sudo su -*"
- #### Configurar aptel repositorio de Docker.
- #### Actualizar repositorios
 ```bash
sudo apt-get update
``` 
- #### Instalar
```bash
-sudo apt-get install ca-certificates curl gnupg
``` 

```bash 
sudo install -m 0755 -d /etc/apt/keyrings
``` 

```bash
 curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg sudo chmod a+r /etc/apt/keyrings/docker.gpg
``` 

```bash
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
``` 
- #### Upgradear
```bash
sudo apt-get update
```


# Servidor
Un servidor web es un programa que están constantemente escuchando

- APACHE es el mas famoso

