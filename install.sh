#!/usr/bin/env bash

command_exists() {
    type "$1" > /dev/null 2>&1
}

echo "Backing up dotfiles."
source install/backup.sh

echo -e "\nInstalling dotfiles.\n"

echo -e "Initializing submodule(s)"
git submodule update --init --recursive


source install/link.sh

source install/git.sh

source install/fish.sh



# only perform macOS-specific install
if [ "$(uname)" == "Darwin" ]; then
    echo -e "\n\nRunning on OSX"

    # source install/brew.sh
    # source install/cask.sh
    # source install/osx.sh

fi
#

echo "creating vim directories"
mkdir -p ~/.vim-tmp

if ! command_exists zsh; then
    echo "zsh not found. Please install and then re-run installation scripts"
    exit 1

elif ! [[ $SHELL =~ .*zsh.* ]]; then
    echo "Configuring zsh as default shell"


    # sudo sh -c "echo $(which zsh) >> /etc/shells"

    # for unknown reason, when try to change shell, the script stucked
    # chsh -s $(which zsh)
fi


if ! command_exists zplug; then
  if [ ! -d ~/.zplug ]; then
    echo "installing zplug, a plugin manager for zsh - http://zplug.sh"
    git clone https://github.com/zplug/zplug ~/.zplug
  else
    echo "zplug manager already installed. skipping."
  fi
fi

echo "Done. Reload your terminal."
