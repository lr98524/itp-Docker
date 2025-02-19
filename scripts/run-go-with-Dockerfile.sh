docker build -f ./docker/Dockerfile  -t golang:custom .
 docker run --rm --name go-c -it golang:custom

 #Optional: remove the image
 #docker rmi golang:custom