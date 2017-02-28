#!/bin/bash

sudo apt install gcc

# install the correct kernel headers and development packages installed
sudo apt-get install linux-headers-$(uname -r)

# now install the package
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb
sudo apt-get update
sudo apt-get install cuda