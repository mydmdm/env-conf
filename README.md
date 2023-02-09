Configuration
====

## Query basic information
```bash
echo $USER
ls /usr/bin/python* | grep -v "config"
source conf/scripts/switch-cuda.sh

```

## Initiate basic environments
```bash
# init git
git config --global user.name $(echo $USER | cut -d "." -f 2)
git config --global user.email example@example.com
# init screen
cp -f rc/screenrc ~/.screenrc

# install conda (optional)
# curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# sh Miniconda3-latest-Linux-x86_64.sh
# source ~/.bashrc
conda init # may require restart shell after init

conda create -y --name myconda python=3.9
conda activate myconda
# init pytorch
export mycuda=11.3
source scripts/switch-cuda.sh ${mycuda}
conda install -y pytorch torchvision torchaudio pytorch-cuda=11.6 -c pytorch -c nvidia
python -c "import torch; print(torch.__version__)"

pip install -r requirements.txt

```

## References
Some useful configuration and scripts to configure a new working environment. 

### CUDA compatibility
Actually we need not worry about the preinstalled cuda versions. According to [this reply](https://discuss.pytorch.org/t/install-pytorch-for-cuda-11-3-with-pip/152299/5)
>  the pip wheels and conda binaries ship with their own CUDA runtime as mentioned before. The system-wide installed CUDA toolkit will be used if you are building PyTorch from source or a custom CUDA extenstion.

To switch between cuda versions, refer to [switch-cuda](https://github.com/phohenecker/switch-cuda)

### Linux `screen` 
Start and resume a new session with below command
```bash
screen -S session_name
screen -r session_id
```

### Vim
In case the connection is not stable for VSC remote mode, use `vim` instead.
Refer to the [python-vim](https://github.com/ets-labs/python-vimrc).
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ets-labs/python-vimrc/master/setup.sh)"
```

