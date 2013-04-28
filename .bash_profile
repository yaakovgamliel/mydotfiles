#this are some aliases
#
alias code='cd ~/Documents/code'
alias desk='cd ~/Desktop'
alias tmp='cd /tmp'
#in the CLI
alias cl='clear'
alias rb='ruby'
alias py='python'
#for Apps

alias mvim='open -a MacVim.app'

#RVM aliases

alias 1.9='rvm use 1.9.3'
alias 2='rvm use 2.0.0'
alias  gemset='rvm gemset use'

#GIT

alias gc='git clone'

#SYS

alias ls='ls -G'
export TERM="xterm-color"
alias ls="ls -G"
#export CLICOLOR=1
#export LSCOLORS=Gxfxcxdxbxegedabagacad

PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin"

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/share/npm/lib/node_modules/coffee-script/bin/:$PATH
export PATH=/usr/local/share/npm/lib/node_modules/coffee-script/:$PATH


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

