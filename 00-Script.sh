#!/bin/bash

#============================================================================================================================#

# Este script es el Principal y será el encargado de llamar a los demás scripts

#============================================================================================================================#

# Clonamos el repositorio
git clone https://github.com/Nicolasperaltait/Debian12.git

# Creamos el directorio github si no existe
mkdir -p github

# Movemos el contenido clonado al directorio github
mv Debian12 github/

# Cambiamos al directorio donde se movió el repositorio
cd github/Debian12

# Cambiamos los permisos de los scripts a ejecución
sudo chmod 755 *

# Ejecutamos los scripts
#sudo ./Basicos.sh && sudo ./Cleaner-KDE.sh && ./EdgeRepo.sh
