#!/bin/bash

# ========================================================================================================================= #
echo "----------- Instalación de ZSH -----------"

echo "Instalando ZSH y curl"
sudo apt install zsh curl -y


# ========================================================================================================================= #
echo "----------- Instalación de oh my zsh -----------"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y 


# ========================================================================================================================= #
echo "----------- Instalación de fuentes para ZSH -----------"

mkdir -p usr/share/fonts # Se crea si no existe la ruta. 

# Clonar el repositorio zsh-font desde GitHub
cd github/ && git clone https://github.com/Nicolasperaltait/ZSH-Fonts.git && cd ZSH-Fonts/


    #mkdir -p ~/.local/share/fonts 

    #ls ttf/*  && fc-cache -f -v  # lista y actualiza cache de fuentes 

    #cp -r github/debian12/ZSH-Fonsts/* ~/.local/share/fonts/ # esto copia todo el contenido en la carpeta fonts 


sudo mv * .ttf /usr/share/fonts # Movemos todos los archivos a la carpeta creada al inico. 

fc-cache -f -v  # Actualizacion de cache de funtes de sistema. 

echo "----------- Fuentes de ZSH instaladas -----------"


# ========================================================================================================================= #
echo "----------- Instalación de oh my zsh con curl -----------"

cd .. # queda parado en ZSH-Fonts/

# Clonado del repositorio
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Plugins para la terminal
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting &&
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# ========================================================================================================================= #
echo "----------- Completa el archivo, ¡Mandale mecha! -----------"

cd / && cd home/nicolas

sudo nano ~/.zshrc 




