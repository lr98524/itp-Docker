
#to run pb without a custom image
#MSYS_NO_PATHCONV=1 docker run --rm --name pb-c -p 80:95 -v $(pwd)/executables/pocketbase:/bin/pb -it alpine:3.21.3 pb serve --http 0.0.0.0:95

#build the pb image
docker build -f ./docker/pocketbase.Dockerfile -t pb:latest .

docker run --rm --name pb-c -p 80:95 pb:latest
