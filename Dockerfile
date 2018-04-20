FROM ubuntu:14.04
COPY Dockerfile /
COPY install-reddit.sh /

#install python 2.7.6
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
rm -rf /var/lib/apt/lists/*

RUN ./install-reddit.sh -y


