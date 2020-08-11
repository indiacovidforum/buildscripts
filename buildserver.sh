#!/bin/bash

# switch to bitnami home
cd /home/bitnami

# clone the build scripts
git clone https://github.com/indiacovidforum/buildscripts.git

# build the server
buildscripts/server/build.sh

