## BACKUP OS IMG
    http://comfilewiki.co.kr/en/doku.php?id=cupc:backup_restore:index
### COPY
    sudo sh -c "dd if=/dev/sda status=progress | xz -c > /media/cupc/1708-B3F/cpcv5.img.xz"
### PASTE
    sudo sh -c "xz -d -c /media/cupc/1708-B3F/cpcv5.img.xz | dd of=/dev/sda status=progress"
    
## SD IMG
### SEARCH TARGET
    sudo fdisk -l   #sudo lsblk -l
### UNMOUNT TARGET
    sudo umount /dev/sdb
### COPY
    sudo dd if=/dev/sdb of=/media/z/e9503728-f419-4a14-9fc0-21e2947af50c/FILE/MVPC10.img status=progress conv=noerror    #bs=1M
### PASTE
    sudo dd if=/media/z/e9503728-f419-4a14-9fc0-21e2947af50c/FILE/MVPC10.img of=/dev/sdb status=progress conv=noerror    #bs=1M
    
