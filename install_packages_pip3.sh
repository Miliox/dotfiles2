
packages=(
    'j2cli'
    'howdoi'
    'neovim'
    'pygments'
)

pip3 install --upgrade pip
pip3 install --upgrade ${packages[*]}
