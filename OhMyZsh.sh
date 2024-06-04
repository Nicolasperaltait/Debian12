/#!/bin/bash
#======================================================================================================================================#

# Es necesario tener instalado curl y zsh para poder descargar ohmyzsh.

#======================================================================================================================================#

sudo nala install curl zsh -y                                                                                                             # Instalamos curl y zsh 

mkdir -p /usr/share/fonts                                                                                                                 # Creamos el directorio donde se copiarán las fuentes

cd /home/nicolas/debian12/Fonts-ttf/ && sudo cp *.ttf /usr/share/fonts && fc-cache -f -v                                                  # Instalar fuentes // las movemos del repo al sistema // actualizamos el cache 

#======================================================================================================================================#
echo "=== Descargando ohmyzsh - Esto puede tardar varios minutos ===="

# Descarga e instalación de Oh My Zsh
if echo "y" | sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; then
    echo "Oh My Zsh instalado con éxito"
else
    echo "Error al instalar Oh My Zsh" >&2
    exit 1
fi

#======================================================================================================================================#

# Descargamos el plugin de sintaxis
if git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting; then
    echo "Plugin zsh-syntax-highlighting descargado con éxito"
else
    echo "Error al descargar el plugin zsh-syntax-highlighting" >&2
    exit 1
fi

# Descargamos el plugin de sugerencias
if git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions; then
    echo "Plugin zsh-autosuggestions descargado con éxito"
else
    echo "Error al descargar el plugin zsh-autosuggestions" >&2
    exit 1
fi

#======================================================================================================================================#

# Copiamos el archivo .zshrc personalizado
if sudo cp -a -f /home/nicolas/debian12/Dotfiles/.zshrc /home/nicolas/; then
    echo ".zshrc personalizado copiado con éxito"
else
    echo "Error al copiar el archivo .zshrc" >&2
    exit 1
fi

echo "Fin de la instalación de ohmyzsh y configuración de Zsh"
