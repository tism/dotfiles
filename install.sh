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

link_config () {
  rm -f $1
  ln -s $2 $1
}

link_config("~/.zshrc", "~/.dotfiles/zshrc")
link_config("~/.vimrc", "~/.dotfiles/vim/vimrc")
link_config("~/.gitconfig", "~/.dotfiles/git/gitconfig")
