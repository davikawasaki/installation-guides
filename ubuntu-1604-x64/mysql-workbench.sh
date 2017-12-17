#!/bin/sh

# 14. MySQL Workbench (http://www.edivaldobrito.com.br/como-instalar-o-instalar-mysql-workbench-no-ubuntu-e-derivados/)

echo '----------------- Installing MySQL Workbench Community 6.3.9-1 x64 -----------------'
echo '----------------- Getting binary version -----------------'

wget "http://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-6.3.9-1ubuntu16.04-amd64.deb" -O mysql-workbench-community.deb;

echo '----------------- Copying to Download files directory -----------------'

mv mysql-workbench-community.deb $HOME/Downloads/files;

echo '----------------- Installing MySQL Workbench through dpkg -----------------'

sudo dpkg -i $HOME/Downloads/files/mysql-workbench-community.deb;
