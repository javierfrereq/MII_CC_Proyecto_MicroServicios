# Orquestación 
Orquestaremos 2 máquinas virtuales, las que se requieren para el proyecto que se está desarrollando. 

Con la ayuda de Vagrant 2.0.1 y del cliente Azure, he decidido utilizar este cliente ya que nos facilita la información para configurar el vagrant de forma más sencilla.

## Que es Vagrant? 
Es una herramienta que facilita la creación de entornos virtuales para desarrollo. Por medio del Vagrant podemos instalar y configurar software en una máquina virtual.
La ventaja de Vagrant es que tiene “Cajas – Contenedores” con sistemas operativos para desarrollar directamente en ellos. 

![image](https://user-images.githubusercontent.com/32844919/33797928-756c85d0-dd10-11e7-9eb4-d9e2f72d3143.png)

## Instalaciones para realizar la Orquestación 
#### 1.- Instalamos el CLI de Azure 
Para realizar la instalación del [CLI_AZURE](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) podemos guiarnos en este [enlace](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/tree/master/automatizacion).

Iniciamos sesión en el terminal ``` az login``` .

Ejecutamos el siguiente comando ``` az ad sp create-for-rbac```  para crear una Aplicación de Azure con acceso al Administrador de Recursos de Azure y obtener los siguientes parámetros:


  ```azure.tenant_id = ENV['AZURE_TENANT_ID']```

  ```azure.client_id = ENV['AZURE_CLIENT_ID']```

  ```azure.client_secret = ENV['AZURE_CLIENT_SECRET']```

  
Ejecutamos ``` az account list --query "[?isDefault].id" -o tsv``` para obtener el ID de la suscripción de Azure.


  ``` azure.subscription_id = ENV['AZURE_SUBSCRIPTION_ID']``` 

#### 2.- Instalación de Vagrant
Descargamos el Vagrant correspondiente al sistema operativo que estamos usando de este [Enlace](https://www.vagrantup.com/downloads.html). 

Lo procederemos a instalar mediante el siguiente comando ```dpkg -i nombre_archivo.deb```

O Ejecutamos el siguiente comando ```sudo apt-get -y install vagrant```

Creamos un directorio y en él un archivo de nombre ```Vagrantfile``` en el cual vamos agregar lo siguiente [Enlace-Vagrantfile](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/orquestacion/Vagrantfile)



#### 3.- Ejecución del Vagrant-Azure
Para finalizar con la orquestación debemos ingresar los siguientes comandos:

>```vagrant box add azure https://github.com/azure/vagrant-azure/raw/v2.0/dummy.box --provider azure```

>```vagrant up --no-parallel```


#### 4.- Provisionamiento de la maquina virtual:
En este [Enlace](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/tree/master/provision/chef-solo) pueden observar el provisionamiento.
>echo https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicio/tree/master/provision/chef-solo
