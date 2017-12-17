#!/bin/sh

# 9. Spotify (https://www.spotify.com/br/download/linux/)

echo '----------------- Installing Spotify -----------------'
echo '----------------- Adding signing keys to verify downloaded packages -----------------'

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410;

echo '----------------- Adding repository to apt -----------------'

echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list;

echo '----------------- Updating list of available packages in apt -----------------'

sudo apt-get update;

echo '----------------- Installing client through apt -----------------'

sudo apt-get install spotify-client;
