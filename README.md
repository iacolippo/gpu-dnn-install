# gpu-dnn-install
Author: Iacopo Poli

Description: Scripts and instructions to install CUDA, cuDNN and the most common deep learning frameworks.

## PREREQUISITES:

1. Download CUDA 8.0 deb(local) file for your system [here](https://developer.nvidia.com/cuda-downloads)
        
   If you're using Ubuntu 16.04 on NV6, the file should be called

```bash
cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb
```

2. Download CUDNN 5.1 for CUDA 8.0 Linux [here](https://developer.nvidia.com/rdp/cudnn-download)
        
   You have to register first and accept the License. The file should be called
        
```bash
cudnn-8.0-linux-x64-v5.1.tar
```

## INSTALLATION

0. Run this and check that it prints something, otherwise there is no NVIDIA hardware available.

```bash
lspci | grep -i nvidia
```
   
1. Run 

```bash
./installing-cuda.sh
```

2. add /usr/local/cuda-8.0/bin to PATH environment variable in .profile in home directory
   using nano or vim

```bash
PATH="/bin:/usr/bin:/usr/local/bin:/sbin:/usr/sbin:/usr/local/cuda-8.0/bin"
```

3. add /usr/local/cuda-8.0/lib64\ to LD_LIBRARY_PATH environment variable in .profile using
   nano or vim
   
```bash
LD_LIBRARY_PATH="/usr/local/cuda-8.0/lib64"
```

4. Activate the changes using

```bash
source .profile
```

5. Reboot the system
        
```bash
sudo reboot
```
        
6. Reconnect via ssh and put the file .theanorc in home directory. Then run the following command and check that is using gpu.    It should also print a message that cuDNN is not available.
        
```bash
./install-theano.sh
```

7. Run the following command and check that cuDNN is now available in the output of python test file.
        
```bash
./installing-cudnn.sh
```
        
8. Install torch and some of its libraries with 

```bash
./install-torch.sh
```
