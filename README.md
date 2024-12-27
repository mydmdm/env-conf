Usage
====

This repository contains some useful scripts and configurations for setting up a new working environment, particularly for deep learning research.

## Scripts

The `scripts` directory contains the following scripts:
| Script | Description |
| --- | --- |
| `switch-cuda.sh` | Switch between different CUDA versions. |
| `setup_git.sh` | Setup git configurations. |
| `setup_conda.sh` | Install and setup conda configurations. |
| `test_python_env.sh` | Test python environment. |

## Frequently used commands

- To install `PyTorch` with `CUDA` support (refer to [PyTorch](https://pytorch.org/get-started/locally/))
```bash
conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia
```

- Check status of nvidia driver (e.g., when `nvidia-smi` is not working).
```bash
dkms status
sudo dpkg --configure -a
```

## References
Some useful configuration and scripts to configure a new working environment.

### CUDA compatibility
Actually we need not worry about the preinstalled cuda versions. According to [this reply](https://discuss.pytorch.org/t/install-pytorch-for-cuda-11-3-with-pip/152299/5)
>  the pip wheels and conda binaries ship with their own CUDA runtime as mentioned before. The system-wide installed CUDA toolkit will be used if you are building PyTorch from source or a custom CUDA extenstion.

To switch between cuda versions, refer to [switch-cuda](https://github.com/phohenecker/switch-cuda)



