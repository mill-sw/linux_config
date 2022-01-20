## copy img
### 1 check name of the device
    sudo fdisk -l   #sudo lsblk -l
    
### 2 unmount device
    sudo unmount /dev/sd{name}
    
### 3 create image
    sudo dd if=/dev/sd{name} of=~/sdcard.img
    
## paste img
### 4 run 1, 2 first and then run 4
    sudo dd if=~/sdcard.img of-/dev/sd{name}
    
