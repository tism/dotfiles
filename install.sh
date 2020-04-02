#!/usr/bin/env zsh

if ! (( $+commands[brew] ))
then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew bundle

if ! [ -d ~/.oh-my-zsh ];
then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

rm -f ~/.zshrc
ln -s ~/.dotfiles/zshrc ~/.zshrc

rm -f ~/.vimrc
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
