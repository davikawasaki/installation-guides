# Installing & Using NodeJS without sudo commands

This document explains how to install and use Node and NPM without sudo permissions. It will cover the installation with **curl/wget** for Linux Ubuntu 14.04+ and **homebrew** for OSx Mavericks.

## Context

There are many valid ways to install Node and NPM, but this tutorial focus on the installation for those who have run into the unbearable EACCES errors when trying to:

1.  Install npm
2.  Use npm install globally (for packages such as bower, etc.)

Solutions in web include running npm with sudo or modifying permissions, using **sudo chown -R 'whoami' [directory]** or other permission commands.

The solution here presented don't require modified permissions, which will then use Node Version Manager (NVM) to install Node/NPM. For more info or detailed steps to install NVM you can access it [GitHub page](https://github.com/creationix/nvm).

#Pre-Requisites Before following the steps below to install node/npm, you should make sure that there are no prior existing versions of node/npm on your system. You can check if an existing version is installed with the following commands:

```
$ which node
$ which npm
```

or

```
$ whereis node
$ whereis npm
```

If there is no output after either of the above, then that respective package is not present on your system (whether it be node or npm). If it exists, you can remove NPM with [this article](https://www.npmjs.org/doc/misc/removing-npm.html). Most of the time the followings commands will suffice for removing NPM and/or Node:

```
$ sudo npm uninstall npm -g
```

or

```
$ sudo apt-get remove nodejs
$ sudo apt-get autoremove
```

**Note**: if you installed Node to your home directory the files will likely be in a different location. Otherwise, they'll be probably in /usr/local/ folder.

## Installing on Linux Ubuntu 14.04+

On Linux Ubuntu you can install the NVM with curl or wget commands as below:

```
$ curl https://raw.githubusercontent.com/creationix/nvm/v0.12.1/install.sh | bash
```

```
$ wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.12.1/install.sh | bash
```

Once you've run either of those commands and NVM has finished downloading, run the following command to update the bash with the NVM installed:

```
$ source ~/.profile
```

Now NVM commands should be working in the terminal, try **$ nvm** to confirm the NVM command is working. If not, try restarting your terminal and run again the installation.

Once NVM is working you can install a version of node by using the following command:

```
$ nvm install [version]
```

To list the available versions, run this command:

```
$ nvm ls-remote
```

You can install any Node version, but many packages in RAIS Web project will depend for a 4.5.0+ version. In this tutorial it'll use the current v7.5.0 as below:

```
$ nvm install 7.5.0
```

Afterwards you can check if Node and NPM were successfully installed, which version was installed and the location installed:

```
$ node -v
$ npm -v
$ which node
$ which npm
```

**Note:** if you close the terminal and try to run any NPM or Node commands, it'll not find them. This happens because this installation mode doesn't set the proper **environment paths** for NVM, Node and NPM. In order to overturn this, you need to edit the .bashrc file - stays on /home/$USER/ folder on Ubuntu - and insert the following lines in the end of the file:

```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm,sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
export PATH=$HOME/.nvm/v7.5.0/bin:$HOME/.local/bin:$PATH
```

## Installing on OSx

This portion is for OSx users only, and you'll need **homebrew** installed on your machine. If not, visit the [site](https://brew.sh/) for instructions. These steps were copied from the original post and weren't tested yet.

Installing Node/NPM with homebrew is very simple. First, update your brew:

```
$ brew update
```

Then run doctor to check for any errors/warnings (you do not have to address all warnings, but it is a good idea to read over the warnings):

```
$ brew doctor
$ brew prune
```

Add the Homebrew location to your **$Path** and source your bash or zsh profile file after adding/saving this:

```
$ export PATH="/usr/local/bin:$PATH"
```

Now you can install Node with the command below:

```
$ brew install node
```

## Wrapping Up

That's it, you now can use Node/NPM **without using sudo!** For example to get the dependencies for Gulp, Bower and Karma-CLI, enter the following three commands:

```
$ npm install -g gulp          # Install Gulp
$ npm install -g bower         # Install bower package manager
$ npm install -g karma-cli     # Install karma-cli (command line interface for karma)
```

This tutorial was adapted from [this post from WenInCode](http://www.wenincode.com/installing-node-jsnpm-without-sudo/). You can check there for more detailed steps, as well as other comments if any error popped up.