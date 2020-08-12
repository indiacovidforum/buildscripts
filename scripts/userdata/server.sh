#!/bin/bash

# switch to bitnami home
cd /home/bitnami

# clone the build scripts
sudo -H -u bitnami /opt/bitnami/git/bin/git clone https://github.com/indiacovidforum/devops.git

# initialize the server
sudo -H -u bitnami devops/scripts/server/init.sh



