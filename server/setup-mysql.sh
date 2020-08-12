# database setup for mysql
# FIXME: find out the default password for new instance and configure sudo mysql_secure_installation for setup a desired password
mysql -u root -pcovidforum < ./flarum-db-script.sql
