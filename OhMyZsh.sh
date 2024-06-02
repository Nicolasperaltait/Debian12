#!/bin/bash
#======================================================================================================================================#

#  Es necesario tener instalado curl y zsh para poder descargar ohmyzsh.

#======================================================================================================================================#

sudo nala install curl zsh  -y                                                                                                             # Instalamos curl y zsh 

mkdir -p usr/share/fonts                                                                                                                   # creamos el directorio donde se copiaran las fuentes

cd / && cd home/nicolas/debian12/Fonts-ttf/ && sudo cp *.ttf /usr/share/fonts && fc-cache -f -v &&                                         # instalar fuentes // las movemos delsde el repo al sistema // actualizamos el cache 

#======================================================================================================================================#
echo "=== Descargando ohmyzsh - Esto puede tardar varios minutos ====" && 
echo "y" | sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&                          # Descarga del repo y se da permisos para instalar

#======================================================================================================================================#
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k &&             # clonamos el repo de powelevel10k

#======================================================================================================================================#
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting &&    # Descargamos el plugin de sintaxis   
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestion                    # Descargamos el plugin de sugerencias

#======================================================================================================================================#
cd / && cd home/nicolas/debian12/Dotfiles && sudo cp .zshrc /home/nicolas/

echo "=================== Fin de la instalación de ohmyzsh ==================="

