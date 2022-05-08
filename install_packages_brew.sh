# Install https://brew.sh/


packages=(
    'cppman'
    'cpufetch'
    'cling'
    'cmake'
    'cmake-docs'
    'conan'
    'erlang'
    'fd'
    'ffmpeg'
    'font-hack-nerd-font'
    'fzf'
    'git'
    'graphviz'
    'gnuplot'
    'htop'
    'imagemagick'
    'lua'
    'luarocks'
    'most'
    'neofetch'
    'neovim'
    'nvm'
    'octave'
    'progress'
    'pv'
    'ripgrep'
    'rustup-init'
    'rsync'
    'tmux'
    'tmux-mem-cpu-load'
    'todo-txt'
    'youtube-dl'
    'zig'
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
