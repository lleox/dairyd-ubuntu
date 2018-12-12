FROM ubuntu:trusty

LABEL maintainer="devops@yungas.co"

ENV REFRESHED_AT 2018-12-12

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends apt-utils ca-certificates curl debconf-utils nano wget && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/ubuntu
ENV HOME /opt/ubuntu
WORKDIR /opt/ubuntu
VOLUME ["/etc", "/var/log", "/home", "/root"]
