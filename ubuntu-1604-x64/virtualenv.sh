#!/bin/sh

# 16. Virtualenv (https://estudepy.wordpress.com/2013/06/26/instalando-ambiente-de-desenvolvimento-python-e-django-com-virtualenv-no-ubuntu/)

echo '----------------- Installing Virtualenv -----------------'
echo '----------------- Installing python-dev through apt -----------------'

sudo apt-get install python-dev;

echo '----------------- Forcing not installed dependencies to be installed -----------------'

sudo apt-get install -f;

echo '----------------- Installing python-virtualenv through apt -----------------'

sudo apt-get install python-virtualenv;
