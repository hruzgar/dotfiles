#!/usr/bin/env bash
MYUSER=$USER

# change to home dir
cd ~

# update package repository
sudo apt update -y
sudo apt upgrade -y

# install apps
sudo apt install zsh ranger exa neovim -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# get custom config files
git clone https://github.com/hruzgar/dotfiles.git
cp -f dotfiles/.zshrc .
cp -f dotfiles/.p10k.zsh .

# change default shell to zsh
sudo chsh -s /bin/zsh $MYUSER

echo "\nPlease restart your shell or start a new session to use Zsh.\n"
