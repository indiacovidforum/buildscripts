#!/bin/bash

# switch to bitnami home
cd /home/bitnami

# clone the build scripts
sudo -H -u bitnami /opt/bitnami/git/bin/git clone https://github.com/indiacovidforum/devops.git

# initialize the server
sudo -H -u bitnami devops/scripts/server/init.sh

# install flarum
sudo -H -u bitnami devops/scripts/server/install-flarum.sh

# setup apache
sudo -H -u bitnami devops/scripts/server/setup-apache.sh

# setup mysql
sudo -H -u bitnami devops/scripts/server/setup-mysql.sh

# setup flarum
sudo -H -u bitnami devops/scripts/server/setup-flarum.sh

# restore flarum
sudo -H -u bitnami devops/scripts/server/restore-flarum.sh 20200812_1597243082
