# start nginx:alpine3.21 with no network for safety
# cp /usr/share/nginx/html to ./ but rename html to dist
# stop the container
# remove the container
docker pull nginx:alpine3.21
docker run --rm -d --name nginx --network none nginx:alpine3.21
docker cp nginx-temp:/usr/share/nginx/html .
mkdir dist
cp -r html/* dist/
docker stop nginx-temp
rm -rf html