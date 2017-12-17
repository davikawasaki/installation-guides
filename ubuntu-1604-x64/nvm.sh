#!/bin/sh

# 11. NVM (https://github.com/davikawasaki/installation-guides/blob/master/node-without-sudo.md)

echo '----------------- Installing NVM, NPM and Node -----------------'
echo '----------------- Getting binary version -----------------'

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.12.1/install.sh | bash;

echo '----------------- Updating bash after NVM installation -----------------'

source ~/.profile;

echo '----------------- Installing NPM and Node (v7.5.0) -----------------'

nvm install 7.5.0;

echo '----------------- Inserting path to bashrc -----------------'

echo "export NVM_DIR='$HOME/.nvm' \n[ -s '$NVM_DIR/nvm,sh' ] && . '$NVM_DIR/nvm.sh' \nexport PATH=$HOME/.nvm/v7.5.0/bin:$HOME/.local/bin:$PATH;" | sudo tee -a $HOME/.bashrc

echo '----------------- Installing globally gulp, bower and vue-cli -----------------'

npm install -g gulp;
npm install -g bower;
npm install -g vue-cli;
