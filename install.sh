#!/usr/bin/env bash

LINE=". $HOME/.dotfiles/profile"
FILE="$HOME/.profile"
grep -qF -- "$LINE" "$FILE" || printf "\n$LINE" >> "$FILE"

rm -rf ~/.vimrc
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
