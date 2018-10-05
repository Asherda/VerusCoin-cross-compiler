FROM debian:stretch-slim
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
    make \
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
    add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
    apt-get -qq update && \
    apt-get -y install  \
    g++-8 \
    gcc-8 && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 60 && \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 60 && \
    apt-get -y clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


