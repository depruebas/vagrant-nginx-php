#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

sudo apt install -y nginx php-fpm net-tools

sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/vagrant/data/default.conf /etc/nginx/sites-enabled/

sudo ln -s /home/vagrant/data/info.php /var/www/html/

sudo /etc/init.d/nginx restart