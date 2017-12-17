#!/bin/sh

# 10. Dropbox (http://www.edivaldobrito.com.br/cliente-dropbox-no-linux/)

echo '----------------- Installing Dropbox x64 -----------------'
echo '----------------- Getting binary version -----------------'

wget "http://www.dropbox.com/download/?plat=lnx.x86_64" -O dropbox.tar.gz;

echo '----------------- Copying to Download files directory -----------------'

mv dropbox.tar.gz $HOME/Downloads/files;

echo '----------------- Exporting to /opt/ folder -----------------'

sudo tar -xvf $HOME/Downloads/files/dropbox.tar.gz -C /opt/;
sudo mv /opt/.dropbox-dist/ /opt/dropbox;

echo '----------------- Creating a symlink to run dropbox on CLI -----------------'

sudo ln -sf /opt/dropbox/dropboxd /usr/bin/dropbox;

echo '----------------- Creating a desktop entry -----------------'

echo '[Desktop Entry]\n Version=1.0\n Name=dropbox\n Exec=/opt/dropbox/dropboxd\n Icon=/ \n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/dropbox.desktop;
