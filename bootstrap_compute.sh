#!/bin/sh
set -e

sudo apt-get update
sudo apt-get install -y gnupg curl wget apt-transport-https

wget -q -O- https://downloads.opennebula.org/repo/repo.key | sudo apt-key add -
wget -q -O- https://downloads.opennebula.org/repo/repo.key | sudo apt-key add -
curl -fsSL https://downloads.opennebula.io/repo/repo2.key|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/opennebula.gpg

sudo -- sh -c 'echo "deb https://downloads.opennebula.io/repo/6.7/Ubuntu/20.04 stable opennebula" > /etc/apt/sources.list.d/opennebula.list'

sudo apt-get update
sudo apt-get install -y opennebula-node-kvm 
