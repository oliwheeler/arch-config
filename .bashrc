#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias sudo='sudo '
alias vim='nvim'
alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -al'
PS1='[\u@\h \W]\$ '

neofetch
