#!/bin/bash

sudo apt update

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

sudo apt update

sudo apt install -y docker-ce

sudo systemctl status docker

sudo usermod -aG docker $USER

su - $USER -c 'id -nG'

sudo chown root:docker /var/run/docker.sock

git config --global user.email "nethravathir1210@gmail.com"
git config --global user.name "NethravathiR"
git add .
git commit -m "backup"
git push https://github.com/Nethravathi-R/Assignmnt.git main
