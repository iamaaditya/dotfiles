sudo su
cd /
tar -cvpzf backup.tar.gz --exclude=/backup.tar.gz --one-file-system / 
tar -cvpzf backuphome.tar.gz --one-file-system /home/
