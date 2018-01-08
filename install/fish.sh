#!/usr/bin/env bash

# https://github.com/oh-my-fish/oh-my-fish
echo -e "\n\nInstall oh-my-fish"
echo "=============================="
curl -L https://get.oh-my.fish > install
fish install --path=~/.local/share/omf --config=~/.config/omf
