# .dotfiles for AWS EC2 Debian-12

## Install process
- start up instance and run:
  - ```Shell
    sudo apt update && \
    sudo apt install git -y && \
    cd ~ && \
    git clone https://github.com/ics4u-1-2023/.dotfiles.git && \
    cd .dotfiles && \
    ./setup_script.sh
    ```
- then after all the programs are loaded:
  - ```Shell
    cd ~ && \
    sudo rm -r .dotfiles && \
    sudo rm .bashrc && \
    gh auth login
    ```
- after you login to GitHub:
  - ```Shell
    cd ~ && \
    gh repo clone .dotfiles && \
    cd .dotfiles && \
    stow . && \
    sudo reboot now
    ```
- then start up NeoVim and let everything install (you will need to do this twice) then setup Codeium with NeoVim
  - ```Shell
    :Codeium Auth
    ```
  - Codeium token URL: [https://codeium.com/profile?response_type=token&redirect_uri=vim-show-auth-token&state=a&scope=openid%20profile%20email&redirect_parameters_type=query](https://codeium.com/profile?response_type=token&redirect_uri=vim-show-auth-token&state=a&scope=openid%20profile%20email&redirect_parameters_type=query)
