#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


echo -e "\n\nMake sure we’re using the latest Homebrew"
echo "=============================="
brew update

echo -e "\n\nUpgrade any already-installed formulae"
echo "=============================="
brew upgrade



echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

formulas=(
    # flags should pass through the the `brew list check`
    # nginx
    'gnu-sed --with-default-names'  # Install GNU `sed`, overwriting the built-in `sed`.
    'grep --with-default-names'
    'macvim --with-override-system-vim'
    'wget --enable-iri' #Install wget with IRI support
    ack
    coreutils # Install GNU core utilities (those that come with OS X are outdated)
    diff-so-fancy #make your diff's human readable instead of machine readable.
    dnsmasq # local dns
    entr  # Run arbitrary commands when files change
    findutils # Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
    fish  # fish shell
    fzf
    git
    git-standup # See user commits log by day range
    highlight
    hub # better git
    lynx  # textbase browser
    markdown
    mysql
    neovim/neovim/neovim  # better vim
    node
    pv
    reattach-to-user-namespace  #  pbpaste and pbcopy under tmux
    rename  # Perl-powered file rename script with many helpful built-ins
    ripgrep # better search for developer
    sqlmap  # Penetration testing for SQL injection and database servers
    the_silver_searcher # better search than grep, ack
    tmux
    tree  # list file in tree format
    z
    zsh
)

for formula in "${formulas[@]}"; do
    if brew list "$formula" > /dev/null 2>&1; then
        echo "$formula already installed... skipping."
    else
        brew install $formula
    fi
done

# Remove outdated versions from the cellar
brew cleanup



echo "Add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
PATH=$PATH:$(brew --prefix coreutils)/libexec/gnubin
export PATH
