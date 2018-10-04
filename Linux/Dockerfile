FROM debian:jessie
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN apt-get update && \
    apt-get -y install \
    build-essential \
    dos2unix \
    ccache \
    pkg-config \
    libc6-dev \
    m4 \
    autoconf \
    curl \
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
    libcurl4-gnutls-dev \
    libgconf-2-4 && \
    apt-get -y clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


