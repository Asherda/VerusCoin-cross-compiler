FROM debian:jessie
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN apt-get update && \
    apt-get -y install \
    autoconf \
    automake \
    binutils-gold \
    bsdmainutils \
    ccache \
    ca-certificates \
    libc6-dev \
    g++-multilib \
    m4 \
    libcurl4-gnutls-dev \
    libtool \
    make \
    ncurses-dev \
    pkg-config \
    unzip \
    wget \
    zlib1g-dev && \
    apt-get -y clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


