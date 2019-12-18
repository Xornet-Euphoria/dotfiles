#!/bin/bash

DOT_FILES=(
    .gitconfig .zshrc
)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

if [ "$(uname)" == 'Darwin' ]; then
  echo 'aliases for MacOS'
  ln -s $HOME/dotfiles/.aliases_mac $HOME/.aliases
elif [ "$(expr substr (uname -s ) 1 5)" == 'Linux' ]; then
  echo 'aliases for Linux'
  ln -s $HOME/dotfiles/.aliases $HOME/.alias
fi
