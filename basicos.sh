#!/bin/bash


# Actualizacion 

echo "=================== Actualizacion =================="
sudo apt update && sudo apt upgrade -y

echo "================== Instalacion Basicos =================="
sudo apt install nala -y 
sudo install clamav clamav-daemon -y
sudo install wget curl ufw font-manager zsh htop preload kitty -y

# Configuraciones basicas

echo "================== Firewall configuration =================="
sudo ufw enable && sudo ufw default deny incoming && sudo ufw default allow outgoing && 

echo "================== Anti-Virus configuration =================="

sudo systemctl stop clamav-freshclam &&  # Detener el servicio de actualización de ClamAV
sudo freshclam &&                        # Actualizar la base de datos de firmas de virus de ClamAV
sudo systemctl start clamav-freshclam && # Iniciar de nuevo el servicio de actualización de ClamAV
sudo systemctl start clamav-daemon &&    # Habilitar y iniciar el servicio de ClamAV

echo "Basic configuration done"