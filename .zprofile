export PATH=$HOME/flutter/bin:$PATH
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export NVM_DIR="$HOME/.nvm"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$PATH:$HOME/Git/flutter/bin"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export ANDROID_HOME="/Users/taoshotaro/Library/Android/sdk"

eval "$(pyenv init -)"
eval "$(rbenv init -)"
export RUBYOPT=-W0
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
