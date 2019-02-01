#!/bin/sh

sudo pacman -Rns --noconfirm virtualbox-guest-utils
sudo pacman -Rns --noconfirm virtualbox-guest-modules-arch
sudo pacman -S --noconfirm virtualbox-guest-utils virtualbox-guest-modules-arch


