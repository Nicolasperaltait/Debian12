#!/bin/bash

#============================================================================================================================#

# Este script es el Principal y será el encargado de llamar a los demás scripts

#============================================================================================================================#


# Cambiamos los permisos de los scripts a ejecución

sudo chmod 755 *

# Ejecutamos los scripts
sudo ./Start.sh && sudo ./Cleaner-KDE.sh && sudo ./Flatpak-KDE.sh



# Estos no estan funcionando bien. 

# sudo ./EdgeRepo.sh &&  && sudo ./Zsh.sh