#!/bin/bash

# this script should be executed right after a VM is provisioned 
# to set up the basic admin and devops tools 

# install basic dev packages
sudo apt-get install -y build-essential git wget htop multitail httpie tree jq

# clone the devops repository to get access to installation scripts
git clone git@github.com:oxymor0n/devops.git /devops