### install docker container
    sudo docker build .
### check image list
    sudo docker image list
### install mongoDB
    sudo docker pull mongo:latest
### delete one image
    sudo docker rmi -f <image name>
### delete all images
    sudo docker system prune -a
