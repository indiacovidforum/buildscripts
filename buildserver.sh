#!/bin/bash

# switch to bitnami home
cd /home/bitnami

# clone the build scripts
sudo -H -u bitnami /opt/bitnami/git/bin/git clone https://github.com/indiacovidforum/buildscripts.git

# initialize the server
sudo -H -u bitnami buildscripts/server/init.sh



