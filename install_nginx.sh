#!/bin/bash

# download the public key to the nginx repository and add it to apt
wget http://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key

# add the nginx repository to the sources list
echo "deb http://nginx.org/packages/ubuntu/ trusty nginx" | sudo tee -a /etc/apt/sources.list.d/nginx.list
echo "deb-src http://nginx.org/packages/ubuntu/ trusty nginx" | sudo tee -a /etc/apt/sources.list.d/nginx.list

# update the package lists and install nginx
sudo apt-get update && sudo apt-get install -y nginx

# create sites-available and sites-enabled folders
sudo mkdir /etc/nginx/sites-available
sudo mkdir /etc/nginx/sites-enabled

# include all files in sites-enabled in the nginx config
echo "include /etc/nginx/sites-enabled/*;" | sudo tee -a /etc/nginx/conf.d/sites-enabled.conf

sudo service nginx restart