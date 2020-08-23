#!/bin/sh


IDs=`docker ps | grep "server-image" | awk '{ print $1 }'`  #this will return running "server-image" containers IDs in order to stop it
if [ $IDs ]
then
	docker stop $IDs						#stop all running images
	echo "*************** stopping the previous image ************"
fi

IDs=`docker ps -a | grep "server-image" | awk '{ print $1 }'`	#this will return all stoped "server-image" containers IDs in order to remove it
if [ $IDs ]
then
        docker rm $IDs
        echo "*************** removing the previous images ************"
fi


docker build . -t server-image		#this command will build the server-image

docker run -it server-image 		#this command will run the server-image
