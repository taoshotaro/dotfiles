export PATH=$HOME/flutter/bin:$PATH
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export NVM_DIR="$HOME/.nvm"
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(starship init zsh)"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
