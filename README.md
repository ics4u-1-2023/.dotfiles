# .dotfiles for AWS EC2 Debian-12

## Install process
- start up instance
  - ```Shell
    sudo apt update
    sudo apt install git -y
    git clone https://github.com/ics4u-1-2023/.dotfiles.git
    cd .dotfiles
    ./setup_script.sh
    ```
- do 'sudo rm -r .dotfiles'
- do 'sudo rm .bashrc'
- do 'gh auth login'
- do 'gh repo clone .dotfiles'
- do 'cd .dotfiles'
- do 'stow .' 
