#!/bin/bash

mkdir /etc/apt/keyrings

sudo curl -fsSL -o /etc/apt/keyrings/salt-archive-keyring-2023.gpg https://repo.saltproject.io/salt/py3/ubuntu/20.04/amd64/SALT-PROJECT-GPG-PUBKEY-2023.gpg

echo deb [signed-by=/etc/apt/keyrings/salt-archive-keyring-2023.gpg arch=amd64] https://repo.saltproject.io/salt/py3/ubuntu/20.04/amd64/3006 focal main | sudo tee /etc/apt/sources.list.d/salt.list

sudo apt update && sudo apt -y install salt-minion