#!/bin/bash
## Este código foi adiquirido e addnfado do repositório do Diolinux 'https://github.com/Diolinux/gabrielworkstation'
## This scritp was copy/modified from Diolinux 'https://github.com/Diolinux/gabrielworkstation'
## Removendo travas eventuais do dnf ##
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/dnf/archives/lock ;
## Atualizando o repositório ##
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg &&
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo &&
sudo dnf update &&
## Instalando pacotes e programas do repositório deb do Ubuntu ##
sudo dnf install python3 python3-pip python-pip wine docker.io docker-compose git build-essential libssl-dev flatpak zsh -y &&
## Instalando pacotes Snap ##
sudo dnf install snapd -y &&
##Criando a symlink para rodar os snaps classics abaixo 'https://snapcraft.io/docs/installing-snap-on-fedora'
sudo ln -s /var/lib/snapd/snap /snap &&
sudo snap install slack --classic &&
sudo snap install skype --classic &&
sudo snap install code --classic &&
sudo snap install --edge node --classic &&
sudo snap install insomnia &&
sudo snap install spotify &&
sudo snap install wps-office-multilang &&
sudo snap install ubuntu-make --classic &&
## Adicionando repositório Flathub ##
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&
## Instalando Apps do Flathub ##
##Install VSCode
sudo flatpak install flathub com.obsproject.Studio -y &&
##Install Sublime Text
sudo dnf install sublime-text -y &&
##Install Brave
sudo flatpak install flathub io.dbeaver.DBeaverCommunity -y &&
## Softwares que precisam de download externo ##
##Install Chrome
cd ~/Downloads/ &&
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i *.deb &&
##Install oh-my-zsh
 sudo sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" -y &&
## Atualização do sistema ##
sudo dnf update &&
sudo dnf dist-upgrade -y &&
sudo dnf autoclean -y &&
sudo dnf autoremove -y &&
#Fim do Script ##
echo "Finalizado"
