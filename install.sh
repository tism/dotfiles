#!/usr/bin/env zsh

if ! (( $+commands[brew] ))
then
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

PATH="$PATH:/opt/homebrew/bin" brew bundle

if ! [ -d $HOME/.oh-my-zsh ];
then
  zsh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

link_config () {
  rm -f $1
  ln -s $2 $1
}

link_config "$HOME/.zshrc" "$HOME/.dotfiles/zshrc"
link_config "$HOME/.vimrc" "$HOME/.dotfiles/vim/vimrc"
link_config "$HOME/.gitconfig" "$HOME/.dotfiles/git/config"

