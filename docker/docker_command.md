# general
### docker elevate sudo
    sudo usermod -aG docker $USER
### pull from dockerhub
    docker pull {option} {IMAGE_NAME:VERSION}
### build container
    docker build {option} {IMAGE_ID or REPOSITORY:TAG} .
    
# run
### mount HOST to REMOTE
    docker run -it -v $HOME:/host_home {IMAGE ID}
### run image
    docker run {IMAGE ID / REPOSITORY:TAG}
    
# save
### save container state
    docker commit {option:-p(container to image)} {CONTAINER_ID} {NEW_IMAGE_NAME:VERSION}
### export container
    docker export {CONTAINER_ID / CONTAINER_NAME:VERSION} > {NEW_FILE_NAME.tar}
    
# rename
### rename container
    docker rename {OLD_CONTAINER_NAME} {NEW_CONTAINER_NAME}
### rename image
    docker tag {OLD_IMAGE_NAME} {NEW_IMAGE_NAME}
    
# delete
### delete one image
    docker rmi -f {IMAGE_ID / IMAGE_NAME:TAG}
### remove all unused containers
    docker rm $(docker ps --filter status=exited -q)
### remove all containers
    docker container prune
### remove all images
    docker system prune -a
    
## display
### desktop display
    nvidia-docker run -it \
    -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --privileged \
    -h tf3 \
    --name tf3 \
    -v /docker/data:/data \
    {IMAGE NAME:VERSION} bash
    
## dockerhub
### dockerhub login
    docker login
### push to dockerhub
    docker push {IMAGE ID or REPOSITORY:TAG}
## GUI - portainer
    sudo docker volume create portainer_data
    sudo docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
    
## ERROR
### Error NO_PUBKEY A4B469963BF863CC
    RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
