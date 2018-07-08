#!/bin/sh

# 13. QtCreator

echo '----------------- Installing QtCreator -----------------'
echo '----------------- Getting binary version -----------------'

wget "http://download.qt.io/archive/online_installers/3.0/qt-unified-linux-x64-3.0.2-online.run" -O qtcreator.run;

echo '----------------- Copying to Download files directory -----------------'

mv compass.deb $HOME/Downloads/files;

echo '----------------- Installing compass through shell execution -----------------'

chmod +x $HOME/Downloads/files/qtcreator.run;
./qtcreator.run;
