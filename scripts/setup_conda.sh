#!/bin/bash

# check conda is installed
if command -v conda &> /dev/null
then
    echo "Conda is already installed."
    exit 0
fi

# install conda (optional)
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh
source ~/.bashrc