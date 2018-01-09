## Despliegue de un contenedor de Dockerhub  
### Que es Docker? 
Docker es una plataforma de software que le permite crear, probar e implementar aplicaciones rápidamente. Docker empaqueta software en unidades estandarizadas llamadas contenedores que incluyen todo lo necesario para que el software se ejecute, incluidas bibliotecas, herramientas de sistema, código y tiempo de ejecución. Con Docker, puede implementar y ajustar la escala de aplicaciones rápidamente en cualquier entorno con la certeza de saber que su código se ejecutará.

![homepage-docker-logo-2-300x248](https://user-images.githubusercontent.com/32844919/34720160-0364ff44-f53e-11e7-8bf8-149e51d829f9.png) 

En primer lugar, instalamos Docker con la siguiente línea de comandos:
``` sudo apt-get install docker.io ```

Después procedemos a descargarnos el contenedor de la aplicación como se ve a continuación:
``` docker pull javierfrereq/mii_cc_proyecto_microservicios ```

A continuación, iniciamos el servicio con la siguiente línea:
``` sudo service docker start ```

Finalmente, ya solo nos queda ejecutar el contenedor:
``` sudo docker run -it javierfrereq/mii_cc_proyecto_microservicios bash ```

Si desea más información puede consultar el siguiente [documento](). 
