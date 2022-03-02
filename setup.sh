#!/bin/bash
OS_NAME="$(uname -s)"

# Setup Packages
if [[ os -eq 'Darwin' ]]; then 
./install_packages_brew.sh
RUST_HOST='x86_64-apple-darwin'
fi

# Setup RUST 
rustup-init \
    --default-host $RUST_HOST \
    --default-toolchain stable \
    --profile default \
    -y

source ${HOME}/.cargo/env

./install_packages_cargo.sh

# Setup Python3
./install_packages_pip3.sh

# Setup NodeJS

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

nvm install --lts
nvm use     --lts

./install_packages_nodejs.sh

# Prepare directories
mkdir -p ${HOME}/.config/alacritty
mkdir -p ${HOME}/.config/nvim

# Link scripts
ln -f -s $(pwd)/gitconfig     ${HOME}/.gitconfig
ln -f -s $(pwd)/alacritty.yml ${HOME}/.config/alacritty/alacritty.yml
ln -f -s $(pwd)/init.vim      ${HOME}/.config/nvim/init.vim


# Neo Vim Setup

## Plugin Manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

## Install Plugins
nvim +PlugInstall +qall


