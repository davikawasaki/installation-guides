#!/bin/sh

# 6. PyCharm 2017.3 (https://gist.github.com/jimrybarski/eb31eb71afd63b04d356)

echo '----------------- Installing Pycharm 2017.3.1 -----------------'
echo '----------------- Getting binary version -----------------'

wget -O pycharm.tar.gz "https://download.jetbrains.com/python/pycharm-professional-2017.3.1.tar.gz"

echo '----------------- Copying to Download files directory -----------------'

sudo mv pycharm.tar.gz $HOME/Downloads/files;

echo '----------------- Exporting to /opt/ folder -----------------'

sudo tar -xf $HOME/Downloads/files/pycharm.tar.gz --directory /opt

echo '----------------- Creating a symlink to run pycharm on CLI -----------------'

sudo ln -s "/opt/pycharm-2017.3.1/bin/pycharm.sh" /usr/bin/pycharm
