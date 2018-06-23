FROM ubuntu:bionic
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN apt update && apt -y install \
  autoconf \
  automake \
  autogen \
  bash \
  bsdmainutils \
  build-essential \
  curl \
  g++-multilib \
  git \
  libc6-dev \
  libcap-dev \
  libcurl4-openssl-dev \
  libdb++-dev \
  libqrencode-dev \
  libprotobuf-dev \
  libssl-dev \
  libtool \
  libz-dev \
  libbz2-dev \
  m4 \
  make \
  mingw-w64\
  ncurses-dev \
  pkg-config \
  protobuf-compiler \
  python \
  python-zmq \
  software-properties-common \
  tar \
  texinfo \
  unzip \
  vim \
  wget \
  zip \
  zlib1g-dev \
  && apt clean \
  && mkdir /home/VerusCoin/ \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install toolchain
RUN curl https://sh.rustup.rs -sSf | \
    sh -s -- --default-toolchain stable -y

ENV PATH=/root/.cargo/bin:$PATH
RUN rustup update \
    && rustup target add x86_64-unknown-linux-musl \
    && rustup target add x86_64-pc-windows-gnu

WORKDIR /home/
VOLUME ["/home/"]
CMD /bin/sh


