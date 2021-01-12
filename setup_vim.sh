#!/bin/bash

sudo apt install ctags && echo "alias ctags=/usr/local/bin/ctags" >> ~/.profile
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./.vimrc ~/
vim -c PlugInstall
