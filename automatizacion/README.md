# Automatizacion
Utilizaremos "Azure" para realizar la automatizacion del Proyecto 
[MII_CC_Proyecto_Microservicios](https://javierfrereq.github.io/MII_CC_Proyecto_MicroServicios/)
### Instalación de AZURE CLIENTE
Debemos instalar los siguientes requisitos:
```
#!/bin/bash
#Instalación de Ansible
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install ansible

#Instalación de JQ "Nos servirá para el procesamiento de datos en .json"
sudo apt-get install jq

#Instalación python "Requisito para la instalación de cliente Azure"
sudo apt-get install python

#Instalación del CLiente Azure
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | \sudo tee /etc/apt/sources.list.d/azure-cli.list

sudo apt-key adv --keyserver packages.microsoft.com --recv-keys 52E16F86FEE04B979B07E28DB02C46DF417A0893
sudo apt-get install apt-transport-https
sudo apt-get update && sudo apt-get install azure-cli
```

### Utilizamos AZURE CLI para realizar el despliegue
Iniciamos sesión para ingresar a nuestra cuenta en Azure con el comando:
```az login```
Nos indicara que ingresemos a la página web e ingresemos el código para autenticación de nuestra cuenta en Azure
![image-2017-11-24](https://user-images.githubusercontent.com/32844919/33214122-d5db1eaa-d12a-11e7-9609-d07ef97bd301.jpg)
Una vez que ya iniciado sesión en la cuenta de Azure, procedemos a el script que ya creamos. Este automatizara la creación y el provisionamiento de la máquina virtual . 
* Ejecutamos el script [acopio.sh](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/acopio.sh) 
### Descripción del script 
Las Imagen detalla los comandos para la creación de la máquina virtual con sus datos y configuraciones

![image-2017-11-24](https://user-images.githubusercontent.com/32844919/33214783-95bedfa2-d12d-11e7-97f6-162affcef587.png)

![image-2017-11-24 1](https://user-images.githubusercontent.com/32844919/33215169-0a9a1c50-d12f-11e7-9ce6-d8246257dec0.jpg)

![image-2017-11-24 1](https://user-images.githubusercontent.com/32844919/33215204-35eba086-d12f-11e7-9344-51e46481a0e3.png)

![image-2017-11-24 2](https://user-images.githubusercontent.com/32844919/33215266-6f59d2b6-d12f-11e7-960f-a465599a4121.png)

### Provisionamiento de la maquina virtual:
En este [Enlace](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/tree/master/provision/chef-solo) pueden observar el provisionamiento
>echo https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicio/tree/master/provision/chef-solo

![image-2017-11-24 3](https://user-images.githubusercontent.com/32844919/33215411-f0e58cbc-d12f-11e7-964f-b2e7502acdd7.png)


