## general
### docker elevate sudo
    sudo usermod -aG docker $USER
### build container
    docker build -t {ID or REPOSITORY:TAG} .
### run image
    docker run {ID or REPOSITORY:TAG}
### check image list
    docker image list
### pull mongoDB from dockerhub
    docker pull mongo:latest
    
## run
### mount HOME to home
    docker run -it -v $HOME/mount:/home {IMAGE ID}

## delete
### delete one image
    docker rmi -f {ID or REPOSITORY:TAG}
### remove all unused containers
    docker rm $(docker ps --filter status=exited -q)
### remove all containers
    docker container prune
### remove all images
    docker system prune -a
    
## dockerhub
### dockerhub login
    docker login
### push to dockerhub
    docker push {ID or REPOSITORY:TAG}
## GUI - portainer
    sudo docker volume create portainer_data
    sudo docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
    
