#!/bin/sh

# 8. Eclipse Neon R3 (http://www.edivaldobrito.com.br/eclipse-no-linux/)

echo '----------------- Installing Eclipse Neon x64 -----------------'
echo '----------------- Getting binary version -----------------'

wget -c http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/neon/R/eclipse-jee-neon-R-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz;

echo '----------------- Copying to Download files directory -----------------'

mv eclipse.tar.gz $HOME/Downloads/files;

echo '----------------- Exporting to /opt/ folder -----------------'

sudo tar -zxvf $HOME/Downloads/files/eclipse.tar.gz -C /opt/;

echo '----------------- Establishing a name pattern -----------------'

sudo mv /opt/eclipse*/ /opt/eclipse;

echo '----------------- Getting logo for desktop entry -----------------'

sudo wget https://dl2.macupdate.com/images/icons128/11662.png -O /opt/eclipse/eclipse.png;

echo '----------------- Creating a desktop entry -----------------'

echo -e '[Desktop Entry]\n Version=1.0\n Name=eclipse\n Exec=/opt/eclipse/eclipse\n Icon=/opt/eclipse/eclipse.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/eclipse.desktop;

