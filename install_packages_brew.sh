# Install https://brew.sh/


packages=(
    'cling'
    'cmake'
    'cmake-docs'
    'cppman'
    'erlang'
    'fd'
    'ffmpeg'
    'font-hack-nerd-font'
    'fzf'
    'git'
    'graphviz'
    'htop'
    'imagemagick'
    'lua'
    'luarocks'
    'most'
    'neofetch'
    'nvm'
    'pv'
    'ripgrep'
    'rustup-init'
    'rsync'
    'tmux'
    'todo-txt'
    'youtube-dl'
)

taps=(
    'homebrew/cask-fonts'
)

cask_packages=(
    'font-hack-nerd-font'
)

brew tap ${taps[*]}
brew update
brew install ${packages[*]}
brew install ${cask_packages[*]}
