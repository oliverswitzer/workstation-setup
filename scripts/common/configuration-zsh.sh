#!/bin/bash

echo
echo "Configuring zsh with Oh My Zsh"
brew install autojump
brew install grc
brew install coreutils
brew install rbenv
brew install watch

# Mac OSX Ships with zsh now, so let's use Oh My Zsh
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing asdf plugin **you will still need to enable it in ~/.zshrc"
if [[ ! -a $HOME/.oh-my-zsh/custom/plugins/asdf ]]; then
    git clone https://github.com/kiurchv/asdf.plugin.zsh $HOME/.oh-my-zsh/custom/plugins/asdf
fi

echo "To install plugins, edit your ~/.zshrc file and add them to the plugins=(*) section. Here's a recommended list"
echo "plugins=(git bundler dotenv osx rake rbenv ruby asdf)"

echo
echo "Configuring direnv with zsh"
brew install direnv
cp files/direnv.zsh ~/.oh-my-zsh/custom/direnv.zsh
