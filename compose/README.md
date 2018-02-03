## Despliegue de un contenedor de Docker Hub  
### Que es docker-compose? 
Docker es una plataforma de software que le permite crear, probar e implementar aplicaciones rápidamente. Docker empaqueta software en unidades estandarizadas llamadas contenedores que incluyen todo lo necesario para que el software se ejecute, incluidas bibliotecas, herramientas de sistema, código y tiempo de ejecución. Con Docker, puede implementar y ajustar la escala de aplicaciones rápidamente en cualquier entorno con la certeza de saber que su código se ejecutará.

![homepage-docker-logo-2-300x248](https://user-images.githubusercontent.com/32844919/34720160-0364ff44-f53e-11e7-8bf8-149e51d829f9.png) 
### Creación de la imagen Docker
Primero debemos creamos una cuenta en [Docker](https://hub.docker.com).
Para poder crear la imagen desde nuestro [dockerfile](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/Dockerfile), debemos enlazar el repositorio de [GitHub](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios) a utilizar con el repositorio de [DockerHub](https://hub.docker.com/r/javierfrereq/mii_cc_proyecto_microservicios) y luego crear automáticamente la imagen. 

![image-2018-01-09](https://user-images.githubusercontent.com/32844919/34741363-b677f700-f582-11e7-90ab-f1d3e083a8ce.png)
![image-2018-01-09 1](https://user-images.githubusercontent.com/32844919/34741782-1a8d8f88-f584-11e7-90c4-67813812ab96.png)

Se ha configurado un Dockerfile la cual vamos a utilizar en este Hito la *python:alpine*  ya que viene instalado Python adicional a eso el peso es menor (89.2 Mb) comparado con otras imágenes.  [enlace](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/Dockerfile).
Y como ejemplos se ha realizado un dockerfile con la distribución de *Centos* configurado los servicios de httpd, mysql, php, supervisord y sshd lo pueden visualizar en el siguiente [enlace](https://github.com/javierfrereq/prueba-docker/blob/master/DockerfileCentos) y un dockerfile con la distribución de *Ubuntu* configurado el Mysql, lo pueden visualizar en el siguiente enlace [enlace]( https://github.com/javierfrereq/prueba-docker/blob/master/DockerfileSQL).

Podemos visualizar que el dockerfile a utilizar esta subido correctamente en la cuenta de DockerHub.

![image-2018-01-09 2](https://user-images.githubusercontent.com/32844919/34743413-eaddaca4-f589-11e7-8a86-c7b2ca27e91f.png)

Nota: previo al despliegue, iniciamos sesión para ingresar a nuestra cuenta en Azure con el comando:
```az login```. Para más detalle pueden visualizarlo en este [enlace](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/tree/master/automatizacion).

### Despliegue de un contenedor de Docker Hub
1.- Instalamos Docker con la siguiente línea de comandos:

`sudo apt-get install docker.io`

2.- Descargarnos el contenedor de la aplicación:

`docker pull javierfrereq/mii_cc_proyecto_microservicios`

3.- Iniciamos el servicio con la siguiente línea:

`sudo service docker start`

4.- Ejecutamos el contenedor:

`sudo docker run -it javierfrereq/mii_cc_proyecto_microservicios bash`

### Despliegue de la máquina virtual en Azure con la imagen de Docker Hub creada
1.- Creación de deployment user set:

`az webapp deployment user set --user-name javierfrere --password contraseña`

2.- Creación de un grupo para los servicios:

`az group create --name MII_CC_Master --location "West Europe"`

3.- Creación del plan de los servicios:

`az appservice plan create --name MII_CC_Master_UGR --resource-group MII_CC_Master --sku S1 --is-linux`

4.- Crear nuestra web app service con nuestra imagen subida a Docker Hub:

`az webapp create --resource-group MII_CC_Master --plan MII_CC_Master_UGR --name microservicioexamen --deployment-container-image-name javierfrereq/mii_cc_proyecto_microservicios`

### Comprobación que la Creación de la imagen Docker fue exitosa.
![image](https://user-images.githubusercontent.com/32844919/35116634-63354924-fc8c-11e7-910c-b7b5f125b931.png)
