## BACKUP OS IMAGE
    http://comfilewiki.co.kr/en/doku.php?id=cupc:backup_restore:index

## copy img
### 1 check name of the device
    sudo fdisk -l   #sudo lsblk -l
    
### 2 unmount device
    sudo umount /dev/sdb
    
### 3 create image
    sudo dd if=/dev/sdb of=/media/z/e9503728-f419-4a14-9fc0-21e2947af50c/FILE/MVPC10.img status=progress conv=noerror    #bs=1M
    
## paste img
### 4 run 1, 2 first and then run 4
    sudo dd if=/media/z/e9503728-f419-4a14-9fc0-21e2947af50c/FILE/MVPC10.img of=/dev/sdb status=progress conv=noerror    #bs=1M
    
