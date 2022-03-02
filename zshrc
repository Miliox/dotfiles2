# vim: syntax=sh

# Setup aliases
source ${HOME}/.bash_aliases

# Load cargo packages
source ${HOME}/.cargo/env

# Load nodejs packages
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

export EDITOR='nvim'
export LANG='en_US.UTF-8'
