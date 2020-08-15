# create a 1GB swap file (which is needed for composer as it runs out of memory on t2.micro while updating flarum)
# https://docs.alfresco.com/3.4/tasks/swap-space-lin.html
# https://discuss.flarum.org/d/12146-memory-limit-error-when-trying-to-update/26

sudo dd if=/dev/zero of=/root/flarumswapfile bs=1M count=1024

sudo chmod 600 /root/flarumswapfile

sudo /sbin/mkswap /root/flarumswapfile

sudo /sbin/swapon /root/flarumswapfile
