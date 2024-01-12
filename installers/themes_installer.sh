#!/bin/bash

set -eox pipefail

# copy .zshrc to the home dir
sudo cp ../.zshrc ~/.zshrc

# copy custom theme to the oh-my-zsh/themes dir
sudo cp ../themes/juze.zsh-theme ~/.oh-my-zsh/themes/juze.zsh-theme

# change the default shell to zsh
chsh -s $(which zsh)
