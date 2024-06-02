#!/bin/bash
#=======================================================================================

#  Es necesario tener instalado curl y zsh para poder descargar ohmyzsh.

#=======================================================================================

# instalamos curl y zsh 
sudo nala install curl zsh  -y

mkdir -p usr/share/fonts 

# instalar fuentes // las movemos delsde el repo al sistema // actualizamos el cache 
cd / && cd home/nicolas/debian12/Fonts-ttf/ && sudo cp *.ttf /usr/share/fonts && fc-cache -f -v &&


echo "=================== Iniciando la descarga de ohmyzsh - Esto puede tardar varios minutos ===================" && 


# Se descarga oh my zsh con curl // La comprobacion funciona. 
echo "y" | sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && 


# clonamos el repo de powelevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k &&


# Descargamos Plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestion


# Nos ubicamos en el directorio correcto y copiamos el .zsh indicado y lo copiamos donde corresponde
cd / && cd home/nicolas/debian12/Dotfiles && sudo cp .zshrc /home/nicolas/ 

echo "=================== Fin de la instalación de ohmyzsh ==================="

