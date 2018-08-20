FROM ubuntu:xenial
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN apt update && \
    apt -y upgrade && \
    apt -y install build-essential dos2unix ccache pkg-config libc6-dev m4 g++-multilib autoconf libtool ncurses-dev \
    unzip python zlib1g-dev wget bsdmainutils automake libssl-dev libprotobuf-dev fakeroot lintian pigz\
    protobuf-compiler libqrencode-dev libdb++-dev software-properties-common libcurl4-openssl-dev curl libgconf-2-4 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /home/
VOLUME ["/home/"]
CMD /bin/bash


