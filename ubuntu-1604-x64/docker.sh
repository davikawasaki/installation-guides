#!/bin/sh

# 17. Docker (https://www.digitalocean.com/community/tutorials/como-instalar-e-usar-o-docker-no-ubuntu-16-04-pt)

echo '----------------- Installing Docker -----------------'
echo '----------------- Getting public key server from PKI -----------------'

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D;

echo '----------------- Adding repository URL to apt -----------------'

sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main';

echo '----------------- Updating apt to get docker URL reference -----------------'

sudo apt-get update;

echo '----------------- Installing docker engine through apt -----------------'

sudo apt-get install -y docker-engine;

echo '----------------- Enabling docker commands without sudo -----------------'

sudo usermod -aG docker $(whoami);
