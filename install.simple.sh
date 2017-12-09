#!/bin/env bash

git clone https://github.com/hypc/vimfiles.git ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ~/.vim/vimrc.simple ~/.vimrc && vim +PluginInstall +qall

