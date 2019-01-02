apt update
apt install -y zsh tmux golang-1.10
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
~/dotfiles-do-ubuntu/dotfilesLink.sh
source ~/dotfiles-do-ubuntu/.profile

# go package install
go get github.com/motemen/ghq
# peco install
cd ~/
sudo wget "https://github.com/peco/peco/releases/download/v0.5.1/peco_linux_386.tar.gz"
sudo tar xzvf peco_linux_386.tar.gz
cd peco_linux_386
sudo chmod +x peco
sudo cp peco /usr/local/bin
