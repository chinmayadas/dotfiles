#!/bin/bash

sudo add-apt-repository ppa:ondrej/php
sudo apt-get update


cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php

sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

composer


sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

sudo apt-get install python-dev python-pip python3-dev python3-pip

sudo apt-get install php7.1 php7.1-common
sudo apt-get install php7.1-curl php7.1-xml php7.1-zip php7.1-gd php7.1-mysql php7.1-mbstring php7.1-dom
php -v


echo -e "Install linuxbrew\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"





