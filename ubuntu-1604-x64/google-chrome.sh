#!/bin/sh

# 1. Chrome (https://www.vivaolinux.com.br/dica/Instalando-Google-Chrome-no-Ubuntu-1604-64-bits)

echo '----------------- Installing Google Chrome x64 -----------------'
echo '----------------- Getting binary version -----------------'

wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" -O google-chrome.deb;

echo '----------------- Copying to Download files directory -----------------'

mv google-chrome.deb $HOME/Downloads/files;

echo '----------------- Installing through dpkg -----------------'

sudo dpkg -i $HOME/Downloads/files/google-chrome.deb;
