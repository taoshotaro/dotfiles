if [ ! -e "${HOME}/.zplug/init.zsh" ]; then
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

source ${HOME}/.zplug/init.zsh
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

export PATH=$HOME/flutter/bin:$PATH
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(starship init zsh)"

zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'zsh-users/zsh-autosuggestions'

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo
        zplug install
    fi
fi
zplug load --verbose

# --------------
# cdr関連の設定
# --------------
setopt AUTO_PUSHD        # cdしたら自動でディレクトリスタックする
setopt pushd_ignore_dups # 同じディレクトリは追加しない
DIRSTACKSIZE=100         # スタックサイズ
# cdr, add-zsh-hook を有効にする
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

# --------------
# 履歴関連の設定
# --------------
HISTFILE=~/.zsh_history       #履歴ファイルの設定
HISTSIZE=1000000              # メモリに保存される履歴の件数。(保存数だけ履歴を検索できる)
SAVEHIST=1000000              # ファイルに何件保存するか
setopt extended_history       # 実行時間とかも保存する
setopt share_history          # 別のターミナルでも履歴を参照できるようにする
setopt hist_ignore_all_dups   # 過去に同じ履歴が存在する場合、古い履歴を削除し重複しない
setopt hist_ignore_space      # コマンド先頭スペースの場合保存しない
setopt hist_verify            # ヒストリを呼び出してから実行する間に一旦編集できる状態になる
setopt hist_reduce_blanks     #余分なスペースを削除してヒストリに記録する
setopt hist_save_no_dups      # histryコマンドは残さない
setopt hist_expire_dups_first # 古い履歴を削除する必要がある場合、まず重複しているものから削除
setopt hist_expand            # 補完時にヒストリを自動的に展開する
setopt inc_append_history     # 履歴をインクリメンタルに追加

# --------------
# propmt
# --------------
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_DIR_HOME_BACKGROUND='yellow'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'export PATH="/usr/local/sbin:$PATH"

## Starts recording the simulator.
recsim() {
    echo -n "Use CTRL+C to stop recording"
    xcrun simctl io booted recordVideo "$1"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion