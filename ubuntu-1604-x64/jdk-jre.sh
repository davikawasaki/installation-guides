#!/bin/sh

# 2. Java (https://www.digitalocean.com/community/tutorials/como-instalar-o-java-com-apt-get-no-ubuntu-16-04-pt)

echo '----------------- Installing JRE & JDK -----------------'
echo '----------------- Updating apt before installation -----------------'

sudo apt-get update -y;

echo '----------------- Installing default JRE through apt -----------------'

sudo apt-get install default-jre -y;

echo '----------------- Installing default JDK through apt -----------------'

sudo apt-get install default-jdk -y;
