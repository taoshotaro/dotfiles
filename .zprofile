export PATH=$HOME/flutter/bin:$PATH
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export NVM_DIR="$HOME/.nvm"
export PATH="$PATH:$HOME/Git/flutter/bin"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="/usr/local/sbin:$PATH"

eval "$(pyenv init -)"
export RUBYOPT=-W0
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"

# The next line updates PATH for nvm.
if [ -f "$NVM_DIR/nvm.sh" ]; then . "$NVM_DIR/nvm.sh"; fi
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/taoshotaro/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/taoshotaro/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/taoshotaro/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/taoshotaro/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
