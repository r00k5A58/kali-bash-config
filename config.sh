#!/bin/bash

echo "[*] Prepping apt"
apt update
apt install apt-transport-https
sed -i -e "s/^deb http:/deb https:/" /etc/apt/sources.list
apt update
echo "[*] apt configured for https and updated"
echo "[*] Installing and configure tmux"
apt install tmux -y
find / -type f -iname *gnome.terminal.desktop -exec sed -i -e "s/^Exec=gnome-terminal$/Exec=gnome-terminal -e \"tmux -2\"/" {} \;
cat ./.tmux.conf >> ~/.tmux.conf
echo "[*] Tmux configured"
echo "[*] Configuring vim"
cat ./.vimrc >> ~/.vimrc
echo "[*] Vim setup complete"
echo "[*] Installing GoLang"
apt install golang -y
echo "export GOPATH=~/go" >> ~/.bashrc
echo "[*] GoLang installed and configured"
echo "[*] Installing GoBuster"
go get github.com/OJ/gobuster
ln -s ~/go/bin/gobuster /usr/local/bin/gobuster
echo "[*] GoBuster install complete"
echo "[*] Setting up bash environment"
gsettings set org.gnome.shell favorite-apps "['firefox-esr.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Nautilus.desktop', 'kali-burpsuite.desktop']"
echo 'export PS1="[\[$(tput sgr0)\]\[\033[38;5;14m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\] \u@\h:\[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\n\\$ \[$(tput sgr0)\]"' >> ~/.bashrc
echo "[*] Configuring gdb and gef"
cat ./.gdbinit >> ~/.gdbinit
echo "[*] Installing python re-reqs"
apt install python3-pip -y
apt install cmake -y
pip3 install capstone unicorn keystone-engine ropper retdec-python
wget -O ~/.gdbinit-gef.py -q https://github.com/hugsy/gef/raw/master/gef.py
echo "source ~/.gdbinit-gef.py" >> ~/.gdbinit
echo "[*] gdb configuration complete"
echo "[*] Installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git ~/git/dirsearch/
chmod +x ~/git/dirsearch/dirsearch.py
ln -s ~/git/dirsearch/dirsearch.py /usr/local/bin/dirsearch
echo "[*] Done installing dirsearch"
echo "[*] Environment setup complete"
