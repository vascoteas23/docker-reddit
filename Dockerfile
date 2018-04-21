FROM ubuntu:14.04
COPY Dockerfile /
COPY install-reddit.sh /

#install python 2.7.6


RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
rm -rf /var/lib/apt/lists/*

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
  
RUN chmod +x ./install-reddit.sh

#add a new user
#RUN useradd -ms /bin/bash newuser
#USER newuser
#WORKDIR /home/newuser

RUN apt-get install software-properties-common

RUN  ./install-reddit.sh



