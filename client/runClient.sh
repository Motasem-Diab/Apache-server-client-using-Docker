#!/bin/sh

#build the image and tag it as "client-image"
docker build . -t client-image	

#run the built image "client-image"
docker run -it client-image		

