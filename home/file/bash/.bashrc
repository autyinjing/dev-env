
# 只有在交互式shell中才输出
function ECHO() {
    [[ $- == *i* ]] && echo $1
}

if [ -f /etc/profile ];then
    . /etc/profile
fi

# ***** 其他模块的配置文件
# git自动补全
source ~/.git-completion.bash

# go自动补全
complete -C $HOME/bin/gocomplete go

# ***** 环境变量
export EDITOR="vim"
export PATH=$HOME/bin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/bin:/usr/python/bin:/usr/local/go/bin:/root/v8/depot_tools
export GOPATH="/home/aut/yxs/GameJoyo/SourceCode/Golang"
export PS1="[^_^]\[\e[1;35m\]\u\[\e[m\]\[\e[1;31m\]@\[\e[m\]\h:\[\e[1;39m\]/\W\\[\e[m\]$ "
export LANG=zh_CN.UTF8
export HISTFILESIZE=2000
export HISTSIZE=2000
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S `whoami`:  "
export LS_COLORS='no=00:fi=00:di=01:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32 :*.tar=01;31:*.tar.gz=00;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;3 1:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm =01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:'
export SYSFONT="latarcyrheb-sun16"
export GOPROXY=https://goproxy.cn,direct

# ***** 别名 
# 其他
alias ll='ls -lh --color=tty'
alias ls='ls --color=tty'
alias rm="rm -i"
alias df="df -h"
alias grep="grep --color=auto"
alias cp="cp -i -rf " 
alias conf_bash='vim ~/github/dev-env/home/file/bash/.bashrc'
alias conf_vim='vim ~/github/dev-env/home/file/vim/.vimrc'
alias ptar='tar -czvf'
alias utar='tar -xzvf'
alias c='clear'
alias lal='ls -alh'
alias psx='ps x | grep -v grep | grep -v "ps x"'
alias makec='make clean && make'
alias mcp='/usr/bin/cp -prR'
alias mpython='/usr/python/bin/python3'
alias cman='man -M /usr/local/zhman/share/man/zh_CN'
alias got='ps -eo pid,etime,cmd | grep -v grep | grep'
alias gdb='gdb -q'
alias rbash="cd $HOME/github/dev-env/home/ && bash install.sh && . ~/.bashrc"

# vim
alias vim='/usr/local/bin/vim'
alias vimdiff='/usr/local/bin/vimdiff'
alias v='vim'
alias vi='vim'

# cd
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../../'

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
alias gpm='git pull && git merge origin/master'
alias gstash='git stash'
alias gfetch='git fetch'
alias gchkm='git checkout master'
alias gmg='git merge'

# go
alias gb='go build'
alias gr='go run'

# 导入项目相关的配置
for file in $(ls $HOME/.bash_project/.bashrc*)
do
    . $file
    ECHO "$file init success ."
done

# 加载自定义脚本
if [ -f "$HOME/.bashrc_self" ];then
    . $HOME/.bashrc_self
fi

ECHO ""
ECHO "... Hello World ! ..."
ECHO ""
