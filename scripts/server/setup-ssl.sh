# obtain and install SSL certificates for $1 (domain name, for example 'stage.indiacovidforum.com'),
# and install it in apache

# install certbot silently
sudo apt-get install certbot -y

# obtain and install SSL certificate for domain name
sudo certbot -n certonly --webroot -w /home/bitnami/flarum/public -d $1 -m indiacovidforum@gmail.com --agree-tos

# replace apache SSL certificate file paths
sudo sed -i "/SSLCertificateFile/c\  SSLCertificateFile \"/etc/letsencrypt/live/$1/fullchain.pem\"" /opt/bitnami/apache/conf/bitnami/bitnami-ssl.conf
sudo sed -i "/SSLCertificateKeyFile/c\  SSLCertificateKeyFile \"/etc/letsencrypt/live/$1/privkey.pem\"" /opt/bitnami/apache/conf/bitnami/bitnami-ssl.conf

# redirect http to https in apache
sudo sed -i "/<VirtualHost _default_:80>/a \
\  ServerName $1\n\
\  Redirect permanent / https://$1" /opt/bitnami/apache/conf/bitnami/bitnami.conf

# restart apache
sudo /opt/bitnami/ctlscript.sh restart apache
