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




### Tmux
``` 
# Switching session
tmux switch -t [session_name]


# Cycle through default pane layout
# https://superuser.com/questions/493048/how-to-convert-2-horizontal-panes-to-vertical-panes-in-tmux
# C-b space (bound to next-layout by default) cycles through available layouts, you can also use the select-layout command.
# M-1 to M-5  Arrange panes in one of the five preset layouts: even- horizontal, even-vertical, main-horizontal, main- vertical, or tiled.


# Create new pane
C-b % # Horital pane
C-b " #Horitall pane


```

