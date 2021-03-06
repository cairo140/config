# mad aliases
alias l='ls'
alias ll='ls -l'
alias la='ls -la'

alias c1='cd ../'
alias c2='c1; c1'
alias c3='c2; c1'
alias c4='c3; c1'
alias c5='c4; c1'
alias c6='c5; c1'

alias sd='svn di'
alias sst='svn st'
alias suie='svn up --ignore-externals'
alias ssie='sst --ignore-externals | grep "^[^X]"'
alias spse='svn pe svn:externals'
alias spsi='svn pe svn:ignore'
alias sdsm='svn pd svn:mime-type'
alias svn_rm_missing='ssie | grep ^! | sed 's/^[^a-z]*//' | xargs svn rm'
alias svn_add_unknown='ssie | grep ^? | sed 's/^[^a-z]*//' | xargs svn add'
alias rak='NOEXEC_DISABLE=1 rak'

alias ss='sudo su'

alias uatt='find . -type f | xargs dos2unix'

alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gc='git commit'
alias gcm='git commit -m'
alias gcam='git commit -am'

alias cl='curl -x localhost:80'

alias be='bundle exec'
alias berc='bundle exec rails c'
alias bc='bundle check'
alias gl='gem list'

alias ru='rvm use'
alias rgu='rvm gemset use'

alias g='git'

alias s='svn'

alias t='echo $TERM'

alias tmux_clip='tmux save-buffer - | xclip -selection clipboard'

source $HOME/config/bash/z/z.sh

# hot scripts
export PATH=$HOME/config/scripts:$PATH
alias ttr='touch_tmp_restart'
alias sup='svn_up_parallel'
