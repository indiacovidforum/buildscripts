# database setup for mysql
# FIXME: find out the default password for new instance and configure sudo mysql_secure_installation for setup a desired password
/opt/bitnami/mysql/bin/mysql -u root -p$(grep -o "'.*'" bitnami_credentials | sed "s/'//g") < devops/scripts/server/flarum-db-script.sql