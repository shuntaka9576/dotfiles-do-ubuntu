# zplug settings
export ZPLUG_HOME=~/.zplug
source $ZPLUG_HOME/init.zsh

# plugins
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "RobSis/zsh-completion-generator", if:"GENCOMPL_FPATH=$HOME/.zsh/complete"
zplug "Tarrasch/zsh-functional" # each map filter fold
zplug "willghatch/zsh-hooks"
zplug "unixorn/warhol.plugin.zsh" # ansi
zplug "mollifier/zload"
zplug "b4b4r07/enhancd", use:"init.sh"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# 選択箇所を塗りつぶす
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# lsに色をつける
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -GF"
alias gls="gls --color"

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# 入力ミス時似たコマンドを表示
setopt correct

# 表示名を変更
PROMPT='%F{green}%n%f@'

# 予測入力
#autoload predict-on
#predict-on

#なるべくbashの設定を使う
source ~/.profile
