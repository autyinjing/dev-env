#########################################################################
# File Name: install.sh
# Author: Aut
# mail: autyinjing@126.com
# Created Time: 2021年04月03日 星期六 14时10分48秒
#########################################################################
#!/bin/bash

# 安装home目录的开发环境

set -e

function Echo() {
    echo "sync $1 success ."
}

function Sync() {
    rsync -a $1 $2
    Echo $1
}

function Mkdir() {
    mkdir -p $1
}

# bash
Sync file/bash/ ~/

# ssh
Mkdir ~/.ssh
Sync file/ssh/ ~/.ssh/
chmod 600 ~/.ssh/id_rsa

# vim
#Sync file/vim/ ~/

# git
Sync file/git/ ~/

# gdb
Sync file/gdb/ ~/

# bin
#Mkdir ~/bin
#Sync file/bin/ ~/bin/
