#!/bin/bash

# Este script es para limpiar la totalidad del bloatware en debian 12 KDE 

echo "================== Purga por lotes =================="
sudo apt -f purge 'akonadi*' -y 
sudo apt -f purge 'libreoffice*' -y 
#sudo apt -f purge 'kdeconnect*' -y &&

echo "================== Purga individual =================="
sudo nala purge kate gwenview gimp imagemagick uxterm vim sweeper spectacle sieveeditor kwallet konsole konqueror -y 

echo "================== Limpieza de paquetes obsoletos =================="
# sudo apt autoremove -y  && sudo apt autoclean -y 

sudo nala autopurge -y && sudo nala autoremove -y  && sudo nala clean 

echo "================== Actualización de paquetes =================="
sudo nala update && sudo nala upgrade -y

echo "================== Proceso de limpieza y actualización completado. =================="