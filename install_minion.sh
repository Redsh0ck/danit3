#!/bin/bash

mkdir /etc/apt/keyrings

sudo curl -fsSL -o /etc/apt/keyrings/salt-archive-keyring-2023.gpg https://repo.saltproject.io/salt/py3/ubuntu/20.04/amd64/SALT-PROJECT-GPG-PUBKEY-2023.gpg

echo deb [signed-by=/etc/apt/keyrings/salt-archive-keyring-2023.gpg arch=amd64] https://repo.saltproject.io/salt/py3/ubuntu/20.04/amd64/3006 focal main | sudo tee /etc/apt/sources.list.d/salt.list

sudo apt update && sudo apt -y install salt-minion

MASTER_CONF_CONTENT="master:
  - salty.veepn.com"

DEST_FILE="/etc/salt/minion.d/master.conf"

mkdir -p $(dirname "$DEST_FILE")

echo "$MASTER_CONF_CONTENT" > "$DEST_FILE"

read -p "Enter hostname for minion_id: " HOSTNAME

MINION_ID_FILE="/etc/salt/minion_id"

echo "$HOSTNAME" > "$MINION_ID_FILE"

systemctl restart salt-minion.service