#!/bin/bash
curl -OL https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v0.5.12/yggdrasil-0.5.12-amd64.deb
sudo DEBIAN_FRONTEND=noninteractive  apt install -y ./yggdrasil-0.5.12-amd64.deb
yggdrasil -genconf | sudo tee /etc/yggdrasil.conf > /dev/null
sudo systemctl start yggdrasil
sudo yggdrasilctl addpeer "$YGG_ENDPOINT"
echo "$YGG_HOSTS"|sudo tee -a /etc/hosts > /dev/null
