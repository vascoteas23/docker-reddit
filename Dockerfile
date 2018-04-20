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

RUN chmod +x install-reddit.sh



