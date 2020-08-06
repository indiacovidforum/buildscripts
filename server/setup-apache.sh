# change server www root folder from '/opt/bitnamic/apache/htdocs' to '~/flarum/public'
grep -rl '/opt/bitnami/apache/htdocs' /opt/bitnami/apache/conf/ | xargs sed -i 's|/opt/bitnami/apache/htdocs|~/flarum/public|g'

# restart apache
sudo /opt/bitnami/ctlscript.sh restart apache
