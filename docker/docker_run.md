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
    --volume $HOME:/host \
    --name=tf2.1.0 \
    tensorflow/tensorflow:2.1.0-gpu-py3

# dependencies
    apt install git zsh gedit
