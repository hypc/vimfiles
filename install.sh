#!/bin/env bash

ver=$1
if [ "$ver" = "" ]; then
    echo -n -e "\033[31m"
    echo "1. simple"
    echo -n -e "\033[0m"
    read -p 'Please enter number within 15 seconds(1): ' -t 15 num
    if [ "$num" = "" ]; then
        num=1
    fi
    if [ "$num" = "1" ]; then
        ver=simple
    fi
fi

git clone https://github.com/hypc/vimfiles.git ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ~/.vim/vimrc.$ver ~/.vimrc && vim +PluginInstall +qall

