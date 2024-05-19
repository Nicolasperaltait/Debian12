#!/bin/bash

# Este script es el Principal y será el encargado de llamar a los demás scripts

# Cambiamos al directorio home de Nicolas
cd /home/nicolas

# Clonamos el repositorio directamente en el directorio home de Nicolas
git clone https://github.com/Nicolasperaltait/Debian12.git

# Creamos el directorio github si no existe
mkdir -p github

# Movemos el contenido clonado al directorio github
mv Debian12 github/

# Cambiamos al directorio donde se movió el repositorio
cd github/Debian12

# Cambiamos los permisos de los scripts
sudo chmod 775 basicos.sh && sudo chmod 775 Cleaner.sh 

# Ejecutamos los scripts
sudo ./basicos.sh && sudo ./Cleaner-KDE.sh
