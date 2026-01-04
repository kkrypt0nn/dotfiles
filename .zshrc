fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit
prompt pure

PROMPT='🕙 %D{%H:%M:%S} '$PROMPT

alias k='kubectl'
alias uu='brew update && brew upgrade'
alias uuc='brew update && brew upgrade && brew cleanup'
alias uucg='brew update && brew upgrade --greedy && brew cleanup -s'
alias rmds='find . -name ".DS_Store" -type f -delete'
alias rmnm='find . -name "node_modules" -type d -prune -exec rm -rf '{}' +'
alias venv='python3 -m venv venv && source venv/bin/activate'
alias activate='source venv/bin/activate'
alias weather='curl wttr.in'
alias weatherg='curl v2m.wttr.in'
alias sioff='sudo mdutil -i off'
alias sion='sudo mdutil -i on'
alias strace='f() { sudo ktrace trace -S -f C2,C3 -c $1 };f'

export HOMEBREW_NO_ENV_HINTS=1
export PATH=$PATH:/Users/krypton/go/bin:/Users/krypton/.cargo/bin:/opt/homebrew/opt/llvm/bin:$HOME/Documents/carbon-lang/bazel-bin/toolchain
export LIBRARY_PATH=$LIBRARY_PATH:/opt/homebrew/lib
export GPG_TTY=$(tty)
