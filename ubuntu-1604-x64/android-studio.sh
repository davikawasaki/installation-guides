#!/bin/sh

# 19. Android Studio (http://www.edivaldobrito.com.br/instalar-android-studio-no-ubuntu/)

echo '----------------- Installing Android Studio -----------------'
echo '----------------- Adding repository URL to apt -----------------'

sudo add-apt-repository ppa:maarten-fonville/android-studio;

echo '----------------- Updating apt to get android studio URL reference -----------------'

sudo apt-get update;

echo '----------------- Installing android studio through apt -----------------'

sudo apt-get install android-studio;

echo '----------------- Creating a symlink to run android studio on CLI -----------------'

sudo ln -s "/opt/android-studio/bin/studio.sh" /usr/bin/android-studio

