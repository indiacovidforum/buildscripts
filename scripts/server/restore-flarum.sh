# script to download and restore flarum

# mysql restore
restore_mysql() {
  /opt/bitnami/mysql/bin/mysql -u root -p$(grep -o "'.*'" bitnami_credentials | sed "s/'//g") flarumdb < $1/mysql.bak
}

# flarum restore
restore_flarum() {
  yes n | cp -rf $1/flarum/public/assets ~/flarum/public/
}

# download and restore flarum
download_and_restore() {
  backuptime=$1
  backupdir=~/backups/$backuptime
  backupfile=flarum-bkp_$backuptime.zip
  mkdir -p $backupdir
  aws s3 cp s3://indiacovidforum/backups/$backupfile $backupdir
  cd $backupdir
  unzip $backupdir/$backupfile
  cd ~
  restore_mysql $backupdir &
  restore_flarum $backupdir
  wait
}

download_and_restore $1