# Task3
This task aimed to: 
* make a docker image of server that runs on port 8899 having a repository with httpd rpm,
* make a docker image of client that install an httpd from server image repository,
* make a script for each side (client and server) that build the image and run a container,
* make a script to validate that the client side has httpd.






Note: run the command ($ sysctln net.ipv4.ip_forward) if it's equal 0 then you have to do the following:
- Add "net.ipv4.ip_forward=1" in /etc/sysctl.conf
- ($ systemctl restart network)
- now net.ipv4.ip_forward must be equal 1
