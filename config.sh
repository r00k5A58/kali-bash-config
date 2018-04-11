#!/bin/bash

cp ./.tmux.conf ~
cp ./.gdbinit ~
cp ./.vimrc ~
apt install golang
echo "export GOPATH=~/go" > ~/.bashrc
echo 'export PS1="[\[$(tput sgr0)\]\[\033[38;5;14m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\] \u@\h:\[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\n\\$ \[$(tput sgr0)\]"' > ~/.bashrc
find / -type f -iname gnome.terminal.desktop -exec sed -i -e "s/Exec=gnome-terminal/Exec=gnome-terminal -e \"tmux -2\"" {} \;
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
