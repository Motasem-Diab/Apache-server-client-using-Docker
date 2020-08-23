FROM centos:7

RUN yum install httpd createrepo -y
RUN mkdir /serverRepo/

RUN repotrack -p /serverRepo/ httpd

RUN rm /etc/yum.repos.d/*.repo
COPY serverrepo.repo /etc/yum.repos.d/
RUN createrepo /serverRepo/

COPY httpd.conf /etc/httpd/conf/httpd.conf
EXPOSE 8899

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

