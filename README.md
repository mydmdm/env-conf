Configuration
====

## Query basic information
```bash
echo $USER
ls /usr/bin/python* | grep -v "config"
source conf/scripts/switch-cuda.sh

```

## Initiate basic environments
```
export mypy=/usr/bin/python3.9 # select python version
export myenv=~/envs/myenv
git config --global user.name $(echo $USER | cut -d "." -f 2)
git config --global user.email example@example.com
${mypy} -m venv ${myenv}
source ${myenv}/bin/activate
pip3 install torch torchvision torchaudio

```

## References
Some useful configuration and scripts to configure a new working environment. 

- Switching between cuda versions, refer to [switch-cuda](https://github.com/phohenecker/switch-cuda)
