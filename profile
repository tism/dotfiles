for type in profile aliases env; do
  for filename in ~/.dotfiles/**/$type; do
    source $filename
  done
done

export FZF_DEFAULT_COMMAND='ag -g ""'
