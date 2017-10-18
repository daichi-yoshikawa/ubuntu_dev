How to install CUDA, cuDNN
==========================

* CUDA
1. Disable secure boot.
   Launch BIOS and disable secure boot. Also, setup password for secure boot.
   eg.
   In the case of HP desktop,
   Select Security -> Secure Boot Configuration -> Secure Boot : Disable
   Select Security -> Setup Password -> New Password, confirm Password
2. Go to cuda download page. You have to make account and log in.
   https://developer.nvidia.com/cuda-downloads
   Select platform properly.
   eg. Linux -> x86_64 -> Ubuntu -> 16.04 -> deb (local)
3. Install CUDA.
   $ sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb
   $ sudo apt-get update
   $ sudo apt-get install cuda
   If you’re asked to do disable UEFI(Secure Boot), disable it.
4. Add the following description in '~/.bashrc'.
   export CUDA_HOME=/usr/local/cuda
   export PATH=${CUDA_HOME}/bin:$PATH
   export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:$LD_LIBRARY_PATH
5. Reflect update of '~/.bashrc' on your system.
   $ . ~/.bashrc
6. Reboot computer.
7. Make sure that cuda works.
   $ mkdir -p ~/Tmp
   $ cd ~/Tmp
   $ cuda-install-samples-8.0.sh ./
   $ cd ~/Tmp/NVIDIA_CUDA-8.0_Samples
   $ make -j8

* cuDNN
1. Go to cuDNN download page. You have to make account and log in.
   https://developer.nvidia.com/cudnn
   Select cuDNN for desired version, platform.
   eg. cuDNN v6.0 Library for Linux
2. Expand the downloaded file and copy files into system directories.
   include/cudnn.h -> /usr/local/cuda/include/
   lib64/* -> /usr/local/cuda/lib64/
