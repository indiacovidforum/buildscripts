#!/bin/bash

# switch to bitnami home
cd /home/bitnami

# clone the build scripts
sudo -H -u bitnami /opt/bitnami/git/bin/git clone https://github.com/indiacovidforum/devops.git

# build flarum
sudo -H -u bitnami devops/scripts/flarum/build.sh
