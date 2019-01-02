apt install -y zsh tmux golang-1.10
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
~/dotfiles-do-ubuntu/dotfilesLink.sh
source ~/dotfiles-do-ubuntu/.profile
go get github.com/peco/peco
go get github.com/motemen/ghq
