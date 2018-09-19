FROM ubuntu:xenial
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install build-essential dos2unix ccache pkg-config libc6-dev m4 g++-multilib autoconf libtool ncurses-dev \
    unzip python zlib1g-dev wget bsdmainutils automake libssl-dev libprotobuf-dev fakeroot lintian pigz\
    protobuf-compiler libqrencode-dev libdb++-dev software-properties-common libcurl4-openssl-dev curl libgconf-2-4 && \
    apt-get -y autoremove; apt-get -y autoclean; \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


