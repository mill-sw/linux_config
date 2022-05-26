# detectron2
    docker run --gpus all -it \
    --shm-size=8gb --env="DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --name=detectron2 detectron2:v0
    
# tf2.1.0
    docker run --gpus all -it \
    --shm-size=16gb \
    --env="DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume \:/host \
    --name=tf2.1.0 \
    tensorflow/tensorflow:2.1.0-gpu-py3

# dependencies
## cuda
    apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub 
## apt
    apt update && apt upgrade
####
    apt install git zsh nano gedit
#### ohmyzsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
