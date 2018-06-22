# kali-bash-config
scripts and config files to auto config new kali bash environments

### config.sh
* Run after cloning. This will:
* Setup apt for https
* Install golang, export GOPATH
* Copy the config files to their appropriate places
* Install and configure GEF (for gdb)
* Setup the bash prompt appearance
* Configure the gnome.terminal dash-to-dock icon to auto launch bash with tmux
* Remove extra icons from dash-to-dock (only leaves Firefox, Terminal, Nautilus, Burp)
* Install gobuster
* Install dirsearch

### .tmux.conf
* Inceases history limit to 50000 lines
* Binds shift+arrow key to navigate panes
* Binds alt+arrow key to navigate windows (tabs)
* Binds bind+v/h to split vertically/horizontally respectively
* Binds bind+r to reload from ~/.tmux.conf
* Sets search/copy bindings to vi mode (rather than default emacs)

### .gdbinit
* Sets disassembly-flavor to intel
* GEF is installed and configured by config.sh

### .vimrc
* Sets tab length to 4
* Expands tabs to spaces

## TODO
* GEF dependencies don't 100% work, missing assemble and set-permission commands
* Only tested on Kali 2018.1. Want to detect other OS and distros and get them setup
* Add other things, such as checking for python3, requests, scapy, etc
* Modularize to make it easier for others to fork and adapt to what they want
