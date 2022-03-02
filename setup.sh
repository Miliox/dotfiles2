

ln -f -s $(pwd)/gitconfig     ${HOME}/.gitconfig

mkdir -p ${HOME}/.config/alacritty
mkdir -p ${HOME}/.config/nvim

ln -f -s $(pwd)/alacritty.yml ${HOME}/.config/alacritty/alacritty.yml
ln -f -s $(pwd)/init.vim      ${HOME}/.config/nvim/init.vim

# Neo Vim Plugin Manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
