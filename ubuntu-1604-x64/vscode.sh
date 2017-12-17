#!/bin/sh

# 3. Visual Studio Code (http://www.edivaldobrito.com.br/instalar-visual-studio-code-no-linux-usando-pacotes/)

echo '----------------- Installing Visual Studio Code -----------------'
echo '----------------- Getting binary version -----------------'

wget "https://go.microsoft.com/fwlink/?LinkID=760868" -O vscode.deb;

echo '----------------- Copying to Download files directory -----------------'

mv vscode.deb $HOME/Downloads/files;

echo '----------------- Installing VS Code through dpkg -----------------'

sudo dpkg -i $HOME/Downloads/files/vscode.deb;
