#!/bin/bash

cd ~

git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch; bash install-deps;
./install.sh

source ~/.bashrc

sudo apt install luarocks

# install needed packages
luarocks install https://raw.githubusercontent.com/eladhoffer/eladtools/master/eladtools-scm-1.rockspec
luarocks install https://raw.githubusercontent.com/eladhoffer/DataProvider.torch/master/dataprovider-scm-1.rockspec
luarocks install dpnn
luarocks install unsup
luarocks install https://raw.github.com/andresy/mnist/master/rocks/mnist-scm-1.rockspec
