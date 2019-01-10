#!/bin/env bash

git clone https://github.com/hypc/vimfiles.git ~/.vim
cd ~/.vim
git submodule update --recursive --init
ln -s ~/.vim/vimrc.simple ~/.vimrc && vim +PluginInstall +qall

