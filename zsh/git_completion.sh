# this is specific to the location of the current version of git, installed by homebrew
# GIT_VERSION=$(git --version | head -1 | cut -d" " -f3)
#
# completion=/usr/local/Cellar/git/$GIT_VERSION/etc/bash_completion.d/git-completion.bash
#
# if test -f $completion; then
#   echo $completion
#     source $completion
# fi



# https://github.com/mshick/dotfiles/blob/master/git/completion.zsh
# Uses git's autocompletion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).
completion='$(brew --prefix)/share/zsh/site-functions/_git'

if test -f $completion
then
  source $completion
fi
