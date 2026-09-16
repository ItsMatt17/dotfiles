PROMPT='%F{blue}%B%~%b%f %F{green}❯%f '

HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTSIZE=4000

setopt APPEND_HISTORY # Append history 
setopt INC_APPEND_HISTORY # Append as typed history 

setopt NO_CASE_GLOB # Globs ignore case

setopt HIST_IGNORE_DUPS # Don't store duplicates
setopt HIST_REDUCE_BLANKS # Don't store blank lines

setopt CORRECT # Spelling correct for commands (may cause error see docs)
setopt CORRECT_ALL

# Utils 
alias path='echo -e ${PATH//:/\\n}'
alias ls='ls --color=auto'
alias lsa='ls -A'
alias grep='grep --color=auto'
alias mv='mv -i'
alias ..='cd ..'
alias ~='cd ~'
alias diff='diff --color=auto'

# Editor
alias vim='nvim'


# Git
alias gst='git status'

alias exs="/Applications/eXist-db/bin/shutdown.sh"
alias exl="/Applications/eXist-db/bin/startup.sh"
alias vim="nvim"


export NVM_DIR="$HOME/.nvm"


# Lazily
function _lazy_nvm() { 
    unset nvm node npm npx node
    [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh"
    [ -s "$(brew --prefix)/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"
}

function nvm() { _lazy_nvm; nvm "$@" }
function node() { _lazy_nvm; node "$@" }
function npm() { _lazy_nvm; npm "$@" }
function npx() { _lazy_nvm; npx "$@" }
