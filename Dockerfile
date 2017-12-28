FROM centos:6

RUN yum update -y && yum clean all

RUN yum install -y http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
COPY epel.repo /etc/yum.repos.d/

RUN yum install -y http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
COPY remi.repo /etc/yum.repos.d/

RUN yum install -y httpd php54 php54-mbstring  php54-mysql  --enablerepo=remi

