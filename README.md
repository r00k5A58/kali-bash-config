# kali-bash-config
scripts and config files to auto config new kali bash environments

### config.sh
*Run after cloning. This will:
*Install golang, export GOPATH
*Copy the config files to their appropriate places
*Installs and configured PEDA (for gdb)
*Setup the bash prompt appearance
*Configure the gnome.terminal dash-to-doc icon to auto launch bash with tmux

### .tmux.conf
*Inceases history limit to 50000 lines
*Binds shift+arrow key to navigate panes
*Binds alt+arrow key to navigate windows (tabs)
*Binds bind+v/h to split vertically/horizontally respectively
*Binds bind+r to reload from ~/.tmux.conf
*Sets search/copy bindings to vi mode (rather than default emacs)

### .gdbinit
*Sets disassembly-flavor to intel
*PEDA is setup by config.sh

### .vimrc
*Sets tab length to 4
*Expands tabs to spaces
