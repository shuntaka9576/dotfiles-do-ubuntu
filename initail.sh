# brew install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew packages
brew install git zsh fzf jq wget zplug peco tmux

# dotfiles set up
git clone https://github.com/shuntaka9576/dotfiles.git
cd ~/dotfiles
chmod 777 dotfilesLink.sh
./dotfilesLink.sh

go get github.com/peco/peco
go get github.com/motemen/ghq
