#!/bin/bash
## Network Config ##
sudo cp 01-network-manager-all.yaml /etc/netplan/01-network-manager-all.yaml
sudo netplan apply

## UPDATE ##
sudo apt update -y
sudo apt upgrade -y

## DRIVERS ##
sudo apt install -y build-essential linux-headers-$(uname -r) libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 software-properties-common
sudo apt install -y nvidia-detect
sudo apt install -y nvidia-driver-510
sudo ubuntu-drivers autoinstall

## Install packet ##
sudo apt install -y nfs-common git htop locate apt-transport-https wget vim screen gparted netcat nmap wireshark wakeonlan filezilla texmaker texlive-fonts-extra vlc thunderbird libreoffice audacity chromium-browser octave* geany
sudo snap install rpi-imager
sudo snap install pycharm-professional --classic
sudo apt install -y python3-pip
pip3 install ipykernel jupyterlab octave_kernel matlab_kernel numpy matplotlib scipy seaborn pandas sklearn datetime
pip3 install octave_kernel
pip3 install matlab_kernel

## Arduino INSTALL ##
sudo mkdir /opt/arduino
cd /opt/arduino
sudo wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz
sudo tar -xvf arduino-1.8.19-linux64.tar.xz
sudo rm arduino-1.8.19-linux64.tar.xz
cd cd arduino-1.8.19/
sudo bash install.sh

## MATLAB INSTALL ##
sudo mkdir /opt/matlab	
cd /opt/matlab	
sudo wget https://cloud.ensea.fr/index.php/s/ANg1MxyQBiNGfH3/download
sudo tar -xvf Matlab_R2019b.tar.bz2
sudo rm Matlab_R2019b.tar.bz2
sudo ln -s /opt/matlab/Matlab_R2019b/bin/matlab /usr/bin/matlab
sudo ln -s /opt/matlab/Matlab_R2019b/bin/matlab /usr/bin/matlab2019

## Install Anaconda ##
wget https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh
sudo bash Anaconda3-2021.05-Linux-x86_64.sh

## Install VCode ##
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

## Install Kicad ##
sudo add-apt-repository --yes ppa:kicad/kicad-6.0-releases
sudo apt update
sudo apt install --install-recommends kicad

## RAJOUT UTILISATEUR ##
#sudo useradd -u 2000 -g 2000 -p $6$UftUVGF3s378OS.Q$wLNpe5ZeIVxd1Gb8fXV/a1AT051K8A5DMNbO2ASGlULI9kCEvbySA6Jr1/3x/HVIeUfeZK8Q7VCbgadePG4uq0 ftlv
sudo adduser ftlv

sudo reboot