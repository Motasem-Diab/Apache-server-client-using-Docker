#!/bin/sh


IDs=`docker ps | grep "server-image" | awk '{ print $1 }'`
if [ $IDs ]
then
	docker stop $IDs
	echo "*************** stopping the previous image ************"
fi

IDs=`docker ps -a | grep "server-image" | awk '{ print $1 }'`
if [ $IDs ]
then
        docker rm $IDs
        echo "*************** removing the previous images ************"
fi


docker build . -t server-image

docker run -it -p 8899:80 server-image 
