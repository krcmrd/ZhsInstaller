#!/bin/sh

usname=$(whoami)
#install zsh
echo "starting download zsh"
sudo apt-get install zsh -y 
#install oh-my-zsh
echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#trying to set zsh as default shell
echo "trying to set zsh as default"
sudo usermod -s /usr/bin/zsh usname


#install a font
wget https://github.com/microsoft/cascadia-code/releases/download/v2005.15/CascadiaCode_2005.15.zip
unzip ./CascadiaCode_2005.15.zip 
rm -rf ./otf
rm -rf ./woff2
cd ./ttf
mv ./CascadiaMonoPL.ttf /usr/share/fonts/truetype
echo "Succsessfully installed a font" 