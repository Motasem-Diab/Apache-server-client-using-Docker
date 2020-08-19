#!/bin/sh

answer=$(yum list installed  | grep httpd | awk '{ print $1 }')

if [[ "$answer" == *httpd\.x86* ]]
then
        echo "*******************               *******************"
        echo "               httpd installed                "
        echo "*******************               *******************"
else
        echo "*******************               *******************"
        echo "           httpd is not installed                    "
        echo "*******************               *******************"
fi
