#!/bin/sh

# 6. IntelliJ 2017.3 (https://github.com/mmk2410/intellij-idea-ultimate)

echo '----------------- Installing IntelliJ 2017.3.1 -----------------'
echo '----------------- Getting binary version -----------------'

echo '----------------- Adding repository URL to apt -----------------'

sudo apt-add-repository ppa:mmk2410/intellij-idea;

echo '----------------- Updating apt to get IntelliJ URL reference -----------------'

sudo apt-get update;

echo '----------------- Installing IntelliJ through apt -----------------'

sudo apt-get install intellij-idea-ultimate;
