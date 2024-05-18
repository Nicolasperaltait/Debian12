#!/bin/bash

# Este script es para limpiar la totalidad del bloatware en debian 12 KDE 
#por si te olvidas el nombre kdeconnect-sms 

echo "Purga por lotes "

sudo apt -f purge 'akonadi*' &&
sudo apt -f purge 'libreoffice*' &&
sudo apt -f purge 'kdeconnect*'-y &&

echo "Purga individual"

sudo apt remove kate gwenview gimp imagemagick uxterm vim sweeper spectacle sieveeditor kwallet konsole konqueror -y &&

echo "Limpieza de paquetes obsoletos"

sudo apt autoremove && sudo apt autoclean && sudo apt clean -y &&

echo "Actualización de paquetes"

sudo apt update && sudo apt upgrade -y

echo "Proceso de limpieza y actualización completado."

