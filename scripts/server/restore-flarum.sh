# script to download and restore flarum

# tbd - download flarum backup

# mysql restore
/opt/bitnami/mysql/bin/mysql -u root -pysbHfiirFBG0 flarumdb < flarum-sqlbkp_20200812_1597231357.bak
