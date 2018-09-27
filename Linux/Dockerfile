FROM ubuntu:xenial
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN apt-get update && \
    apt-get -y install \
    build-essential \
    dos2unix \
    ccache \
    curl \
    pkg-config \
    libc6-dev \
    m4 \
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
    add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
    apt-get -qq update && \
    apt-get -y install  \
    g++-8 \
    gcc-8 \
    g++-8multilib && \
    apt-get -y clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


