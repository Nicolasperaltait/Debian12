# Instalación de Flatpak para KDE - Se requiere otro complemento para Genome 


# Instalación de Flatpak
sudo apt install flatpak -y 

# Instalación del backend de Flatpak para Plasma Discover
sudo apt install plasma-discover-backend-flatpak

# Añadir el repositorio de Flathub si no existe
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo