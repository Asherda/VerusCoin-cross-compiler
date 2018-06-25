FROM ubuntu:bionic
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN apt update && \
    apt -y upgrade && \
    apt -y install build-essential ccache pkg-config libc6-dev m4 g++-multilib autoconf libtool ncurses-dev \
    unzip python zlib1g-dev wget bsdmainutils automake libssl-dev libprotobuf-dev \
    protobuf-compiler libqrencode-dev libdb++-dev software-properties-common libcurl4-openssl-dev curl libgconf-2-4 libcurl4 && \
    apt-get clean &&  
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /home/
VOLUME ["/home/"]
VOLUME ["/root/.ccache"]
VOLUME ["/root/.zcash-params"]
CMD /bin/sh


