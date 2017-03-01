#!/bin/bash

# extract files
tar -xvf cudnn-8.0-linux-x64-v5.1.tar
cd cuda

#create symbolic links
sudo cp -P include/cudnn.h /usr/include/
sudo cp -P lib64/libcudnn* /usr/lib/x86_64-linux-gnu/

# set permissions
sudo chmod a+r /usr/lib/x86_64-linux-gnu/libcudnn*

cd

python gpu-test.py
