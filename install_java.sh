#!/bin/bash

# remove existing openjdk packages
sudo apt-get -y purge openjdk*

# pre-empt issues with the add-apt-repository command
sudo apt-get -y install software-properties-common

# add the repository for Oracle Java 8
sudo add-apt-repository ppa:webupd8team/java

# update the package lists and install Oracle Java 8
sudo apt-get update && sudo apt-get -y install oracle-java8-installer

# set Oracle Java 8 as the default Java installation
sudo apt-get -y install oracle-java8-set-default
