# update the public DNS hostname in the yml file
publichostname=http://$(curl http://169.254.169.254/latest/meta-data/public-hostname)
sed -i "s/%PUBLIC_HOST_NAME%/$publichostname/g" devops/scripts/server/flarum-config.yml

# configure flarum app from yml
php /home/bitnami/flarum/flarum install --file=devops/scripts/server/flarum-config.yml
