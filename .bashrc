#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=/home/lost/.dotnet/tools:$PATH
alias config='/usr/bin/git --git-dir=/home/lost/.cfg/ --work-tree=/home/lost'
