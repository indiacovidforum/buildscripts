# copy latest flarum build
aws s3 cp s3://indiacovidforum/flarum-builds/1.zip /home/bitnami/flarum.zip

# unzip flarum build
unzip /home/bitnami/flarum.zip -d /home/bitnami/

# setting premissions
sudo chown -R bitnami:daemon flarum
sudo chmod -R g+w flarum

