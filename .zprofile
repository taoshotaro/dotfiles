export GOPATH=$HOME/go
export NVM_DIR="$HOME/.nvm"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/fvm/default/bin:$PATH
export PATH=$HOME/.pub-cache/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$PATH
export PATH=/Users/taoshotaro/Library/"Application Support"/JetBrains/Toolbox/apps/AndroidStudio/ch-0/202.7351085/"Android Studio.app"/Contents/jre/jdk/Contents/Home/bin:$PATH
export JAVA_HOME=/Users/taoshotaro/Library/"Application Support"/JetBrains/Toolbox/apps/AndroidStudio/ch-0/202.7351085/"Android Studio.app"/Contents/jre/jdk/Contents/Home
export RUBYOPT='-W0'

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
