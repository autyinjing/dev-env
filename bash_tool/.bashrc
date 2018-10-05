# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
 case "$TERM" in
 xterm-color)
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\h\W\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$  '
    ;;
*)
    PS1='${debian_chroot:+($debian_chroot)}\u\h:\W\$  '
    ;;
esac

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
fi

alias ll='ls -lh --color=tty'
alias ls='ls --color=tty'
alias vi="vim"
alias rm="rm -i"
alias df="df -h"

alias grep="grep --color=auto"
alias cp="cp -i -rf " 


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
set -o vi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0; $LOCAL_IP_3.$LOCAL_IP_4 \007"'
    ;;
*)
    ;;
esac

export EDITOR="vim"
SYSFONT="latarcyrheb-sun16"

# ----- shortcut cmd -----
# vim
alias v='vim'
alias conf_bash='vim ~/.bashrc'
alias conf_vim='vim ~/.vimrc'
alias rbash='. ~/.bashrc'

# cd
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../../'
alias cdmb='cd ~/bin; pwd'

# svn
alias svup='svn update'
alias svst='svn status'
alias svci='svn ci -m ""'
alias svdi='svn di'

# git
alias gsts='git status'
alias gbr='git branch'
alias grl='git reflog'
alias grv='git remote -v'
alias grev='git checkout --'
alias gadd='git add'
alias gcmt='git commit -m'
alias gpush='git push'
alias gpull='git pull'
alias gchk='git checkout'
alias gdif='git difftool'
alias gpm='git pull origin master'
alias gstash='git stash'

# other
alias ptar='tar -czvf'
alias utar='tar -xzvf'
alias c='clear'
alias lal='ls -alh'
alias psx='ps x | grep -v grep | grep -v "ps x"'
alias got='ps -eo pid,etime,cmd | grep -v grep | grep'
alias make='make -j4'
alias makec='make clean && make'

#export PATH=~/bin:/usr/sbin:$PATH
PATH=/home/aut/bin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/bin
PATH=$PATH:/home/aut/yxs/AutTest/Ctrl/

#export PS1="[^_^]\u@\h:/\W\$ "
export PS1="[^_^]\[\e[1;35m\]\u\[\e[m\]\[\e[1;31m\]@\[\e[m\]\h:\[\e[1;39m\]/\W\\[\e[m\]$ "
export LANG=zh_CN.UTF8

#export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32 :*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;3 1:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm =01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:'

export LS_COLORS='no=00:fi=00:di=01:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32 :*.tar=01;31:*.tar.gz=00;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;3 1:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm =01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:'

# 导入项目相关的配置
if [ -f ~/.bashrc_yxs ]; then
    . ~/.bashrc_yxs
fi
alias conf_yxs='vim ~/.bashrc_yxs'

echo ""
echo "... Hello World ! ..."
echo ""
