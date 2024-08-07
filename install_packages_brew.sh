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
    'fzf'
    'git'
    'graphviz'
    'gnuplot'
    'glfw'
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
    'yt-dlp'
    'zig'
)

taps=(
    'homebrew/cask-fonts'
)

cask_packages=(
    'font-fira-code-nerd-font'
)

brew tap ${taps[*]}
brew update
brew install ${packages[*]}
brew install ${cask_packages[*]}
