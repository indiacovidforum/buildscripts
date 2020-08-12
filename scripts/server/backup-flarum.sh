# script to backup and upload flarum

# backup mysql
/opt/bitnami/mysql/bin/mysqldump --lock-tables -u flarum -pw8wfBdjG4Yp3k-S% flarumdb > flarum-sqlbkp_`date +"%Y%m%d_%s"`.bak

# tbd - backup flarum

# tbd - upload backup
