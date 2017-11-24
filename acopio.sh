#!/bin/bash

# Crear el grupo de recursos que se utulizara en Azure
az group create --name CCJavier --location westeurope

# Creamos la maquina virtual alojada en Azure con el siguiente comando, con el grupo y nombre del recurso anterior.
ipAddress=$(az vm create -g CCJavier -n RemoteCCJavier --image UbuntuLTS --generate-ssh-keys | jq -r '.publicIpAddress')

echo Datos de la maquina creada:
echo -name : RemoteCCJavier
echo -ip : $ipAddress
echo -------------------------

# Abrimos los puertos usuales
az network nsg create --resource-group CCJavier --location westeurope --name RemoteCCJavierNSG
az network nsg rule create --resource-group CCJavier --nsg-name RemoteCCJavierNSG --name RemoteCCJavierNSGRule80 --protocol tcp --priority 1000 --destination-port-range 80
az network nsg rule create --resource-group CCJavier --nsg-name RemoteCCJavierNSG --name RemoteCCJavierNSGRule20 --protocol tcp --priority 999 --destination-port-range 20
az network nsg rule create --resource-group CCJavier --nsg-name RemoteCCJavierNSG --name RemoteCCJavierNSGRule22 --protocol tcp --priority 998 --destination-port-range 22

#provision
echo Provisionar con chef-solo:
echo https://github.com/javierfrereq/MII_CC_Proyecto_MicroServicios/tree/master/provision/chef-solo
