#!/usr/bin/env zsh

echo "Hello from zshenv"

# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$XDG_CONFIG_HOME/local/share
export XDG_CACHE_HOME=$XDG_CONFIG_HOME/cache


# Text Editor
export EDITOR="nvim"
export VISUAL="nvim"

# ZSH 
export ZDOTDIR=$HOME/.config/zsh
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE="$ZDOTDIR/.zsh_history"

# Go
export GOBIN="$HOME/go/bin"




