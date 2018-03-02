set -x FISH_CONF $HOME/.config/fish/conf.d


set -x PATH "$HOME/.pyenv/bin" $PATH
status --is-interactive; and source (pyenv init -|psub)

source $FISH_CONF/variables.fish
source $FISH_CONF/alias.fish

echo "in $FISH_CONF/init.fish"
