## general
### build container
    sudo docker build -t <hub id>/<image name>:<tag name> .
### run image
    sudo docker run <hub id>/<image name>:<tag name>
### check image list
    sudo docker image list
### pull mongoDB from dockerhub
    sudo docker pull mongo:latest
    
## dockerhub
### dockerhub login
    sudo docker login
### push to dockerhub
    sudo docker push <hub id>/<image name>:<tag name>

## delete
### delete one image
    sudo docker rmi -f {ID or REPOSITORY:TAG}
### delete all images
    sudo docker system prune -a
