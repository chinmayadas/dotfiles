Inspired by:

https://github.com/nicknisi/dotfiles

https://github.com/addyosmani/dotfiles

https://github.com/mathiasbynens/dotfiles

## Contents

+ [Initial Setup and Installation](#initial-setup-and-installation)
+ [ZSH Setup](#zsh-setup)
+ [Vim and Neovim Setup](#vim-and-neovim-setup)
+ [Fonts](#fonts)
+ [Tmux](#tmux-configuration)

## Initial Setup and Installation

### Backup

First, you may want to backup any existing files that exist so this doesn't overwrite your work.

Run `install/backup.sh` to backup all symlinked files to a `~/dotfiles-backup` directory.

This will not delete any of these files, and the install scripts will not overwrite any
existing. After the backup is complete, you can delete the files from your home directory
to continue installation.

### Installation

If on OSX, you will need to install the XCode CLI tools before continuing. To do
so, open a terminal and type

```bash
➜ xcode-select --install
```

### Fonts
To render prettier theme for vim, tmux, and terminal,
[Powerline](https://github.com/powerline/fonts) font will be installed to provide
"Powerline" glyphs.

### Vim

[Vim plug](https://github.com/junegunn/vim-plug) is used to manage vim plugins.

[Setting up python for neovim](https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim)


Switching to neovim (nvim)
https://medium.com/usevim/what-is-modern-vim-2591f6b1ec04
* Asynchronous IO, give performance gain on plugins load
* Embed terminal
* Modern IDE features such as autocompletion


### Bash File Testing
```
-b filename - Block special file
-c filename - Special character file
-d directoryname - Check for directory Existence
-e filename - Check for file existence, regardless of type (node, directory, socket, etc.)
-f filename - Check for regular file existence not a directory
-G filename - Check if file exists and is owned by effective group ID
-G filename set-group-id - True if file exists and is set-group-id
-k filename - Sticky bit
-L filename - Symbolic link
-O filename - True if file exists and is owned by the effective user id
-r filename - Check if file is a readable
-S filename - Check if file is socket
-s filename - Check if file is nonzero size
-u filename - Check if file set-user-id bit is set
-w filename - Check if file is writable
-x filename - Check if file is executable
```


### Vim Tips
To check health status of vim installation. Useful with there's a problem with vim
```
:CheckHealth
```

To see if a plugin or script set the option.
For example, check `:verbose set paste?`


To increase/decrease window size:
http://vim.wikia.com/wiki/Resize_splits_more_quickly
```
ctrl-w + and ctrl-w - 
```

To check which plugin effect a key stroke, for example, the <tab> key
```
verbose imap <Tab>

# Disable the tab mapping
:iunmap <Tab>

```



### Tmux
``` 
# Switching session
tmux switch -t [session_name]

# Create new session within tmux
C-b then :new [name]

# Start copy and paste
C-b + Esc
Press v
Use h,j,k,l to highligh
Press p


# Cycle through default pane layout
# https://superuser.com/questions/493048/how-to-convert-2-horizontal-panes-to-vertical-panes-in-tmux
# C-b space (bound to next-layout by default) cycles through available layouts, you can also use the select-layout command.
# M-1 to M-5  Arrange panes in one of the five preset layouts: even- horizontal, even-vertical, main-horizontal, main- vertical, or tiled.


# Create new pane
C-b % # Horital pane
C-b " #Horitall pane


# Resizing pane

C-b

:resize-pane -D (Resizes the current pane down)
:resize-pane -U (Resizes the current pane upward)
:resize-pane -L (Resizes the current pane left)
:resize-pane -R (Resizes the current pane right)
:resize-pane -D 10 (Resizes the current pane down by 10 cells)
:resize-pane -U 10 (Resizes the current pane upward by 10 cells)
:resize-pane -L 10 (Resizes the current pane left by 10 cells)
:resize-pane -R 10 (Resizes the current pane right by 10 cells)


# Switch between windows

C-a 1 ...      switch to window 1, ..., 9, 0
C-a 9
C-a 0
C-a p          previous window
C-a n          next window
C-a l          ‘last’ (previously used) window
C-a w          choose window from a list

```

