#!/bin/bash

cp -a ./.zshrc $HOME/.zshrc
cp -a ./.p10k.zsh $HOME/.p10k.zsh
cp -a ./.oh-my-zsh $HOME/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k
