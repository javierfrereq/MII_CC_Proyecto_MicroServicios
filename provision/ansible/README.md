# Provisionamiento

Se creará una receta para provisionar el servidor con un sistema operativo UbuntuTLS en donde se alojarán los microservicios.

## Por que usar Ansible?
Ansible es una herramienta que permite Provisionar y Automatizar todas tareas con que nos encontramos los administradores de sistema.

## Como funciona Ansible?
Una de las ventajas es que solo necesitamos instalar ```Ansible``` en la maquina sin necesidad de instalar agentes o servidores adicionales. 
Ansible se conecta a los equipos que quieras configurar utilizando ```SSH``` y le envía las instrucciones que quieres ejecutar y las configuraciones que se deben aplicar.

![image-2017-12-17](https://user-images.githubusercontent.com/32844919/34084110-675ee0b6-e37b-11e7-8823-3bf3ce2ef498.jpg)
## Pre requisito para Ansible
```apt-get install python```

## Instalación de Ansible
```
apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install ansible 
```
Se provisiona con los siguientes servicios:

* php 
* Apache2
* Sql-server

Una vez lista la máquina virtual en Azure que vamos a provisionar debemos agregar la Ip de la MV en el host de Ansible

Ruta /etc/ansible/hosts

```
Hosts
[IP] ansible_user=ubuntu
```

La receta para el provisionamiento es la siguiente [Ansible]() 

