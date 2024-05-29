#!/bin/bash

# Instalamos curl y zsh
echo "Instalando curl y zsh..."
sudo nala install curl zsh -y

# Creamos el directorio para las fuentes si no existe
echo "Creando el directorio para las fuentes..."
mkdir -p /usr/share/fonts

# Instalamos las fuentes y actualizamos el cache
echo "Instalando fuentes y actualizando el caché..."
sudo cp /home/nicolas/Debian12/Fonts-ttf/*.ttf /usr/share/fonts && fc-cache -f -v

# Descargamos e instalamos Oh My Zsh automáticamente
echo "Iniciando la descarga e instalación de Oh My Zsh - Esto puede tardar varios minutos..."
yes | sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clonamos el repositorio de Powerlevel10k
echo "Clonando el repositorio de Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Descargamos los plugins
echo "Clonando el plugin zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Clonando el plugin zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Copiamos el archivo .zshrc al directorio del usuario
echo "Copiando el archivo .zshrc al directorio del usuario..."
sudo cp /home/nicolas/Debian12/Dotfiles/.zshrc /home/nicolas/
