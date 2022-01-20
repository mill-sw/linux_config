## copy img
### 1 check name of the device
    sudo fdisk -l   #sudo lsblk -l
    
### 2 unmount device
    sudo umount /dev/sdb
    
### 3 create image
    sudo dd if=/dev/sdb of=/home/z/sdcard.img
    
## paste img
### 4 run 1, 2 first and then run 4
    sudo dd if=/home/z/sdcard.img of=/dev/sdb
    
