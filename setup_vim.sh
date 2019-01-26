#!/bin/bash

# ===================
# install fish
# ===================
sudo pacman -S --noconfirm fish

# ===================
# install fisherman
# ===================
fish -c 'curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher'

# ===================
# install theme
# ===================
fish -c 'fisher add oh-my-fish/theme-bobthefish'

# ===================
# install powerline
# ===================
pip install powerline-status
git clone https://github.com/powerline/fonts
cd fonts
sh ./install.sh
cd ..
rm -rf fonts

# ===================
# autoexec fish
# ===================
echo "exec fish" >> ~/.bashrc

# ===================
# add alias
# ===================
touch ~/.config/fish/config.fish
cat << EOF >> ~/.config/fish/config.fish
alias vi  'nvim'
alias vim 'nvim'
EOF

# ===================
# exec fish
# ===================
exec fish

