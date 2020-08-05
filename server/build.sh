# install flarum from S3 (Flarum is built separately, as t2.micro instances cannot build some extensions needed)
install-flarum.sh

# generate ssl
install-ssl.sh

# setup apache
setup-apache.sh

# setup mysql
setup-mysql.sh

# setup flarum
setup-flarum.sh
