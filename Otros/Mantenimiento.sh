#!/bin/bash


# Script de Limpieza y base debian. 
# Es necesario tener nala instalado. sino reemplazar por apt 

echo "================== ACTUALIZACION =================="
sudo nala update && sudo nala upgrade -y 

echo "================== LIMPIEZA =================="
sudo nala autoclean             # Elimina los paquetes ya no necesarios en el sistema.
sudo nala autoremove            # Elimina paquetes instalados automáticamente y que ya no son necesarios.
sudo nala autoremove --purge    # Elimina también los archivos de configuración residuales.

echo "================== Anti-Virus  =================="
sudo nala install clamav -y && sudo nala install clamav-daemon -y 

sudo systemctl stop clamav-freshclam   # Detener el servicio de actualización de ClamAV
sudo freshclam                         # Actualizar la base de datos de firmas de virus de ClamAV
sudo systemctl start clamav-freshclam  # Iniciar de nuevo el servicio de actualización de ClamAV
sudo systemctl start clamav-daemon     # Habilitar y iniciar el servicio de ClamAV

echo "================== ACTUALIZACION y LIMPIEZA FINALIZADA =================="
exit

