# .dotfiles for AWS EC2 Debian-12

## Install process
- start up instance
- do 'sudo apt update'
- do 'sudo apt install git -y'
- do 'git clone https://github.com/ics4u-1-2023/.dotfiles.git'
- do 'cd .dotfiles'
- do './setup_script.sh'
- do 'sudo rm -r .dotfiles'
- do 'sudo rm .bashrc'
- do 'cd .dotfiles'
- do 'stow .' 
