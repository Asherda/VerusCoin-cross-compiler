FROM ubuntu:xenial
MAINTAINER Matt McCormick "matt.mccormick@kitware.com"

RUN apt-get update && apt-get -y install \
  automake \
  autogen \
  bash \
  build-essential \
  bzip2 \
  ca-certificates \
  curl \
  file \
  git \
  gzip \
  libcurl4-openssl-dev \
  libssl-dev \
  make \
  mingw-w64\
  ncurses-dev \
  pkg-config \
  python \
  rsync \
  sed \
  tar \
  vim \
  wget \
  xz-utils && \
  apt-get -y clean


RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install libc6-dev m4 libtool \
    zlib1g-dev bsdmainutils libprotobuf-dev \
    protobuf-compiler libqrencode-dev libdb++-dev software-properties-common libcurl4-openssl-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl https://sh.rustup.rs > sh.rustup.rs \
    && sh sh.rustup.rs -y \
    && . $HOME/.cargo/env \
    && echo 'source $HOME/.cargo/env' >> $HOME/.bashrc \
    && rustup update \
    && rustup target add x86_64-unknown-linux-musl \
    && rustup target add x86_64-pc-windows-gnu

# Build and install CMake from source.
WORKDIR /usr/src
RUN git clone git://cmake.org/cmake.git CMake && \
  cd CMake && \
  git checkout v3.4.3 && \
  cd .. && mkdir CMake-build && \
  /usr/src/CMake/bootstrap \
    --parallel=$(nproc) \
    --prefix=/usr && \
  make -j$(nproc) && \
  ./bin/cmake -DCMAKE_USE_SYSTEM_CURL:BOOL=ON \
    -DCMAKE_BUILD_TYPE:STRING=Release \
    -DCMAKE_USE_OPENSSL:BOOL=ON . && \
  make install && \
  cd .. && \
  rm -rf CMake*

RUN git clone -b dev --single-branch --recursive https://github.com/Asherda/VerusCoin.git komodo
ENV HOME /komodo
WORKDIR /komodo

RUN ./zcutil/fetch-params.sh


