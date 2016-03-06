# Use my aliases
source ~/.aliases
#Postgresql
#PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"
#SYS

export BUNDLER_EDITOR="vim"
alias ls='ls -G'
#export TERM="xterm-color"                                                                                    
# This fixes some annoying issue with tmux backgrounf colors                                                  
if [[ $TERM == xterm  ]]; then                                                                                
  export TERM="xterm-256color"                                                                                
fi  

alias ls="ls -G"
alias wg="wget"
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad


# Android >: )
# Android Studio file location

ANDROID_HOME="/Users/yaakov/Library/Android/sdk"
ANDROID_TOOLS="/Users/yaakov/Library/Android/sdk/tools"
PATH=${PATH}:$ANDROID_HOME:$ANDROID_TOOLS
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
