#!/bin/sh

# 12. MongoDB (https://www.digitalocean.com/community/tutorials/como-instalar-o-mongodb-no-ubuntu-16-04-pt)

echo '----------------- Installing Mongo 3.2 -----------------'
echo '----------------- Getting public key server from PKI -----------------'

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927 -y;

echo '----------------- Adding repository URL to apt -----------------'

echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list;

echo '----------------- Updating apt to get mongo URL reference -----------------'

sudo apt-get update -y;

echo '----------------- Installing mongo through apt -----------------'

sudo apt-get install -y mongodb-org;

echo '----------------- Creating unit file to manage service -----------------'

printf "[Unit]\nDescription=High-performance, schema-free document-oriented database\nAfter=network.target\n\n[Service]\nUser=mongodb\nExecStart=/usr/bin/mongod --quiet --config /etc/mongod.conf\n\n[Install]\nWantedBy=multi-user.target" | sudo tee /etc/systemd/system/mongodb.service;

echo '----------------- Starting mongo service -----------------'

sudo systemctl start mongodb;

echo '----------------- Enabling mongo service with initialization -----------------'

sudo systemctl enable mongodb;

