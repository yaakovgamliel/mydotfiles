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
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias sim="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"
#RVM aliases

alias  1.9='rvm use 1.9.3'
alias  2='rvm use 2.0.0'
alias  gemset='rvm gemset use'
alias  pods='gemset pods'

#Ruby
#alias rd='gemset redcar && redcar'
alias rubyserver='ruby -run -e httpd . -p'

#GIT

alias gc='git clone'
#RVM & Git

#Postgresql
#PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"
#SYS

export BUNDLER_EDITOR="vim"
alias ls='ls -G'
export TERM="xterm-color"
alias ls="ls -G"
alias wg="wget"
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad


#android

ANDROID_HOME="/Applications/Android\ Studio.app/sdk/tools/"
PATH=${PATH}:$ANDROID_HOME
export PATH


#PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin"

#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
#export PATH=/usr/local/share/npm/lib/node_modules/coffee-script/bin/:$PATH
#export PATH=/usr/local/share/npm/lib/node_modules/coffee-script/:$PATH

#RVM & Git

# function git-current-branch {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
#         }
#         export PS1="[\$(~/.rvm/bin/rvm-prompt v p g)] \$(git-current-branch)$PS1"
#
function parse_git_branch {
        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

function prompt {
        local DEFAULT="\[\033[0m\]"
        local RED="\[\033[0;31m\]"
        local GREEN="\[\033[0;32m\]"
        local BLUE="\[\033[0;34m\]"

        PS1="\`if [ \$? == '0' ]; then echo '$DEFAULT'; else echo '$RED'; fi\`\h:\W \u$BLUE\$(parse_git_branch)$DEFAULT\$ "
}

prompt

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
