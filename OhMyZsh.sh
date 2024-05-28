#!/bin/bash

# instalamos curl y zsh 
sudo nala install curl zsh  -y

mkdir -p usr/share/fonts 

# instalar fuentes // las movemos delsde el repo al sistema // actualizamos el cache 
cd / && cd home/nicolas/Debian12/Fonts-ttf/ && sudo cp *.ttf /usr/share/fonts && fc-cache -f -v


# Se descarga oh my zsh con curl
echo "Iniciando la descarga de ohmyzsh - Esto puede tardar varios minutos..."

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y 