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

## delete
### delete one image
    docker rmi -f {ID or REPOSITORY:TAG}
### remove all containers
    docker container prune
### remove all images
    docker system prune -a
    
## dockerhub
### dockerhub login
    docker login
### push to dockerhub
    docker push {ID or REPOSITORY:TAG}
