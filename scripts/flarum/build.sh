# download latest flarum into a directory called flarum
composer create-project flarum/flarum flarum --stability=beta

# switch to flarum installation folder
cd flarum

# add formatting extension
composer require fof/formatting

# add google analytics extension (this requires more than 2GB of memory on the AWS instance)
composer require fof/analytics

# step out of flarum folder
cd ..

# zip the flarum build into an archive
zip -r flarum.zip flarum

# use this to manually copy the build at this point to local machine
#scp -i flarum-build.pem bitnami@<EC2_PUBLIC_HOST_NAME>:~/flarum.zip .

# tbd - get the latest flarum build number in S3
# tbd - rename the flarum archive to <BUILD_NUMBER + 1>
# tbd - upload flarum archive to S3
# tbd - terminate instance
