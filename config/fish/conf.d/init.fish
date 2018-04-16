set -x FISH_CONF $HOME/.config/fish/conf.d

set -x PATH "$HOME/.pyenv/bin" $PATH

set PATH $PATH $HOME/.composer/vendor/bin

source $FISH_CONF/variables.fish
source $FISH_CONF/alias.fish



# Load pyenv automatically
status --is-interactive; and source (pyenv init -|psub)

# Load pyenv-virtualenv automatically 
status --is-interactive; and source (pyenv virtualenv-init -|psub)

