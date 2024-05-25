#!/bin/bash


# Actualizacion 
echo "=================== Actualizacion =================="
sudo apt update && sudo apt upgrade -y

echo "================== Instalacion Nala =================="
sudo apt install nala -y 

echo "================== Nala Fetch Configuration =================="
sudo nala fetch --auto -y 

echo "================== Instalacion Basicos =================="
sudo nala install wget curl ufw font-manager zsh htop preload kitty -y


# Configuraciones basicas
echo "================== Firewall configuration =================="


sudo ufw enable                  # Habilitar UFW para gestionar el firewall
sudo ufw default deny incoming   # Configurar el firewall para denegar todas las conexiones entrantes por defecto
sudo ufw default allow outgoing  # Configurar el firewall para permitir todas las conexiones salientes por defecto


echo "================== Anti-Virus configuration =================="
sudo nala install clamav -y && sudo nala install clamav-daemon -y

sudo systemctl stop clamav-freshclam   # Detener el servicio de actualización de ClamAV
sudo freshclam                         # Actualizar la base de datos de firmas de virus de ClamAV
sudo systemctl start clamav-freshclam  # Iniciar de nuevo el servicio de actualización de ClamAV
sudo systemctl start clamav-daemon     # Habilitar y iniciar el servicio de ClamAV
#
#
#
echo "Basic configuration done"