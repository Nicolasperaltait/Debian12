#!/bin/bash

#============================================================================================================================#

# Este script es el Principal y será el encargado de llamar a los demás scripts

#============================================================================================================================#


# Cambiamos los permisos de los scripts a ejecución

sudo chmod 755 *

# Ejecutamos los scripts
sudo ./Start.sh && sudo ./Cleaner-KDE.sh && sudo ./EdgeRepo.sh && sudo ./ohmyzsh.sh && sudo ./PowerLvl10K.sh && sudo ./Flatpak-KDE.sh



# git clone https://github.com/Nicolasperaltait/Debian12.git && cd Debian12/ && sudo chmod 755 00-Script.sh && sudo ./00-Script.sh