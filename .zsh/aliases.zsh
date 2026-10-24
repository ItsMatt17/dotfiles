# Pretty print path 
alias path='echo -e ${PATH//:/\\n}' 

# Always color 
alias diff='diff --color=auto'
alias ls='ls --color=auto' 
alias grep='grep --color=auto' 
alias egrep='egrep --color=auto' 
alias fgrep='fgrep --color=auto' 

# Error on overwrite 
alias mv='mv -i' 

# Show hidden files 
alias lsa='ls -A' 

alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'


# Local IP 
alias localip='ipconfig getifaddr en0'


alias cb='pbcopy'

# Editor
alias vim='nvim'

# zsh 
alias reload!='source ~/.zsh'

# Git
alias gst='git status'
alias lg='lazygit'

# alias exs="/Applications/eXist-db/bin/shutdown.sh"
alias exl="/Applications/eXist-db/bin/startup.sh"
