#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./.vimrc ~/
chown $(pwd):$(pwd) ~/.vimrc
chown -R $(pwd):$(pwd) .vim
apt install ctags && echo "alias ctags=/usr/local/bin/ctags" >> ~/.profile
vim -c PlugInstall
