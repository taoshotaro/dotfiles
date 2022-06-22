# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zprofile.pre.zsh" ]] && . "$HOME/.fig/shell/zprofile.pre.zsh"

export GOPATH=$HOME/go
export NVM_DIR="$HOME/.nvm"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/fvm/default/bin:$PATH
export PATH=$HOME/.pub-cache/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$PATH
export PATH=$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/platform-tools:$PATH
export RUBYOPT='-W0'
export PATH=$PATH:"$HOME/Git/flutter/bin"
export SSH_AUTH_SOCK=/Users/taoshotaro/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
export PATH="$PATH:/Users/taoshotaro/.local/bin"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(pyenv init -)"
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"

# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/taoshotaro/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/taoshotaro/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/taoshotaro/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/taoshotaro/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zprofile.post.zsh" ]] && . "$HOME/.fig/shell/zprofile.post.zsh"
