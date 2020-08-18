#!/bin/sh

docker build . -t server-image
docker run -it server-image
