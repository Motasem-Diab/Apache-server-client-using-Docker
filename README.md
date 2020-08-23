# Task3
This task aimed to: 
* make a docker image of server that runs on port 8899 having a repository with httpd rpm,
* make a docker image of client that install an httpd from server image repository,
* make a script for each side (client and server) that build the image and run a container,
* make a script to validate that the client side has httpd.



to make this works:
- clone my project
- enter to server directory ($ cd /task3/server)
- execute (runSever) script by ($./runServer): this will stop the previous server container if exists then build and run the server image.
- execute (runClient) script by ($./runClient): this will build the client image.
- execute the command ($ docker run -it client-image).
- after that you will be inside the client container, you can run($ yum install httpd) to install it or you can remove it by ($yum remove httpd).
- you can use the script (validate) to check if (httpd) is installed on the client or not by execute the script by (./validate).


Note: run the command ($ sysctln net.ipv4.ip_forward) if it's equal 0 then you have to do the following:
- Add "net.ipv4.ip_forward=1" in /etc/sysctl.conf
- ($ systemctl restart network)
- now net.ipv4.ip_forward must be equal 1
