#!/bin/sh

sudo pacman -S --noconfirm docker docker-compose
sudo systemctl enable docker
sudo groupadd docker
sudo gpasswd -a $(whoami) docker
sudo systemctl restart docker

