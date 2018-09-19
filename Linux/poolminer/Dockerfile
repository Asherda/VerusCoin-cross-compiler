FROM ubuntu:xenial
MAINTAINER Asher Dawes <asher.dawes@gmail.com>

RUN apt-get -qq update && apt-get install -q -y \
    cmake \
    libboost-all-dev && \
    apt-get -y autoremove; \
    apt-get -y autoclean; \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

