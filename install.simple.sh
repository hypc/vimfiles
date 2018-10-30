#!/bin/env bash

git clone --recurse-submodules https://github.com/hypc/vimfiles.git ~/.vim
ln -s ~/.vim/vimrc.simple ~/.vimrc && vim +PluginInstall +qall

