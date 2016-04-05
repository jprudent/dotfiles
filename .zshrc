autoload -U colors && colors

# Substituted characters may glob
setopt GLOB_SUBST

# Directory as command does cd
setopt AUTO_CD

# Vars as command does cd
setopt CD_ABLE_VARS

# Smart globbing
setopt EXTENDED_GLOB

# Detect errors and propose a correction
setopt CORRECT

#History

# save history between sessions
setopt INC_APPEND_HISTORY
# all zsh share the same history file
setopt SHARE_HISTORY
# timestamp and duration of each cmd
setopt EXTENDED_HISTORY
# removes copies of lines still in the history list, keeping the newly added one
setopt HIST_IGNORE_ALL_DUPS


HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history

# Aliases
alias ls='ls --color'
alias ll='ls -l'
alias la='ll -a'
alias l=la

#PROMPT
export PS1="%{${bg[black]}${fg[green]}%}%(?,>,%{${bg[black]}${fg[red]}%}%?>%{${bg[black]}${fg[green]}%})%{${bg[black]}${fg[white]}%}"
#export RPS1="$PWD"'%t'
export RPS1="%h|%D{%L%M}|%{${bg[white]}${fg[red]}%}%~%{${bg[black]}${fg[white]}%}"


#PATH
export MVN_HOME=$HOME/bin/mvn/bin
export JAVA_HOME=$HOME/bin/jdk
#tells the shell that it should not add anything to $path if it's there already
typeset -U path
path=($path $MVN_HOME $JAVA_HOME/bin)
