#!/usr/bin/env bash
MYUSER=$USER

cd

sudo apt update -y
sudo apt upgrade -y

sudo apt install zsh ranger exa neovim -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/hruzgar/dotfiles.git
cp -f dotfiles/.zshrc .
cp -f dotfiles/.p10k.zsh .

git clone https://github.com/jeffreytse/zsh-vi-mode.git $HOME/.oh-my-zsh/custom/plugins/zsh-vi-mode

sudo chsh -s /bin/zsh $MYUSER
echo "Please restart your shell or start a new session to use Zsh."

#source ~/.zshrc
#exec zsh

