#!/bin/bash
# Este script realiza una actualización y limpieza del sistema en Debian o distribuciones basadas en Debian.

echo "---------- ACTUALIZACION ----------"
# Actualiza la lista de paquetes disponibles y sus versiones.
sudo apt update
# Actualiza todos los paquetes instalados a la última versión disponible automáticamente.
sudo apt upgrade -y 

echo "---------- LIMPIEZA ----------"
# Elimina los paquetes ya no necesarios en el sistema.
sudo apt autoclean 
# Elimina paquetes instalados automáticamente y que ya no son necesarios.
sudo apt autoremove
# Elimina también los archivos de configuración residuales.
sudo apt autoremove --purge

echo "---------- ACTUALIZACION y LIMPIEZA FINALIZADA ----------"
exit
# Finaliza el script.
