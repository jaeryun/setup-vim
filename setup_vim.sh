#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./.vimrc ~/
brew install ctags && echo "alias ctags=/usr/local/bin/ctags" >> ~/.profile
vim -c PlugInstall
