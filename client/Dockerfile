FROM centos:7

RUN yum install createrepo -y
RUN rm /etc/yum.repos.d/*.repo
RUN yum-config-manager --add-repo http://172.17.0.2:8899

COPY ./validate.sh /validate.sh
RUN yum install httpd -y

CMD [ "/bin/bash" ]
