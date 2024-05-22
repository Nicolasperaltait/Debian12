#!/bin/bash

#============================================================================================================================#

# Este script es el encargado de la instalacion de Microsft Edge por repositorio

#============================================================================================================================#

# Actualizamos el sistema
sudo apt update && sudo apt upgrade -y 


# instalacion de paquetes iniciales 
sudo apt install software-properties-common apt-transport-https ca-certificates curl -y



# instalamos el repositorio // Esto genera un archivo en la ruta /usr/share/keyring/microsoft.edge
curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/microsoft-edge.gpg > /dev/null


# agregarnis ek repositorio al systema. 
echo 'deb [signed-by=/usr/share/keyrings/microsoft-edge.gpg] https://packages.microsoft.com/repos/edge stable main' | sudo tee /etc/apt/sources.list.d/microsoft-edge.list

sudo nala update && sudo apt install microsoft-edge-stable -y



echo "Instalacion Terminada, Ya puede usar Microsoft Edge"




