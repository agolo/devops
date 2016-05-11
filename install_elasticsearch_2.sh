#!/bin/bash

# install java 8
# NOTE: pwd must be the git repo directory for this to work correctly
./install_java.sh

# download the public key of the elasticsearch repository
wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

# add the elasticsearch 2.x repository to the sources list
echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list

# update the package lists and install elasticsearch
sudo apt-get update && sudo apt-get install -y elasticsearch
