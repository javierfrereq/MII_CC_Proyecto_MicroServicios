# MicroServicios web de "Preguntas & Respuestas" y "Lugares"

Proyecto se basa en ayudar al funcionamiento del Juego "Prelo" ya que este consiste en resolver preguntas que otros usuarios seleccionaran en el mapa.

En este ***[enlace](https://tonyesp.github.io/MII\_CC\_Proyecto/)*** podrás informarte de que consiste el Juego "Prelo"

### **Solución propuesta**

Desarrollar microservicios para ser utilizados en una aplicación móvil (Android), brindándole preguntas y respuestas aleatorias e información de lugares.

### **Introducción descriptiva del proyecto**

El proyecto consta de un servidor con dos microservicios los cuales podrían utilizar los siguientes requerimientos:

- Ubuntu 16.04 o Debian 7 and 8, SUSE Linux Enterprise Server 12 and 12 SP1, Red Hat Enterprise Linux/Centos 6.5 and 7 Base de datos
- PHP (5.6+ or 7.0+)
- Apache 2.4 with mod\_php Versión de PHP
- MySQL o MariaDB 5.5+, Oracle 11g, PostgreSQL, &amp; SQLite Servidor web


### Arquitectura

La arquitectura es basada en microservicios.

**¿Qué son microservicios?**

>Consiste en desarrollar una aplicación software como una serie de pequeños servicios, cada uno ejecutándose de forma autónoma y comunicándose entre sí.

>Además, cada uno es independiente y su código debe poder ser desplegado sin afectar a los demás. Incluso cada uno de ellos puede escribirse en un lenguaje de programación diferente, ya que solo exponen la API (una interfaz común, a la que le da igual el lenguaje de programación en la que el microservicio esté programado por debajo) al resto de microservicios.

Los microservicios a desarrollar son los siguientes:"Preguntas & Respuestas" y "Lugares"

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
Se decidió utilizar “UbuntuLTS” ya que LTS significa sólo que la versión recibe un "soporte a largo plazo"(Long Term Support).
Esta versión de Ubuntu será soportada oficialmente por Canonical durante los próximos cinco años; eso significa que seguirá recibiendo actualizaciones de seguridad, y que el software incluido se centra en la estabilidad.

La documentación se detalla en este ***[enlace](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/automatizacion/README.md)***

* Despliegue:52.174.57.150

### Provisionamiento

El provisionamiento de los servicios lo puedes encontrar en este ***[enlace](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/provision/chef-solo/README.md)***


### Licencia

Proyecto bajo licencia ***[GNU GLP V3](https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/blob/master/LICENSE)***

