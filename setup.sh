#!/bin/bash

DOT_FILES=(
    .gitconfig .zshrc .config/fish/config.fish
)

for file in ${DOT_FILES[@]}
do
    ln -fs $HOME/dotfiles/$file $HOME/$file
done

if [ "$(uname)" == 'Darwin' ]; then
  echo 'aliases for MacOS'
  ln -fs $HOME/dotfiles/.aliases_mac $HOME/.aliases
elif [ "$(uname)" == 'Linux' ]; then
  echo 'aliases for Linux'
  ln -fs $HOME/dotfiles/.aliases $HOME/.aliases
fi

