#!/bin/bash

#============================================================================================================================#

# Este script es el Principal y será el encargado de llamar a los demás scripts

#============================================================================================================================#


# Cambiamos los permisos de los scripts a ejecución
sudo chmod 755 *

# Ejecutamos los scripts
sudo ./Basicos.sh && sudo ./Cleaner-KDE.sh && ./EdgeRepo.sh
