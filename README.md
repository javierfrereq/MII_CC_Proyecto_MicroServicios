# MicroServicios web de "Preguntas & Respuestas" y "Lugares"

Proyecto se basa en ayudar al funcionamiento del Juego "Prelo" ya que este consiste en resolver preguntas que otros usuarios seleccionaran en el mapa

En este **[enlace](https://tonyesp.github.io/MII_CC_Proyecto/)** podrás informarte de que consiste el Juego "Prelo".

### **Solución propuesta**

Desarrollar microservicios para ser utilizados en una aplicación móvil (Android), brindándole preguntas y respuestas aleatorias e información de lugares

### **Introducción descriptiva del proyecto**

El proyecto consta de un servidor con dos microservicios, los cuales podrían utilizar los siguientes requerimientos:

- Ubuntu 16.04 o Debian 7 and 8, SUSE Linux Enterprise Server 12 and 12 SP1, Red Hat Enterprise Linux/Centos 6.5 and 7 Base de datos
- PHP (5.6+ or 7.0+)
- Apache 2.4 with mod\_php Versión de PHP
- MySQL o MariaDB 5.5+, Oracle 11g, PostgreSQL, &amp; SQLite Servidor web


### Arquitectura

La arquitectura es basada en microservicios.

**¿Qué son microservicios?**

>Consiste en desarrollar una aplicación software como una serie de pequeños servicios, cada uno ejecutándose de forma autónoma y comunicándose entre sí.

>Además, cada uno es independiente y su código debe poder ser desplegado sin afectar a los demás. Incluso cada uno de ellos puede escribirse en un lenguaje de programación diferente, ya que solo exponen la API (una interfaz común, a la que le da igual el lenguaje de programación en la que el microservicio esté programado por debajo) al resto de microservicios.

Los microservicios a desarrollar son los siguientes:"Preguntas & Respuestas" y "Lugares".

### Logo de los microservicios

Los logos de los microservicios son los siguientes:

| **Preguntas & Respuestas**    | **Lugares** |
|---------------------------------| ------------|
![logopreguntitas](https://user-images.githubusercontent.com/32844919/33189492-6b04b62c-d0a3-11e7-8399-a19806d14fd2.jpeg)|![logolugarcitos](https://user-images.githubusercontent.com/32844919/33189484-5c918494-d0a3-11e7-9dfc-c656f44b20bc.jpeg)

### Web del proyecto

En la página web podrás encontrar la documentación de todo el proyecto ***[enlace](https://javierfrereq.github.io/MII_CC_Proyecto_MicroServicios/)***

### Automatización para la creación de maquinas virtuales

La automatización se ha realizado utilizando el cliente de Azure. La imagen utilizada ha sido "UbuntuLTS".

**¿Porque utilizar UbuntuLTS?**

Se decidió utilizar “UbuntuLTS” ya que LTS significa sólo que la versión recibe un "soporte a largo plazo"(Long Term Support)
Esta versión de Ubuntu será soportada oficialmente por Canonical durante los próximos cinco años; eso significa que seguirá recibiendo actualizaciones de seguridad, y que el software incluido se centra en la estabilidad.

La documentación se detalla en este **[enlace](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/automatizacion/README.md)**

* Despliegue:52.174.57.150


### Provisionamiento

El provisionamiento con Chef-Solo de los servicios lo puedes encontrar en este ***[enlace](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/provision/chef-solo/README.md)***

El provisionamiento con Ansible de los servicios lo puedes encontrar en este **[enlace](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/provision/ansible/README.md)**

### Orquestación 

La orquestación se realizó utilizando la Vagrant 2.0.1 y del cliente Azure, he decidido utilizar este cliente ya que nos facilita la información para configurar el vagrant de forma más sencilla.

La documentación se detalla en este **[enlace](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/orquestacion/README.md)**

* Despliegue Vagrant:52.166.234.128

### Contenedores

Se utilizó Docker ya que nos brinda integración y elimina los conflictos entre paquetes, lenguajes y versiones. Crea y envía aplicaciones distribuidas con contenido e infraestructura gestionadas y protegidas mediante TI. 

Hubo muchos cambios en el transcurso del desarrollo del proyecto y ahora se procederá a trabajar con Python. 

Para este hito se ha configurado un Dockerfile la cual vamos a utilizar la *python:alpine*  ya que viene instalado Python adicional a eso el peso es menor (89.2 Mb) comparado con otras imágenes.

Con la ayuda de la plataforma Azure desplegamos la máquina virtual en la cual contiene la imagen creada en Dockerhub. Para más información puede consultar el siguiente [enlace](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/tree/master/contenedores).

* Contenedor:https://microservicioexamen.azurewebsites.net

* Dockerhub:https://hub.docker.com/r/javierfrereq/mii_cc_proyecto_microservicios

### Composición de servicios

Se ha realizado una composición de servicios, para los cuales se utilizó la imagen **[python:2.7]( https://hub.docker.com/_/python/)** para ser servicio API Rest y la Imagen de **[mysql:8]( https://hub.docker.com/_/mysql/)** para la base de datos en la cual se almacenara la información de las Preguntas y Respuestas. 
El API Rest se desarrolló en Python con ayuda del microframework **[FLASK](http://flask.pocoo.org/)** y para el servidor de sistema de gestión de base de datos se usó Mysql ya que está desarrollado bajo licencia dual: Licencia pública general/Licencia comercial.
Con la ayuda de la plataforma Azure desplegamos la máquina virtual. Para más información puede consultar el siguiente **[enlace]( https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/compose/README.md)**.

* Hito6:http://hito6freddy.eastus.cloudapp.azure.com

### Licencia

Proyecto bajo licencia **[GNU GLP V3](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/LICENSE)**.

