#!/bin/zsh


if command -v exa > /dev/null; then
    alias ls='exa'
    alias la='exa -la'
    alias ll='exa -l'
else
    alias ls='ls                      -v --group-directories-first --color=auto'
    alias la='ls -la --human-readable -v --group-directories-first --color=auto'
    alias ll='ls -l  --human-readable -v --group-directories-first --color=auto'
fi

alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias edit='nvim'

alias cp='cp -iv'
alias mv='mv -iv'

alias proj-byobu='byobu new -t $(basename $(pwd))'
alias tmux-rename-window-to-current-dir='tmux rename-window $(basename $(pwd))'
