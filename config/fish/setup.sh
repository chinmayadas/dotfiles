#!/usr/local/bin/fish
set_color green
echo "Copy functions to fish function directory"
mv ~/.config/fish ~/.config/fish.old
ln -sf ~/dotfiles/shell/fish ~/.config/fish
set_color normal

