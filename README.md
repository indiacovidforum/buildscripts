# Build scripts
Project containing build scripts for indiacovidforum.com website.

# Steps to setup local machine to launch AWS instances 
Get launch credentials from LastPass

Run the following command in bash "aws configure --profile launch"

Use the following
Access Key: use from launch credentials

Secret Key: user from launch credentials

Use region code: ap-south-1

Use default output format: Just press enter

To launch the server, run scripts/launch/server.sh

# Why do we have a separate build for Flarum?
Ideally we would like to build Flarum on the web server itself. However, the Google Analytics extension needs a machine with at least 4 GB of RAM to be installed. Since we use t2.micro instances for our webserver (due to free tier) which have only 1 GB RAM, we have to build Flarum separately on a t2.medium machine, upload it to S3 and then copy the build onto the webserver on boot. It would be great if we can automate this step as part of the server launch so that we always use the latest stable Flarum.
