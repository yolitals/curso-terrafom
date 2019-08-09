# Infraestructura inmutable con docker
En esta demo se contruira una imagen con una aplicación html usando ngnix como servidor web.

## Instalar docker
- MacOs: https://docs.docker.com/docker-for-mac/install/
- Ubuntu y otras distribuciones de linux: https://docs.docker.com/v17.12/install/linux/docker-ce/ubuntu/
- Windows: https://docs.docker.com/docker-for-windows/install/

## Crear una cuenta en docker hub
Docker hub es un registry publico donde se encuentran varias imagenes de docker con diferentes tecnologias instaladas. La imagen que se utiliza en esta demo es una imagen publica que se encuentre en Docker hub. Es necesario crear una cuenta en https://hub.docker.com/ para poder publicar la imagen resultante.

## Autenticarse en docker hube
```sh
# Ingresar usuario y contraseña cuando sea solicitada
$ docker login

```
## Construir la imagen
```sh
$ docker build [DOCKERHUB_USER]/ngnix-app:v1 
```
## Correr la aplicacion
```sh
$ docker run -it -p $host_port:80 [DOCKERHUB_USER]/ngnix-app:v1 
```
## Publicar la imagen
```sh
$ docker push [DOCKERHUB_USER]/ngnix-app:v1 
```