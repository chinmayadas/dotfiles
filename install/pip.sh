#!/bin/bash

# May not need this if easy_install is presented in the system
sudo python -m ensurepip

# Not sure if easy_install in setup by default. But currently it is in my system
sudo easy_install neovim


# This handle CompleteYou vim plugin
cd ~/.dotfiles/config/nvim/plugged/YouCompleteMe 
python ./install.py --clang-completer --tern-completer
cd -
