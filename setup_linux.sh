#!/usr/bin/env bash

sudo apt update -y
sudo apt upgrade -y
git clone https://github.com/hruzgar/dotfiles.git
cp dotfiles/.zshrc .
cp dotfiles/.p10k.zsh .
sudo apt install zsh ranger exa neovim -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_CUSTOM/plugins/zsh-vi-mode
