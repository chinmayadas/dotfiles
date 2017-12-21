#!/usr/bin/env bash


# https://github.com/powerline/fonts

echo "Install powerline font."
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

echo "Completed installation of powerline fonts."
echo "If iterm is used make sure to changed Non-ASCII font to be the same as the Regular font.
https://github.com/powerline/fonts/issues/44#issuecomment-20585955"
