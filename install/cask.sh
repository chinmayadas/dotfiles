#!/bin/sh

brew tap caskroom/cask
# Install native apps

# # Search Cask package: https://caskroom.github.io/search
# echo -e "\n\nInstalling GUI apps using CASK..."
# echo "=============================="

apps=(
  'vlc'
  'sequel-pro'
  'sublime-text'
  'atom',
  'google-chrome'
  'iterm2'
  'itsycal'
  'google-chrome-canary'
)

for app in "${apps[@]}"; do
    if brew cask list "$app" > /dev/null 2>&1; then
        echo "$app already installed... skipping."
    else
        brew cask install $app
    fi
done
