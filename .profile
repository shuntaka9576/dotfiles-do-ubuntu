export GOPATH=$HOME/go
export PATH=~/go/bin:$PATH
export PATH=$GOPATH/bin:$PATH

git config --global ghq.root $GOPATH/src
git config --global user.name "shuntaka9576"
git config --global user.email "shuntaka9576@gmail.com"

# ghq peco setting
# reference https://qiita.com/itkrt2y/items/0671d1f48e66f21241e2
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
