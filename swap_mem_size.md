## SWAP to 32G
    sudo swapoff /swapfile
    sudo fallocate -l {MEM_SIZE:32G} /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
