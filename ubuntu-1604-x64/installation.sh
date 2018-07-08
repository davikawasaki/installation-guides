#!/bin/sh

echo '------------------------------------------------------------------------------'
echo '----------------- UBUNTU 16.04 x64 LTS PROGRAMS INSTALLATION -----------------'
echo '------------------------------------------------------------------------------'

echo '---------------------------------------------------------------------'
echo '----------------- SEQUENCE OF FILES TO BE INSTALLED -----------------'
echo '----------------- 1. GOOGLE CHROME ----------------------------------'
echo '----------------- 2. JAVA (JDK/JRE) ---------------------------------'
echo '----------------- 3. VISUAL STUDIO CODE -----------------------------'
echo '----------------- 4. PIP --------------------------------------------'
echo '----------------- 5. GIT --------------------------------------------'
echo '----------------- 6. INTELLIJ 2017.3 --------------------------------'
echo '----------------- 7. PYCHARM 2017.3 ---------------------------------'
echo '----------------- 8. ECLIPSE NEON -----------------------------------'
echo '----------------- 9. SPOTIFY ----------------------------------------'
echo '----------------- 10. DROPBOX ---------------------------------------'
echo '----------------- 11. NVM, NPM & NODE -------------------------------'
echo '----------------- 12. MONGODB ---------------------------------------'
echo '----------------- 13. COMPASS ---------------------------------------'
echo '----------------- 14. MYSQL WORKBENCH -------------------------------'
echo '----------------- 15. POSTGRESQL & PGADMIN 3 ------------------------'
echo '----------------- 16. VIRTUALENV ------------------------------------'
echo '----------------- 17. DOCKER ----------------------------------------'
echo '----------------- 18. VIM -------------------------------------------'
echo '----------------- 19. ANDROID STUDIO --------------------------------'
echo '----------------- 20. TEX -------------------------------------------'
echo '----------------- 21. QT CREATOR (OPTIONAL) -------------------------'
echo '---------------------------------------------------------------------'

echo '-------------- THIS SEQUENCE OF INSTALLATION SAVES EACH INSTALLATION FILE ---------------'
echo '-------------- IN A FOLDER INSIDE DOWNLOADS. IT IS DEDICATED ONLY TO X64  ---------------'
echo '-------------- UBUNTU 16.04 LTS VERSIONS, AND OTHER VERSIONS MAY INDICATE ---------------'
echo '-------------- ERRORS THROUGHOUT THE INSTALLATION. THE AUTHOR DOES NOT    ---------------'
echo '-------------- TAKE RESPONSABILITY FOR ANY DAMAGE ANYONE MAY CAUSE TO     ---------------'
echo '-------------- THEIR OS OR MACHINE WITH THIS INSTALLATION.                ---------------'

echo '---------------------------------------------------------'
echo '----------------- STARTING INSTALLATION -----------------'
echo '---------------------------------------------------------'

echo '----------------- Updating and upgrading installed programs versions -----------------'

sudo apt-get update && sudo apt-get upgrade;
mkdir $HOME/Downloads/files;

# 1. Google Chrome
sh ./google-chrome.sh

sudo apt-get install -f;

# 2. Java
sh ./jdk-jre.sh

sudo apt-get install -f;

# 3. Visual Studio Code
sh ./vscode.sh

sudo apt-get install -f;

# 4. Pip
sh ./pip.sh

sudo apt-get install -f;

# 5. Git
sh ./git.sh

sudo apt-get install -f;

# 6. IntelliJ 2017.3
sh ./intellij.sh

sudo apt-get install -f;

# 7. PyCharm 2017.3
sh ./pycharm.sh

sudo apt-get install -f;

# 8. Eclipse
sh ./eclipse.sh

sudo apt-get install -f;

# 9. Spotify
sh ./spotify.sh

sudo apt-get install -f;

# 10. Dropbox
sh ./dropbox.sh

sudo apt-get install -f;

# 11. NVM
sh ./nvm.sh

sudo apt-get install -f;

# 12. MongoDB
sh ./mongo.sh

sudo apt-get install -f;

# 13. Compass
sh ./compass.sh

sudo apt-get install -f;

# 14. MySQL Workbench
sh ./mysql-workbench.sh

sudo apt-get install -f;

# 15. PostgreSQL & pgAdmin
sh ./postgresql-pgadmin.sh

sudo apt-get install -f;

# 16. Virtualenv
sh ./virtualenv.sh

sudo apt-get install -f;

# 17. Docker
sh ./docker.sh

sudo apt-get install -f;

# 18. Vim
sh ./vim.sh

sudo apt-get install -f;

# 19. Android Studio
sh ./android-studio.sh

sudo apt-get install -f;

# 20. Tex
sh ./tex.sh

# 21. QtCreator
# sh ./qt-creator.sh

sudo apt-get install -f;

echo '----------------- Purge and autoremove any unmet dependencies -----------------'

sudo apt purge;
sudo apt autoremove;

# Author: Davi Kawasaki
# Version: 1.0.1
# OS: Ubuntu 16.04 LTS x64
