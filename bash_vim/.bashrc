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

# Comment in the above and uncomment this below for a color prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi
#export WORKDIR=$HOME/DB

alias my='mysql -uroot -proot' 
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


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
set -o vi

#localip=`/sbin/ifconfig eth0 | awk '$1=="inet"{print $2}' | awk -F: '{print $2}'`
#export LOCAL_IP=$localip
#export LOCAL_IP_4=`echo $localip | awk -F. '{print $4}' `
#export LOCAL_IP_3=`echo $localip | awk -F. '{print $3}' `
# If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
    #PROMPT_COMMAND='echo -ne "\033]0; $LOCAL_IP_3.$LOCAL_IP_4 \007"'
    #;;
#*)
    #;;
#esac

export EDITOR="vim"
SYSFONT="latarcyrheb-sun16"

# ----- shortcut cmd -----

# other
alias c='clear'
alias lal='ls -alh'
alias psaut='ps -ef | grep aut | grep -v grep | grep -v "ps -ef"'
alias i4='./INSTALL 4'
alias i1='./INSTALL 1'

# cd
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../../'
alias cdo='cd ~/xhx_code/online/trunk/;pwd'
alias cd2='cd ~/xhx_code/online_bk/trunk/;pwd'
#alias cdpro='cd ~/xhx_code/serv_share/trunk/;pwd'
alias cdlog='cd ~/xhx_code/online/trunk/log/;pwd'
#alias cdp='cd ~/xhx_code/party/trunk/;pwd'
alias cda='cd ~/xhx_code/asynserv/;pwd'
alias cdh='cd ~/xhx_code/home/trunk/;pwd'
alias cds='cd ~/xhx_code/single/trunk/;pwd'
alias cdcfg='cd ~/xhx_code/config/;pwd'
alias cdxml='cd ~/xhx_code/xml/;pwd'
alias cdsw='cd ~/xhx_code/switch/trunk/;pwd'
alias cddb='cd ~/xhx_code/dbproxy/trunk/ser/src/;pwd'
alias cdcs='cd ~/xhx_code/cache_svr/src/;pwd'
alias cdcp='cd ~/xhx_code/serv_share/cache/define/;pwd'
alias cdpb='cd ~/study/test_code/protobuf/;pwd'
alias cdcm='cd ~/study/tools/dev_tools/cmake/;pwd'

# vim
alias v='vim'
alias va='vim ~/xhx_code/online/trunk/weekly_aut.cpp'
alias vwh='vim ~/xhx_code/online/trunk/WorldSession.hpp'
alias vwc='vim ~/xhx_code/online/trunk/WorldSession.cpp'
alias vgh='vim ~/xhx_code/online/trunk/Game.hpp'
alias vgc='vim ~/xhx_code/online/trunk/Game.cpp'
alias vpro='vim ~/xhx_code/serv_share/trunk/cli_proto.hpp'
alias vpgh='vim ~/xhx_code/party/trunk/PVPGame.hpp'
alias vpgc='vim ~/xhx_code/party/trunk/PVPGame.cpp'
alias vbh='vim ~/xhx_code/online/trunk/Badge.hpp'
alias vol='vim ~/xhx_code/online/trunk/log/*_debug*'
alias vpl='vim ~/xhx_code/party/trunk/log/*_debug*'
alias vpsc='vim ~/xhx_code/online/trunk/PartyServ.cpp'
alias vsl='vim ~/xhx_code/single/trunk/log/5448_debug*'
alias vph='vim ~/xhx_code/online/trunk/Player.hpp'
alias vpc='vim ~/xhx_code/online/trunk/Player.cpp'
alias vth='vim ~/xhx_code/online/trunk/Task.hpp'
alias vpsh='vim ~/xhx_code/online/trunk/PartyServ.hpp'
alias voth='vim ~/xhx_code/party/trunk/OnlineTask.hpp'
alias votc='vim ~/xhx_code/party/trunk/OnlineTask.cpp'
alias vhcc='vim ~/xhx_code/party/trunk/HandleClient.cpp'
alias vhoc='vim ~/xhx_code/party/trunk/HandleOnline.cpp'
alias vch='vim ~/xhx_code/party/trunk/Common.hpp'

alias vcsh='vim ~/xhx_code/online/trunk/cache_svr.hpp'
alias vcsc='vim ~/xhx_code/online/trunk/cache_svr.cpp'

alias vdsh='vim ~/xhx_code/online/trunk/DbproxyServ.hpp'
alias vdsc='vim ~/xhx_code/online/trunk/DbproxyServ.cpp'
alias vcth='vim ~/xhx_code/online/trunk/CommonType.hpp'

# svn
alias svup='svn update'
alias svst='svn status'
alias svci='svn ci -m ""'
alias svdi='svn di'

# gcc
alias gc='gcc -Wall'
alias gp='g++ -Wall -std=c++0x'
alias gpb='gp -L /usr/lib/boost/'
alias gproto='gp -I /usr/local/include/google/protobuf/ -L /usr/local/lib/ -lprotobuf -pthread'
alias proc='protoc -I./ --cpp_out=./'

# other
alias ptar='tar -czvf'
alias utar='tar -xzvf'
alias rmn='rm -rf ./*'

# git
alias gsts='git status'
alias gadd='git add ./*'
alias gcmt='git commit -m "add test"'
alias gpush='git push origin master'
export PATH=/usr/sbin:$PATH
export PATH=$PATH:~/.mycmd

export PS1="[^_^]\[\e[1;35m\]\u\[\e[m\]\[\e[1;31m\]@\[\e[m\]fedora:\[\e[1;39m\]/\W\\[\e[m\]$ "
#export PS1="[^_^]\u@\h:/\W\$ "

export LS_COLORS='no=00:fi=00:di=01:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32 :*.tar=01;31:*.tar.gz=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;3 1:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm =01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:'

echo ""
echo "... Hello World ! ..."
echo ""
