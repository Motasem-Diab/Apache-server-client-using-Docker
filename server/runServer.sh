#!/bin/sh

docker build . -t server-image
docker run -it -p 8899:80 server-image 
