#!/bin/sh

docker build . -t client-image		#build the image and tag it as "client-image"
docker run -it client-image		#run the built image "client-image"

