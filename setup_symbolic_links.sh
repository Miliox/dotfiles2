ln -f -s $(pwd)/gitconfig \
        ${HOME}/.gitconfig

mkdir -p ${HOME}/.config/alacritty
ln -f -s $(pwd)/alacritty.yml \
        ${HOME}/.config/alacritty/alacritty.yml


