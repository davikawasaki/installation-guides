#!/bin/sh

# 20. Texlive & TexStudio & Jabref

echo '----------------- Installing Texlive -----------------'
echo '----------------- Installing Texlive through apt -----------------'

sudo apt-get update;
sudo apt-get install texlive-full -y;

echo '----------------- Installing TexStudio -----------------'
echo '----------------- Installing TexStudio through apt -----------------'

sudo apt-get update;
sudo apt-get install texstudio -y;

echo '----------------- Installing JabRef -----------------'
echo '----------------- Installing JabRef through apt -----------------'

sudo apt-get update;
sudo apt-get install jabref -y;