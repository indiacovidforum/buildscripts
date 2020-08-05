# download latest flarum into a directory called flarum
composer create-project flarum/flarum flarum --stability=beta

# switch to flarum installation folder
cd flarum

# add google analytics extension (this requires more than 2GB of memory on the AWS instance)
composer require fof/analytics
