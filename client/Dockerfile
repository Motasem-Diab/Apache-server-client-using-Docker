FROM centos:7

RUN yum install httpd createrepo -y
RUN rm /etc/yum.repos.d/*.repo

COPY clientrepo.repo /etc/yum.repos.d/
#RUN createrepo http://192.168.90.204:80/serverrepo.repo
COPY ./validate.sh /validate.sh

EXPOSE 80

CMD [ "/bin/bash" ]
