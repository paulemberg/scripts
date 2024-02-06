#!/bin/bash

## Este código foi adiquirido e adaptado do repositório do Diolinux 'https://github.com/Diolinux/gabrielworkstation'
## This scritp was copy/modified from Diolinux 'https://github.com/Diolinux/gabrielworkstation'

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update && 

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install python3 docker.io docker-compose git build-essential libssl-dev flatpak gnome-software-plugin-flatpak zsh terminator nodejs -y &&

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"  -y &&

sudo sh -c "$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash)"  -y &&

npm install -g npm@latest &&

## Instalando pacotes Snap ##

sudo snap install slack --classic &&  
sudo snap install code --classic &&  
sudo snap install --edge node --classic && 
sudo snap install insomnia &&  
sudo snap install ubuntu-make --classic &&
sudo snap install rider --classic --edge &&

## Adicionando repositório Flathub ##

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && 

## Instalando Apps do Flathub ##

## Install dbeaver ce
sudo flatpak install flathub io.dbeaver.DBeaverCommunity &&


##Install Brave
sudo flatpak install flathub io.dbeaver.DBeaverCommunity -y &&
 

## Softwares que precisam de download externo ##

##Install Chrome
cd ~/Downloads/ && 
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && 
sudo dpkg -i *.deb &&

##Install oh-my-zsh
 sudo sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" -y &&

##Install Sublime Text
cd ~/Downloads/ && 
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null &&
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &&
sudo apt install sublime-text -y &&



## Atualização do sistema ##
sudo apt update && 
sudo apt dist-upgrade -y && 
sudo apt autoclean -y && 
sudo apt autoremove -y &&


#Fim do Script ##

echo "Finalizado"
