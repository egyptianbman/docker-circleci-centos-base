FROM centos:latest

MAINTAINER Beshoy Girgis <shoy@1ds.us>

RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install curl docker git

RUN curl -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
