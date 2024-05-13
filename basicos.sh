#!/bin/bash

echo "Debian basic packages"
sudo apt update && sudo apt upgrade -y &&
sudo apt install nala -y  && 
sudo nala install wget git curl neofetch ufw clamav clamav-daemon font-manager zsh htop preload -y

echo "Packages installed" 

echo "Basic configuration"

echo "ufw configuration"
sudo ufw enable && sudo ufw default deny incoming && sudo ufw default allow outgoing && 

echo "clamav configuration"

# Detener el servicio de actualización de ClamAV
sudo systemctl stop clamav-freshclam && 
# Actualizar la base de datos de firmas de virus de ClamAV
sudo freshclam && 
# Iniciar de nuevo el servicio de actualización de ClamAV
sudo systemctl start clamav-freshclam
# Habilitar y iniciar el servicio de ClamAV
sudo systemctl enable clamav-daemon && sudo systemctl start clamav-daemon

echo "Basic configuration done"