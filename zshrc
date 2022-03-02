# vim: syntax=sh

# Setup aliases
source ${HOME}/.bash_aliases

# Load cargo packages
source ${HOME}/.cargo/env

# Load nodejs packages
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# Default editor
export EDITOR='nvim'

# Default language
export LANG='en_US.UTF-8'

# Limit path on screen
export PROMPT_DIRTRIM=3

# Preserve History
export HISTFILE=~/.zsh_history
export HISTSIZE=999999999
export SAVEHIST=$HISTSIZE

# Fuzzy finder directory search
export FZF_DEFAULT_COMMAND='fd --type f'

# Prompt format
export PS1='%F{green}%T %F{blue}%3~%f %? %F{yellow}λ%f '

# switch of to tmux
if command -v tmux &> /dev/null && \
    [ -n "$PS1" ] && \
    [[ ! "$TERM" =~ screen ]] && \
    [[ ! "$TERM" =~ tmux ]] \
    && [ -z "$TMUX" ]; then
  exec tmux new-session -A -s main
fi
