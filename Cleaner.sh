#!/bin/bash

# Este script es para limpiar la totalidad del bloatware en debian 12 KDE 

# Otorgar permisos de ejecución al script
chmod +x $0

#por si te olvidas el nombre kdeconnect-sms 

# Purga por lotes 
sudo apt -f purge 'akonadi*' 'libreoffice*' 'kdeconnect*'-y && 

# Purga individual
sudo apt remove kate gwenview gimp imagemagick uxterm vim sweeper spectacle sieveeditor kwallet konsole konqueror -y &&

#Limpieza de paquetes obsoletos
sudo apt autoremove && sudo apt autoclean && sudo apt clean -y &&

#Actualización de paquetes

sudo apt update && sudo apt upgrade -y

echo "Proceso de limpieza y actualización completado."

