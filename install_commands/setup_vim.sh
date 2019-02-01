#!/bin/sh

echo $0

echo "=========================="
echo " neovim"
echo "=========================="
nvim --version
if [ "$?" == "0" ]; then
  echo "neovim installed."
else
  echo "INSTALL neovim"
  sudo pacman -S --noconfirm neovim
fi

echo "=========================="
echo " ctags"
echo "=========================="
ctags --version
if [ "$?" == "0" ]; then
  echo "ctag installed."
else
  echo "INSTALL ctags"
  sudo pacman -S --noconfirm ctags
fi

echo "=========================="
echo " ag"
echo "=========================="
ag --version
if [ "$?" == "0" ]; then
  echo "ag installed."
else
  echo "INSTALL ag"
  sudo pacman -S --noconfirm the_silver_searcher
fi

echo "=========================="
echo " dein"
echo "=========================="
rm -rf ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh -o /tmp/dein_installer.sh
sh /tmp/dein_installer.sh ~/.cache/dein
rm -rf /tmp/dein_installer.sh

echo "================================"
echo " make symlink to ~/.config/nvim"
echo "================================"
ln -sf ${SH_DIR}/../config/nvim ~/.config/nvim

