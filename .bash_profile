eval "$(rbenv init -)"
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
alias be="bundle exec"
alias tf="terraform"

export PS1="\u@\h \[\033[34m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
