FROM golang:tip-alpine3.21 AS compile-go
#pull the base image
#docker pull golang:tip-alpine3.21
#compiles a go program
#MSYS_NO_PATHCONV=1 docker run --rm --name go-c --workdir /go/src -v $(pwd)/src:/go/src golang:tip-alpine3.21 go build program.go

#run the compiled program by pulling an alpine image
#docker pull alpine:3.21.3
#running the compiled program
#MSYS_NO_PATHCONV=1 docker run --rm --name runner-c -v  $(pwd)/src/program:/bin/program alpine:3.21.3 program

COPY ./src/program.go /src/program.go
#RUN cat /src/program.go
WORKDIR /src
RUN go build -o /bin/program program.go

CMD [ "program" ]

# docker run --rm --name go-c -it lr98524/golang:custom sh
