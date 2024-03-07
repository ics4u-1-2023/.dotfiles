# .dotfiles for AWS EC2 Debian-12

## Install process
- start up instance and run:
  - ```Shell
    sudo apt update
    sudo apt install git -y
    git clone https://github.com/ics4u-1-2023/.dotfiles.git
    cd .dotfiles
    ./setup_script.sh
    ```
- then after all the programs are loaded:
  - ```Shell
    cd ~
    sudo rm -r .dotfiles
    sudo rm .bashrc
    gh auth login
    ```
- after you login to GitHub:
  - ```Shell
    gh repo clone .dotfiles
    cd .dotfiles
    stow .
    cd ~
    sudo reboot now
    ```
- then setup Codeium with NeoVim
  -  ```Shell
     :Codeium Auth
     ```

