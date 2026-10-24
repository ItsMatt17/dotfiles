PROMPT='%F{blue}%B%~%b%f %F{green}❯%f '


zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors 
# autoload -U tetris && tetris 


zstyle ':completion:*' menu no 
zstyle ':completion:*' special-dirs true # force . and .. to show in cmp menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;33 # colorize cmp menu
# zstyle ':completion:*' file-list true # more detailed list
zstyle ':completion:*' squeeze-slashes false # explicit disable to allow /*/ expansion

HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTSIZE=5000

setopt AUTO_CD # cd w/o filename
setopt APPEND_HISTORY # Append history 
setopt INC_APPEND_HISTORY # Append as typed history 
setopt NO_CASE_GLOB # Globs ignore case

setopt HIST_IGNORE_DUPS # Don't store duplicates
setopt HIST_REDUCE_BLANKS # Don't store blank lines

# setopt CORRECT # Spelling correct for commands (may cause error see docs)
# setopt CORRECT_ALL

setopt NO_BEEP # BEST SETTING EVER

source <(fzf --zsh)

source ~/.zsh/aliases.zsh

export NVM_DIR="$HOME/.nvm"
export MANPAGER="nvim +Man!"

# OCaml's opam
[[ ! -r '/Users/mpayne/.opam/opam-init/init.zsh' ]] || source '/Users/mpayne/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null

# Lazily Load nvm (its ultra super mega slow)
function _lazy_nvm() { 
    unset -f nvm node npm npx 
    [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh"
    [ -s "$(brew --prefix)/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"
}

function nvm() { _lazy_nvm; nvm $@ }
function node() { _lazy_nvm; node $@ }
function npm() { _lazy_nvm; npm $@ }
function npx() { _lazy_nvm; npx $@ }

# nvim always open directory 
function nvim() { [[ -n $* ]] && command nvim $@ || command nvim . }


eval "$(zoxide init zsh)"
