## Composición de servicios en Azure  
### Que es docker-compose? 
Docker-compose es un mecanismo que permite utilizar varias imágenes y comunicarlas, para obtener los requisitos necesarios para hacer funcionar nuestra aplicación.
Las imágenes que se utilizaron para los servicios a implementar fueron las siguientes:
**Servicio API: python:2.7**
**Servicio MySQL: mysql:8**
La plataforma Azure nos ayudara a desplegar la composición de servicios que se ha creado. 
### Instalación requerida
Instalamos docker-compose con la siguiente línea de comandos **[Enlace](https://docs.docker.com/compose/install/#master-builds)**:

```sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose```

![dockercompose instalacion all](https://user-images.githubusercontent.com/32844919/35761606-cba9ea78-088a-11e8-85af-a961c301d3f6.PNG)

### Creación de los **Dockerfiles** para los diferentes servicios
Los **Dockerfiles** de los servicios son los siguientes:
**[Dockerfile API]( https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/compose/service/Dockerfile)**
**[requirements.txt]( rehttps://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/tree/master/compose/service)**
**[Dockerfile MySQL]( https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/compose/db/Dockerfile)**
### Creación del **app**  
**[app.py](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/compose/service/app.py)**

Ejemplo adicional de **[App]( https://github.com/javierfrereq/Ejercicio_Hito_6/blob/master/api.py)**

**Imágenes del ejemplo adicional**

![ejemplo3](https://user-images.githubusercontent.com/32844919/35767168-3f08cece-08e7-11e8-95e2-360428ed635d.jpg)
![ejemplo2](https://user-images.githubusercontent.com/32844919/35767169-414b2f1a-08e7-11e8-9823-4ad110903ab6.jpg)
![ejemplo1](https://user-images.githubusercontent.com/32844919/35767170-42f35702-08e7-11e8-8888-e3d3e781b581.jpg)
### Prueba del docker-compose
Para verificar si el docker-compose funciona escribimos el siguiente comando:

`sudo docker-compose up`

![docker](https://user-images.githubusercontent.com/32844919/35761893-79e9ce3e-088e-11e8-8cf2-5ae54e1ef0fa.PNG)

Luego verificamos si se crearon correctamente escribiendo el siguiente comando:

`sudo docker-compose ps`

![verficacion](https://user-images.githubusercontent.com/32844919/35761944-46a68f02-088f-11e8-912c-2b453cfe5242.PNG)


### Despliegue del docker-compose en Azure

Utilice la siguiente **[Guía]( https://docs.microsoft.com/es-es/azure/virtual-machines/linux/docker-compose-quickstart)**

1.- Iniciamos sesión en la cuenta de **[Azure](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/tree/master/automatizacion)**

2.-  Ingresamos el siguiente comando para crear un grupo. 

`az group create --name MII_CC_Master-Frere --location eastus`

3.- Creamos una máquina virtual de Docker para azure. 

`az group deployment create --resource-group MII_CC_Master-Frere --template-uri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/docker-simple-on-ubuntu/azuredeploy.json`

**Nota: Elegimos esta imagen porque viene instalado docker-compose.**

4.- Nos conectamos mediante SSH a la VM.

`ssh  freddyfrere@hito6freddy.eastus.cloudapp.azure.com`

![conexion](https://user-images.githubusercontent.com/32844919/35767244-10d95bde-08e9-11e8-83f9-0c15852729ec.PNG)
* Verificamos que esté instalado el docker-compose en la VM de Azure. 
![dockercompose](https://user-images.githubusercontent.com/32844919/35767276-ab841a02-08e9-11e8-9f23-7559bb1d1596.PNG)

5.- Procederemos a clonar el repositorio de GitHub donde tenemos los servicios.
* Ingresamos los siguientes comandos. 

`sudo apt-get install git`

`git clone git@github.com:javierfrereq/MII_CC_Proyecto_MicroServicios.git`

* Luego procedemos a ubicarnos en el directorio clonado y ejecutamos el siguiente comando:

`sudo docker-compose up –d`

![clonacion](https://user-images.githubusercontent.com/32844919/35767410-16302e84-08ec-11e8-8394-bcfca0660f4e.PNG)
![final](https://user-images.githubusercontent.com/32844919/35767471-157ac8a4-08ed-11e8-90d2-e43944f8df32.PNG)

### Comprobación del servicio activo.
![okprueba](https://user-images.githubusercontent.com/32844919/35767611-f1bfb3b8-08ef-11e8-8e71-f5972617ea43.PNG)
![ok](https://user-images.githubusercontent.com/32844919/35767652-a57e995a-08f0-11e8-8574-aaf83c2bbb55.PNG)


