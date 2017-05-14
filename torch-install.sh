#!/bin/bash

cd ~

git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch; 
sudo bash install-deps;
./install.sh
