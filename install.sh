#!/bin/sh

cd `dirname $0`

# Setup
ln -sf `pwd`/.Brewfile ~/.Brewfile
ln -sf `pwd`/.zprofile ~/.zprofile
ln -sf `pwd`/.zshrc ~/.zshrc
ln -sf `pwd`/.gitconfig ~/.gitconfig
ln -sf `pwd`/.gitignore ~/.gitignore

xcode-select --install

# Homebrew
if !(type "brew" > /dev/null 2>&1); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew bundle --global

# nvm
if !(type "nvm" > /dev/null 2>&1); then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
fi
