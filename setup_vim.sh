#!/bin/sh

ctags --version
if [ "$?" == "0" ]; then
  echo "ctag installed."
else
  echo "INSTALL ctags"
  sudo pacman -S --noconfirm ctags
fi

ag --version
if [ "$?" == "0" ]; then
  echo "ag installed."
else
  echo "INSTALL ag"
  sudo pacman -S --noconfirm the_silver_searcher
fi

