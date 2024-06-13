#!/bin/bash

#====================================================================================================================#

# Este script es para limpiar la totalidad del bloatware en debian 12 KDE 

#====================================================================================================================#
echo "================== Purga por lotes =================="
sudo apt -f purge 'akonadi*' -y                                                                                         # Purga el bloatware de akonadi 
sudo apt -f purge 'libreoffice*' -y                                                                                     # Purga el bloatware de libreoffice

#====================================================================================================================#
echo "================== Purga individual =================="
sudo nala purge kate gwenview gimp imagemagick uxterm vim sweeper spectacle sieveeditor kwallet konsole konqueror -y    #Purga los paquetes individuales

#====================================================================================================================#
sudo nala autopurge -y && sudo nala autoremove -y  && sudo nala clean                                                   #Limpia el sistema de paquetes obsoletos

#====================================================================================================================#
sudo nala update && sudo nala upgrade -y
#====================================================================================================================#


echo "Proceso de limpieza y actualización completado."