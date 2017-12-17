#!/bin/sh

# 13. Compass (https://docs.mongodb.com/compass/master/install/#install-on-ubuntu)

echo '----------------- Installing Compass -----------------'
echo '----------------- Getting binary version -----------------'

wget "https://downloads.mongodb.com/compass/mongodb-compass_1.6.0_amd64.deb" -O compass.deb;

echo '----------------- Copying to Download files directory -----------------'

mv compass.deb $HOME/Downloads/files;

echo '----------------- Installing compass through dpkg -----------------'

sudo dpkg -i $HOME/Downloads/files/compass.deb;
