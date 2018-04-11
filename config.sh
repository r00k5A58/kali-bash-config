#!/bin/bash

echo "[*] Installing and configure tmux"
apt install tmux -y
find / -type f -iname *gnome.terminal.desktop -exec sed -i -e "s/^Exec=gnome-terminal/Exec=gnome-terminal -e \"tmux -2\"/" {} \;
cp ./.tmux.conf ~
echo "[*] Tmux configured"
cp ./.gdbinit ~
sleep 1
cp ./.vimrc ~
echo "[*] Config files copied to their places"
echo "[*] Installing GoLang"
apt install golang -y
echo "export GOPATH=~/go" > ~/.bashrc
echo "[*] GoLang installed and configured"
echo "[*] Setting up bash environment"
gsettings set org.gnome.shell favorite-apps "['firefox-esr.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Nautilus.desktop', 'kali-burpsuite.desktop']"
echo 'export PS1="[\[$(tput sgr0)\]\[\033[38;5;14m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\] \u@\h:\[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\n\\$ \[$(tput sgr0)\]"' > ~/.bashrc
wget -O ~/.gdbinit-gef.py -q https://github.com/hugsy/gef/raw/master/gef.py
echo "source ~.gdbinit-gef.py" >> ~/.gdbinit
echo "[*] Environment setup complete"
