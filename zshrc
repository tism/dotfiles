export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  colored-man-pages
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
export EDITOR="vim"

PROMPT="🍔  %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

for type in aliases env; do
  for filename in ~/.dotfiles/**/$type; do
    source $filename
  done
done

export FZF_DEFAULT_COMMAND='ag -g ""'
