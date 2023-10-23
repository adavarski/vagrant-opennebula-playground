#!/bin/sh
set -e

sudo apt-get update
sudo apt-get install -y gnupg curl wget apt-transport-https

wget -q -O- https://downloads.opennebula.org/repo/repo.key | sudo apt-key add -
wget -q -O- https://downloads.opennebula.org/repo/repo.key | sudo apt-key add -
curl -fsSL https://downloads.opennebula.io/repo/repo2.key|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/opennebula.gpg

sudo -- sh -c 'echo "deb https://downloads.opennebula.io/repo/6.7/Ubuntu/20.04 stable opennebula" > /etc/apt/sources.list.d/opennebula.list'

# see https://github.com/OpenNebula/minione
#curl -Lq -o minione 'https://github.com/OpenNebula/minione/releases/latest/download/minione'
curl -Lq -o minione 'https://raw.githubusercontent.com/OpenNebula/minione/master/minione'
sudo bash minione --marketapp-name 'Ubuntu 20.04' --frontend --force --yes --version 6.7
#sudo -- sh -c "echo 'oneadmin:oneadmin' > /var/lib/one/.one/one_auth"
