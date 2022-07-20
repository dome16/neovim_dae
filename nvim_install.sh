#!/bin/bash

### ### ### ### ### ### ### ### ### ### ###
### Nvim Installation und Konfiguration ###
### Author: Dominic Aeby                ###
### Datum & Version: 20.07.22 v1.0      ###
### ### ### ### ### ### ### ### ### ### ###

# Install Updates
sudo apt -y update && sudo apt -y upgrade

# Install Neovim
sudo apt -y install neovim

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \\n       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install node and yarn
curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
cd ~\ncurl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
chmod a+x nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs
rm nodesource_setup.sh

# Create Directory and File
mkdir -p ~/.conf/nvim
touch ~/.conf/nvim/init.vim

# Paste Config to init.vim
mv init.vim.txt ~/.config/nvim/init.vim

# Inform the User
echo "neovim wurde Installiert und Konfiguriert"
echo "Um die Konfiguration abzuschliessen führen Sie folgendes aus:"
echo "1. nvim   2. :PlugInstall 3. Schiessen sie nvim   4. erneutes öffnen von nvim
