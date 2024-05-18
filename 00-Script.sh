#!/bin/bash


# Este script es el Principal y sera el encargado de llamar a los demas scripts

cd / && cd /home/nicolas

sudo mkdir github

cd github

git clone https://github.com/Nicolasperaltait/Debian12.git

cd Debian12

sudo chmod 775 basicos.sh Cleaner.sh 

sudo apt ./basicos.sh && sudo apt ./Cleaner-KDE.sh
