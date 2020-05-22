#!/bin/sh

usname=$(whoami)

echo "starting download zsh"
sudo apt-get install zsh -y 
echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "trying to set zsh as default"
sudo usermod -s /usr/bin/zsh usname

