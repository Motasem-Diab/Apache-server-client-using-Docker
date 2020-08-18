FROM centos:7


RUN yum install httpd createrepo -y
RUN mkdir /serverRepo
#RUN yum install yum-util
#RUN yum install yum-plugin-downloadonly
#RUN yum install --downloadonly --downloaddir=/serverRepo httpd 
#RUN yumdownloader --resolve --destdir=serverRepo httpd

RUN repotrack -p /serverRepo/ httpd

RUN rm /etc/yum.repos.d/*.repo
COPY serverrepo.repo /etc/yum.repos.d/
RUN createrepo /serverRepo

EXPOSE 80

CMD [ "/bin/bash" ]
