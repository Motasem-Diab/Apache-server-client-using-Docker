#!/bin/sh

answer=$(yum list installed  | grep httpd | awk '{ print $1 }')		#this will grep lines contains "httpd" then get the name

if [[ "$answer" == *httpd\.x86* ]]					#if the answer has httpd.x86 
then
        echo "*******************               *******************"
        echo "               httpd installed                "
        echo "*******************               *******************"
else
        echo "*******************               *******************"
        echo "           httpd is not installed                    "
        echo "*******************               *******************"
fi
