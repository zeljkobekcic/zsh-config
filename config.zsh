#!/bin/zsh
paths=(
	"$HOME/.local/bin"
	"$HOME/.local/my_bin"
	"$HOME/.poetry/bin"
)

for p in $paths; do
	if [ -e $p ]; then 
		PATH="$p:$PATH"
	fi
done


export HISTFILE="$HOME/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt EXTEND_HISTORY

