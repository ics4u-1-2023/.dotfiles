#!/usr/bin/env bash
# Created by: Mr Coxall
# Created on: Sept 2020
# AWS Debian Linux .dotfiles and setup script

sudo apt update
sudo apt upgrade -y

# common programs
sudo apt remove w3m -y
sudo apt install gh -y
sudo apt install stow -y

# install NeoVim from source
mkdir temp
cd temp || exit
sudo apt-get install ninja-build gettext cmake unzip curl -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd .. || exit
cd .. || exit
sudo rm -r ./temp

# install languages
curl -fsSL https://bun.sh/install | bash
# shellcheck source=/dev/null
source ~/.bashrc
sudo apt install -y default-jdk

# install Go
mkdir temp
cd temp || exit
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
cd .. || exit
sudo rm -r ./temp

# install FFmpeg
sudo apt install ffmpeg

# install VHS
mkdir temp
cd temp || exit
sudo apt-get install -y build-essential cmake git libjson-c-dev libwebsockets-dev
git clone https://github.com/tsl0922/ttyd.git
cd ttyd || exit
mkdir build
cd build || exit
cmake ..
make && sudo make install
cd .. || exit
cd .. || exit
cd .. || exit
sudo rm -r ./temp

# install VHS, from Charm
go install github.com/charmbracelet/vhs@latest
