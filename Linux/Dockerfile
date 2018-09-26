FROM ubuntu:bionic
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install \
    build-essential \
    dos2unix \
    ccache pkg-config \
    libc6-dev \
    m4 \
    g++-multilib \
    autoconf \
    libtool \
    ncurses-dev \
    unzip \
    python \
    zlib1g-dev \
    wget \
    bsdmainutils \
    automake \
    libssl-dev \
    libprotobuf-dev \
    fakeroot \
    lintian \
    protobuf-compiler \
    libqrencode-dev \
    libdb++-dev \
    software-properties-common \
    libcurl4-openssl-dev \
    libgconf-2-4 && \
    apt-get -y autoclean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


