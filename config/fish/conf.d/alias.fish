#!/usr/local/bin/fish

alias vim (which nvim)
alias vi (which nvim)


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


# Development related
alias c="cd $CODE_DIR"
alias dotfiles="cd $HOME/.dotfiles"

# reload zsh config
alias reload!='source $FISH_CONF/init.fish'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1  # GNU `ls`
   set colorflag "--color"
else # OS X `ls`
   set colorflag "-G"
end

alias vim="nvim"

# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias l="ls -lah $colorflag"
alias la="ls -AF $colorflag"
alias ll="ls -lFh $colorflag"
alias lld="ls -l | grep ^d"
alias rmf="rm -rf"

# Helpers
alias grep='grep --color=auto'
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder

# Applications
# alias ios='open -a /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Trim new lines and copy to clipboard
alias trimcopy="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false ;and killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true ;and killall Finder"

# One of @janmoesen’s ProTip™s
# for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
#    alias "$method"="lwp-request -m '$method'"
# done

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 10'"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

alias chrome="/Applications/Google\\ \\Chrome.app/Contents/MacOS/Google\\ \\Chrome"
alias canary="/Applications/Google\\ Chrome\\ Canary.app/Contents/MacOS/Google\\ Chrome\\ Canary"

