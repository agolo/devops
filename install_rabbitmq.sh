#!/bin/bash

# download the public key to the rabbitmq repository and add it to apt
wget https://www.rabbitmq.com/rabbitmq-signing-key-public.asc
sudo apt-key add rabbitmq-signing-key-public.asc

# add the rabbitmq repository to the sources list
echo "deb http://www.rabbitmq.com/debian/ testing main" | sudo tee -a /etc/apt/sources.list.d/rabbitmq.list

# update the package lists and install rabbitmq
sudo apt-get update && sudo apt-get install -y rabbitmq-server

# enable HTTP management GUI
sudo rabbitmq-plugins enable rabbitmq_management

# start the rabbitmq server
sudo service rabbitmq-server restart