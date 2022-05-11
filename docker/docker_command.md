# GENERAL
### docker elevate sudo
    sudo usermod -aG docker $USER
### link gui host:remote
    distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
    curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
    curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
    sudo apt-get update && sudo apt-get install -y nvidia-container-toolkit
    sudo service docker restart
### build container
    docker build {option} {IMAGE_ID / REPOSITORY:TAG} .  
### GUI - portainer
    docker volume create portainer_data
    docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
    
# OPTIONS
- -it : iterative terminal, exit container without stopping
- -v : insert host filesystem to remote
- --gpus all : use gpu
- /bin/bash : place to start to container

# INSPECT
### inspect /var/lib/docker/containers/{CONTAINER_ID}/config.v2.json
    docker inspect {CONTAINER_ID}
    
# RUN
### start prev container
    docker start -i {IMAGE_ID/IMAGE_NAME:TAG}
### mount HOST to REMOTE
    docker run -it -v $HOME:/host_home {IMAGE_ID}
### run image
    docker run {IMAGE_ID / REPOSITORY:TAG}
    
# SAVE
### save container state
    docker commit {option:-p(container to image)} {CONTAINER_ID} {NEW_IMAGE_NAME:TAG}
### export container
    docker export {CONTAINER_ID / CONTAINER_NAME:TAG} > {NEW_FILE_NAME.tar}
### import container
    docker import {FILE_NAME.tar} {NEW_IMAGE_NAME:TAG}
    
# RENAME
### rename container
    docker rename {OLD_CONTAINER_NAME} {NEW_CONTAINER_NAME}
### rename image
    docker tag {OLD_IMAGE_NAME} {NEW_IMAGE_NAME}
    
# REMOVE
### delete one image
    docker rmi -f {IMAGE_ID / IMAGE_NAME:TAG}
### remove all unused containers
    docker rm $(docker ps --filter status=exited -q)
### unsued
    docker {container / image / volume / network} prune {option: -a(), -f(force), --filter(ie:until=24h)}
### all
    docker system prune -a
    
# DISPLAY
### desktop display
    nvidia-docker run -it \
    -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --privileged \
    -h tf3 \
    --name tf3 \
    -v /docker/data:/data \
    {IMAGE NAME:VERSION} bash
    
# DOCKERHUB
### dockerhub login
    docker login
### pull
    docker pull {option} {IMAGE_NAME:TAG}
### push
    docker push {option} {IMAGE_ID / REPOSITORY:TAG}
   
# ERROR
### Error NO_PUBKEY A4B469963BF863CC
    RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
