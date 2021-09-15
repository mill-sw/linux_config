### install docker container
    sudo docker build -t <hub id>/<image name>:<tag name> .

### run image
    sudo docker run <hub id>/<image name>:<tag name>

### docker push
    sudo docker push <hub id>/<image name>:<tag name>
    
### check image list
    sudo docker image list
    
### install mongoDB
    sudo docker pull mongo:latest
    
### delete one image
    sudo docker rmi -f <hub id>/<image name>:<tag name>
### delete all images
    sudo docker system prune -a
