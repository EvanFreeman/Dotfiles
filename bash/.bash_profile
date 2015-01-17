source ~/bash/git-prompt.sh
source ~/bash/git-completion.sh

export GREP_OPTIONS='--color=auto'
export MAVEN_OPTS="-Xms512m -Xmx1024m -XX:MaxPermSize=512m -Djava.awt.headless=true"
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
# export GIT_PS1_SHOWSTASHSTATE=true
# export GIT_PS1_SHOWUPSTREAM="verbose"
export GIT_PS1_SHOWCOLORHINTS=true
export PROMPT_COMMAND='__git_ps1 "\[\e[1;33m\]\u@\h\[\e[1;36m\] \W\[\e[0m\]" "$ "'
export CLICOLOR=1
export LSCOLORS=gxFxCxDxbxegedabagacad
if [ -f ~/.profile ]; 
then 
        . ~/.profile; 
fi

eval "$(gh alias -s)"
alias tmux='tmux -2'
