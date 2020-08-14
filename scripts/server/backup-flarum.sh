# script to backup flarum and upload to S3

# backup mysql
backup_mysql() {
  /opt/bitnami/mysql/bin/mysqldump --lock-tables -u root -p$(grep -o "'.*'" bitnami_credentials | sed "s/'//g") flarumdb > $1/mysql.bak
}

# backup flarum
backup_flarum() {
  # add all flarum folders that need to be backed up here
  mkdir -p $1/flarum
  cp -R ~/flarum $1/flarum
}

# backup and upload
backup_and_upload() {
  backuptime=$(date +"%Y%m%d_%s")
  backupdir=~/backups/$backuptime
  backupfile=$backupdir/flarum-bkp_$backuptime.zip
  mkdir -p $backupdir
  backup_mysql $backupdir &
  backup_flarum $backupdir
  wait
  cd $backupdir
  zip -r $backupfile ./*
  cd -
  aws s3 cp $backupfile s3://indiacovidforum/backups/
  rm -rf $backupdir
}

backup_and_upload
