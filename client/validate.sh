#!/bin/sh

#grep lines contains "httpd" then get the name
answer=$(yum list installed  | grep httpd | awk '{ print $1 }')		

if [[ "$answer" == *httpd\.x86* ]]    #if the answer has httpd.x86 
then
        echo "*******************               *******************"
        echo "               httpd installed                "
        echo "*******************               *******************"
else    # it's not containing "httpd.x86"
        echo "*******************               *******************"
        echo "           httpd is not installed                    "
        echo "*******************               *******************"
fi
