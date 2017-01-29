sync && echo 3 | sudo tee /proc/sys/vm/drop_caches
#Clear filesystem memory cache
# writes any cache data that hasn't been written to the disk out to the disk. 
#Found here: http://ubuntuforums.org/showthread.php?t=589975

sync; echo 3 > /proc/sys/vm/drop_caches
#clear the cache from memory
# tells the kernel to drop what's cached.

sysctl -w vm.drop_caches=3
#Clear filesystem memory cache

sudo sync && sudo echo 3 | sudo tee /proc/sys/vm/drop_caches
#Clear Cached Memory on Ubuntu

#This invalidates the write cache as well as the read cache, which is why we have the sync command first. Supposedly, it is possible to have some cached write data never make it to disk, so use it with caution, and NEVER do it on a production server. 
#Source: http://ubuntuforums.org/showpost.php?p=3621283&postcount=1

free && sync && echo 3 > /proc/sys/vm/drop_caches && free
#Flush memory cache
