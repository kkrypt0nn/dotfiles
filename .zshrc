fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit
prompt pure

PROMPT='🕙 %D{%H:%M:%S} '$PROMPT

alias uu='brew update && brew upgrade'
alias uuc='brew update && brew upgrade && brew cleanup'
alias uucg='brew upgrade --greedy && brew cleanup -s'
alias rmds='find . -name ".DS_Store" -type f -delete'
alias venv='python3 -m venv venv && source venv/bin/activate'
alias activate='source venv/bin/activate'
alias weather='curl wttr.in'
alias weatherg='curl v2m.wttr.in'
alias pgstart='brew services start postgresql@16'
alias pgstop='brew services stop postgresql@16'
alias sioff='sudo mdutil -i off'
alias sion='sudo mdutil -i on'
alias alpine='docker run --rm -it alpine-tools sh'
alias alpine-copy='docker run --rm -v .:/data -it alpine-tools sh'

export HOMEBREW_NO_ENV_HINTS=1
export PATH=$PATH:/Users/krypton/go/bin:/Users/krypton/.cargo/bin
export LIBRARY_PATH=$LIBRARY_PATH:/opt/homebrew/lib
