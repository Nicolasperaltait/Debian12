#!/bin/bash

# ========================================================================================================================= #
echo "----------- Instalación de ZSH -----------"
sudo nala install zsh curl -y

# ========================================================================================================================= #
echo "----------- Instalación de fuentes para ZSH -----------"

mkdir -p usr/share/fonts # Se crea si no existe la ruta. 

# Clonar el repositorio zsh-font desde GitHub
cd github/ && git clone https://github.com/Nicolasperaltait/ZSH-Fonts.git && cd ZSH-Fonts/

sudo mv * .ttf /usr/share/fonts # Movemos todos los archivos a la carpeta creada al inico. 

fc-cache -f -v  # Actualizacion de cache de funtes de sistema. 

# ========================================================================================================================= #

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sudo nano .zshrc 


# ========================================================================================================================= #

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && 

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestion

mv ~/.zshrc ~/github/Debian12/.zshrc

# luego agregar los plugins
                            # sudo
                            # zsh-syntax-highlighting
                            # zsh-autosuggestions


