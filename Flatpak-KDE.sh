#!/bin/bash

#=========================================================================================#

# Instalación de Flatpak para KDE

#=========================================================================================#

sudo apt install flatpak -y                                                                 # Instalación de Flatpak
sudo apt install plasma-discover-backend-flatpak -y                                         # Instalación del backend de Flatpak para Plasma Discover
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo  # Añadir el repositorio de Flathub si no existe

#=========================================================================================#
echo "es necesario reiniciar." 

sudo shutdown -r 1 

# se descargan los paquetes desde flathub. 