#!/usr/bin/env zsh
# vim: set foldmethod=marker :

# zshenv runs for all types of shells, so let's keep only the minimal
# variables and configurations here.
# https://blog.flowblok.id.au/2013-02/shell-startup-scripts.html

# Don't load default /etc/zsh files
setopt no_global_rcs

# Set XDG global variables to their defaults if not set {{{
: ${XDG_CONFIG_HOME:=$HOME/.config}
: ${XDG_CACHE_HOME:=$HOME/.cache}
: ${XDG_DATA_HOME:=$HOME/.local/share}
: ${XDG_CONFIG_DIRS:=/etc/xdg}
: ${XDG_DATA_DIRS:=/usr/local/share:/usr/share}
: ${XDG_RUNTIME_DIR:=/tmp/run/$(id -u)}
# }}}

# Set up path
typeset -U path  # Array of unique elements
path=($HOME/.local/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin $path)

# Environment variables {{{
export -U PATH
export EDITOR=vim
export LANG=en_US.UTF-8
export DOTFILES=$HOME/.dotfiles
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export XDG_CONFIG_HOME XDG_CACHE_HOME XDG_DATA_HOME XDG_CONFIG_DIRS XDG_DATA_DIRS

# GRML customization
export GRML_NO_APT_ALIASES=1
export GRML_NO_SMALL_ALIASES=1

# Remove '/' from wordchars to allow word deletion on files
export WORDCHARS=$(sed 's|/||' <<< $WORDCHARS)

# Autojump needs to be sourced before compinit
if [[ -f /usr/share/autojump/autojump.zsh ]]; then
  source /usr/share/autojump/autojump.zsh
fi
# }}}
