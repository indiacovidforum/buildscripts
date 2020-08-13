# update the public DNS hostname in the yml file
publichostname=$1
urlLineNumber=$(grep -n "'url' =>" flarum/config.php | cut -f1 -d:)
sed -i "${urlLineNumber}s|.*|  'url' => '$publichostname',|g" flarum/config.php

# clear flarum cache
sudo php /home/bitnami/flarum/flarum cache:clear
