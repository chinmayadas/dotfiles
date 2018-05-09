#!/usr/bin/env bash

DOTFILES=$HOME/.dotfiles


echo -e "\n Symlink bash_profile"
ln -s $DOTFILES"/bash/bash_profile" $HOME/.bash_profile


