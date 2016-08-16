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
export WORKDIR=$HOME/DB

alias my='mysql -uroot -proot' 
#alias my='mysql -uroot -pseer2@ta0mee' 
alias ll='ls -lh --color=tty'
alias ls='ls --color=tty'
alias vi="vim"
alias rm="rm -i"
alias df="df -h"
alias dir='ls  -d */'

export WORKDIR=$HOME/DB
alias telnet="telnet -8 -e^e"
alias grep="grep --color=auto"

alias cp="cp -i -rf " 

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
set -o vi

export EDITOR="vim"
SYSFONT="latarcyrheb-sun16"  
alias c='clear'
alias lal='ls -alh'
alias cdu='cd ..'
alias cdo='cd ~/xhx_code/online/trunk/;pwd'
alias cdl='cd ~/xhx_code/login/trunk/;pwd'
alias cdpro='cd /home/aut/xhx_code/serv_share/trunk/;pwd'
alias cdlog='cd /home/aut/xhx_code/online/trunk/log/;pwd'
alias psaut='ps -ef | grep aut | grep -v grep | grep -v "ps -ef"'
alias cdp='cd /home/aut/xhx_code/party/trunk/;pwd'
alias v='vim'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../../'
alias g++='g++ -Wall'

alias cda='cd ~/study/asynserv/;pwd'
alias cd5='cd /home/aut/study/C++/Cpp-learning/C++\ Primer_5;pwd'

export DISTCC_HOSTS="localhost 10.1.1.57 10.1.1.25 10.1.1.53"
export PATH=/usr/sbin:$PATH
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/protobuf/lib

export PS1="[=$LOCAL_IP_4=]\u@\h:/\W\$ "

export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32 :*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;3 1:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm =01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:'

