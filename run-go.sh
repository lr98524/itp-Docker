#MSYS_NO_PATHCONV=1 

#pull the base image
docker pull golang:tip-alpine3.21

#run the sh in the container 
MSYS_NO_PATHCONV=1 docker run --rm -it --name go-c --workdir /go/src golang:tip-alpine3.21