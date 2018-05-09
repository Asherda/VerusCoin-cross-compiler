FROM ubuntu:xenial
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN apt-get update && apt-get -y install \
  automake \
  autogen \
  bash \
  bsdmainutils \
  build-essential \
  curl \
  file \
  git \
  libc6-dev \
  libcurl4-openssl-dev \
  libdb++-dev \
  libqrencode-dev \
  libprotobuf-dev \
  libssl-dev \
  libtool \
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
  vim \
  wget \
  zlib1g-dev \
  && curl https://sh.rustup.rs > sh.rustup.rs \
    && sh sh.rustup.rs -y \
    && . $HOME/.cargo/env \
    && echo 'source $HOME/.cargo/env' >> $HOME/.bashrc \
    && rustup update \
    && rustup target add x86_64-unknown-linux-musl \
    && rustup target add x86_64-pc-windows-gnu\
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Build and install CMake from source.
WORKDIR /usr/src
RUN git clone -b v3.4.3 --single-branch git://cmake.org/cmake.git CMake && \
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



