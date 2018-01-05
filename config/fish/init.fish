# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
# set fish_plugins rvm

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
source $fish_path/oh-my-fish.fish

source $fish_config/alias.fish


# Open browser from terminal, send stdout, stderr to /dev/null. Basically prevent message show on terminal
alias chrome "/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome > /dev/null 2>&1"
alias chrome-canary "/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary > /dev/null 2>&1"


# Mac OS commands
alias wakeup "caffeinate -u -t 2"
alias sleep "pmset displaysleepnow"

# Pantheon stuffs
alias terminus=$HOME"/git_repos/nyu-law-pantheon/vendor/bin/terminus"



# Networking stuff
alias ip="curl ifconfig.co ;  echo 'local ip: '; ifconfig | grep inet | grep 192\.168 | cut -d' ' -f2"
alias local_ip="ifconfig | grep 192\.168 | awk '{print $2}'"

# Git stuff
# Some of these come from: https://csswizardry.com/2017/05/little-things-i-like-to-do-with-git/
git config --global alias.shortlog 'shortlog -sn' 
git config --global alias.praise blame
git config --global alias.today 'log --since=00:00:00 --all --no-merges --oneline --author=leoman730@gmail.com'
git config --global alias.graph 'git log --graph --all --decorate --stat --date=iso'
git config --global alias.local 'log --oneline --no-merges origin/master..HEAD'
git config --global alias.upstream 'log --oneline --no-merges HEAD..origin/master'
# git config --global alias.changelog "log --oneline --no-merges <tag>..origin/master"


test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# set variables
set -g -x EDITOR vim

set -gx PATH /usr/local/bin $PATH
