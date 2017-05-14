# gpu-dnn-install
Author: Iacopo Poli

Description: Scripts and instructions to install CUDA, cuDNN and two of the most common deep learning frameworks ([Theano](http://deeplearning.net/software/theano/) and [Torch](http://torch.ch)).

## PREREQUISITES:

1 - Download CUDA 8.0 deb(network) file for your system [here](https://developer.nvidia.com/cuda-downloads). If you're using Ubuntu 16.04 on NV6, the file should be called

```bash
cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
```

2 - Download CuDNN 5.1 for CUDA 8.0 Linux [here](https://developer.nvidia.com/rdp/cudnn-download). You have to register first and accept the License. The file should be called
        
```bash
cudnn-8.0-linux-x64-v5.1.tar
```

It should work the same with new versions of CuDNN.

All the other files needed are in this repository.

## INSTALLATION

NOTE: You have to set the permission to execute the installation script files. You can do that with 

```bash 
chmod a+x <filename>
```

0 - Run this and check that it prints something, otherwise there is no NVIDIA hardware available.

```bash
lspci | grep -i nvidia
```

Sample output:

![alt text](Img/NVIDIA-hardware.png "Sample output lspci")

   
1 - Run 

```bash
./cuda-install.sh
```

2 - add /usr/local/cuda-8.0/bin to PATH environment variable in .profile in home directory using nano or vim

```bash
export PATH="$PATH:/usr/local/cuda-8.0/bin"
```

3 - add /usr/local/cuda-8.0/lib64\ to LD_LIBRARY_PATH environment variable in .profile using nano or vim
   
```bash
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-8.0/lib64"
```

For points 2 & 3 you can look at the [example file](https://github.com/iacolippo/gpu-dnn-install/blob/master/.profile) in this repository.

4 - Activate the changes using

```bash
source .profile
```

5 - Reboot the system
        
```bash
sudo reboot
```
        
6 - Reconnect to the machine via ssh and write a ```.theanorc``` file in the home directory equal to [this](https://github.com/iacolippo/gpu-dnn-install/blob/master/.theanorc). Then run the following command and check that is using gpu. It should also print a message that cuDNN is not available.
        
```bash
./theano-install.sh
```

Output:

![alt text](Img/using-gpu.png "Sample output gpu usage")

7 - Run the following command.
        
```bash
./cudnn-install.sh
```

If you installed Theano, you can run ```python gpu-test.py``` and you should see cuDNN is now available.
Output:

![alt text](Img/using-cudnn.png "Sample output using cudnn and gpu")

        
8 - Install Torch

```bash
./torch-install.sh
```

Answer *yes* to anything on the terminal. At the end, enter

```bash
source ~/.bashrc
```

9 - Install Tensorflow (GPU version)

```bash
./tensorflow-install.sh
```

Check that the GPU is being used by running

```bash
python tensorflow-gpu.py
```

10 - Install Keras by running 

```bash
sudo pip install keras
```

When using Tensorflow backend (default setting), the code runs on GPU automatically if one is detected.

For any question you can contact me on Twitter [@iacopo_poli](https://twitter.com/iacopo_poli).
