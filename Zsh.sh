#!/bin/bash

echo "----------- zsh -----------"


echo "ZSH INSTALL"

sudo apt install zsh curl -y

echo "----------- oh my zsh -----------"


sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


echo "----------- fuentes zsh -----------"

# Clonar el repositorio zsh-font desde GitHub
cd github/

git clone https://github.com/Nicolasperaltait/ZSH-Fonts.git

cd ZSH-Fonts/

# Instalar las fuentes zsh
sudo apt install MesloLGS NF Bold Italic.ttf MesloLGS NF Bold Italic.ttf MesloLGS NF Bold.ttf MesloLGS NF Italic.ttf

# Regresar a la carpeta original
cd ..

echo "----------- fuentes zsh instaladas -----------"

echo "----------- instalacion oh my zsh con curl -----------"

#clonado del repositorio
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#Vitamina para la terminal 

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting &&
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo  "----------- completa el archivo y mandale mecha -----------"

cd / && cd home/nicolas

sudo nano ~/.zshrc 




