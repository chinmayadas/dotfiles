set -x FISH_CONF $HOME/.config/fish/conf.d

set -x PATH "$HOME/.pyenv/bin" $PATH

source $FISH_CONF/variables.fish
source $FISH_CONF/alias.fish

