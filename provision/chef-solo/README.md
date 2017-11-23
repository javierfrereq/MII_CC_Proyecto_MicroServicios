# Provisionamiento

Se creará una receta para provisionar el servidor donde se alojaran los microservicios

## Por que usar Chef-solo?
Nos sirve para implementar automáticamente la aplicación de las topologías a la nube cuando se construye.
Chef es una herramienta de la categoría de manejo de configuracion (configuration management).

## Instalación

### Instalar el cliente chef-solo 

Para realizar la instalación debemos escribir la siguiente línea de comandos.

```Apt-get install chef-solo ```

```curl -L https://www.opscode.com/chef/install.sh | bash```

Ya instalado podemos verificar que se ha instalado correctamente ingresando la siguiente línea de comando 

```Chef-solo --version``` 

![imagen 1](https://user-images.githubusercontent.com/32844919/32694308-095a7cd2-c73d-11e7-8eb8-93d02d22a3ac.JPG)

Con ayuda de la receta, lo primero que haremos será actualizar el sistema y la lista de repositorios.

Se provisiona con los siguientes servicios:

* php 
* Apache2
* Sql-server

En la  Ruta /home/javer/chef/cookbooks

* 1.- Crear un directorio "owncloud" 

* 2.- Crear un directorio "recipes"

* 3.- Crear un archivo "default.rb"

![imagen 1](https://user-images.githubusercontent.com/32844919/32694355-eb5f805a-c73d-11e7-8eea-dac39e24a22c.JPG)

* 4.- En el archivo "default.rb" escribimos lo siguiente:

![imagen 2](https://user-images.githubusercontent.com/32844919/32694363-3389c0fc-c73e-11e7-8741-f676379b2897.JPG)

* 5.- Ejecutamos el comando 
```
sudo chef-solo -c ~/chef/solo.rb
```

![imagen 3](https://user-images.githubusercontent.com/32844919/32694373-762a0278-c73e-11e7-93ad-a2dfc3eb744a.JPG)

Podemos visualizar que se provisiono correctamente los servicios que necesitamos
