#!/bin/sh

#return running "server-image" containers IDs in order to stop it
IDs=`docker ps | grep "server-image" | awk '{ print $1 }'`  
if [ $IDs ]
then
	docker stop $IDs	#stop all running images
	echo "*************** stopping the previous image ************"
fi

#return all stoped "server-image" containers IDs in order to remove it
IDs=`docker ps -a | grep "server-image" | awk '{ print $1 }'`	
if [ $IDs ]
then
        docker rm $IDs
        echo "*************** removing the previous images ************"
fi

#build the server-image
docker build . -t server-image		

#run a container of the server-image
docker run -it server-image 		
