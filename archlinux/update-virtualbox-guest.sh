#!/bin/sh

sudo pacman -Rns --noconfirm virtualbox-guest-utils
sudo pacman -Rns --noconfirm virtualbox-guest-utils-nox
sudo pacman -Rns --noconfirm virtualbox-guest-dkms
sudo pacman -S --noconfirm virtualbox-guest-iso



