# copy latest flarum build
aws s3 cp s3://indiacovidforum/flarum-builds/1.zip flarum.zip

# unzip flarum build
unzip flarum.zip

# setting premissions
sudo chown -R bitnami:daemon flarum
sudo chmod -R g+w flarum

