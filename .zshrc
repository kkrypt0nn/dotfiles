fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit
prompt pure

PROMPT='🕙 %D{%H:%M:%S} '$PROMPT

alias k='kubectl'
alias uu='brew update && brew upgrade'
alias uuc='brew update && brew upgrade && brew cleanup'
alias uucg='brew update && brew upgrade --greedy && brew cleanup -s'
alias rmds='find . -name ".DS_Store" -type f -delete'
alias venv='python3 -m venv venv && source venv/bin/activate'
alias activate='source venv/bin/activate'
alias weather='curl wttr.in'
alias weatherg='curl v2m.wttr.in'
alias sioff='sudo mdutil -i off'
alias sion='sudo mdutil -i on'
alias strace='f() { sudo ktrace trace -S -f C2,C3 -c $1 };f'
alias alpine='docker run --rm -it kkrypt0nn/alpine-tools sh'
alias alpine-copy='docker run --rm -v .:/data -it kkrypt0nn/alpine-tools sh'

alias work='f() { timer "${1:-60m}" && terminal-notifier \
	-message "Systems cooling. A healthy buffer prevents overflow. 💨" \
	-title "Break" \
	-sound Crystal; }; f'

alias rest='f() { timer "${1:-5m}" && terminal-notifier \
	-message "Session resumed. Time to harden the stack and squash the bugs. 🐛" \
	-title "Work" \
	-sound Crystal; }; f'


export HOMEBREW_NO_ENV_HINTS=1
export PATH=$PATH:/Users/krypton/go/bin:/Users/krypton/.cargo/bin:/opt/homebrew/opt/llvm/bin:$HOME/Documents/carbon-lang/bazel-bin/toolchain
export LIBRARY_PATH=$LIBRARY_PATH:/opt/homebrew/lib
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/krypton/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
