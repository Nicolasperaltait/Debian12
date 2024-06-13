#!/bin/bash

#============================================================================================================================#

# Este script es el encargado de la instalacion de Microsft Edge por repositorio

#============================================================================================================================# 
sudo apt install software-properties-common apt-transport-https ca-certificates curl -y # instalacion de paquetes iniciales

curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/microsoft-edge.gpg > /dev/null # instalamos el repositorio // Esto genera un archivo en la ruta /usr/share/keyring/microsoft.edge

echo 'deb [signed-by=/usr/share/keyrings/microsoft-edge.gpg] https://packages.microsoft.com/repos/edge stable main' | sudo tee /etc/apt/sources.list.d/microsoft-edge.list # agregamos ek repositorio al systema.

#============================================================================================================================#

sudo nala update && sudo nala install microsoft-edge-stable -y

echo "Instalacion Terminada, Ya puede usar Microsoft Edge"