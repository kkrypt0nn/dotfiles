fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit
prompt pure

PROMPT='🕙 %D{%K:%M:%S} '$PROMPT

alias uu='brew update && brew upgrade'
alias uuc='brew update && brew upgrade && brew cleanup'
alias rmds='find . -name ".DS_Store" -type f -delete'
alias venv='python3 -m venv venv && source venv/bin/activate'
alias activate='source venv/bin/activate'
alias weather='curl wttr.in'
alias weatherg='curl v2m.wttr.in'
export PATH=$PATH:/Users/krypton/go/bin:/Users/krypton/.cargo/bin
