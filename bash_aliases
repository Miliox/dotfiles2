# vim: syntax=sh

# wrapper to launch vscode with enough file watches
function code()
{
    if [[ $(sysctl fs.inotify.max_user_watches | awk '{print $3}') -ne 524288 ]]; then
        echo 'Authorize to increase number of files watchable by vscode.'
        sudo sysctl -n -w 'fs.inotify.max_user_watches=524288'
    fi
    command code
}

# Applications
alias cpp='cling'

# Replacements
alias ..='cd ..'
alias cat='pygmentize -g -O full,linenos=1,style=monokai'
alias cp='rsync  --progress --verbose --human-readable'
alias cpr='rsync --progress --verbose --human-readable --stats --recursive'
alias du='du -lh'
alias df='df -lh'
alias edit='nvim'
alias hd='most -b'
alias hexdump='hd'

alias ls='exa --classify --icons --group-directories-first --git-ignore'
alias ll='ls -l'
alias tree='ls --tree'

alias man='PAGER=most man'
alias mkdir='mkdir -pv'
alias mv='rsync --progress --verbose --human-readable --remove-source-files'
alias ps='procs --tree'
alias top='htop --tree --sort-key=PERCENT_CPU'
alias vi='nvim'
alias vim='nvim'

# File search
alias rg='rg --vimgrep --color=auto'
alias rgbz='rg --type=bazel'
alias rgcc='rg --type=cpp'
alias rgjj='rg --type=jinja'
alias rgjs='rg --type=json'
alias rgjv='rg --type=java'
alias rgpy='rg --type=py'
alias rgrs='rg --type=rust'
alias rgsh='rg --type=sh'

alias grep='rg'
alias cgrep='rgcc'
alias jgrep='rgjv'
alias jsgrep='rgjs'
alias jjgrep='rgjj'

# git
alias gaddp='git addp'
alias gaddu='git addu'
alias gfix='git fix'
alias gfo='git fetch origin'
alias gro='git rebase origin/master'
alias gst='git st'
alias gl='git l'

# single letter commands
alias a='cat'
alias b='cd -'
alias c='clear'
alias d='cd'
alias e='nvim'
alias f='fd'
alias g='git'
alias h='rg'
alias i='ll'
alias k="ncal -w -y $(date +'%Y')"
alias l='ls'
alias m='man'
alias n='nvim'
alias o='open'
alias p='git addp'
alias q='howdoi'
alias s='git st'
alias t='todo-txt'
alias u='git addu'
alias v='code'
alias w='htop'
alias z='cd ~/Projects'
