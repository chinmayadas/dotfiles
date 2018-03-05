#!/bin/bash

#Reference: https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim

# Installing pyenv with homebrew is unreliable. Use pyenv-installer instead.
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

echo 'set -x PATH "$HOME/.pyenv/bin" $PATH' >> ~/.config/fish/conf.d/init.fish

pyenv install 3.4.4
pyenv virtualenv 3.4.4 neovim3

# https://github.com/pyenv/pyenv-virtualenv/issues/155
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pyenv activate neovim3

pip install neovim
pyenv which python  # Note the path

# in vimrc, add this:
# let g:python_host_prog = '/full/path/to/neovim2/bin/python'
# let g:python3_host_prog = '/full/path/to/neovim3/bin/python'


# May not need this if easy_install is presented in the system
# sudo python -m ensurepip

# Not sure if easy_install in setup by default. But currently it is in my system
# sudo easy_install neovim

# For python3
# sudo pip3 install neovim

# This handle CompleteYou vim plugin
cd ~/.config/nvim/plugged/YouCompleteMe 
python ./install.py --clang-completer --tern-completer
cd -
