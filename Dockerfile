FROM ubuntu:xenial
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN dpkg --add-architecture i386 && wget -nc https://dl.winehq.org/wine-builds/Release.key && \
  apt-key add Release.key && apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/ && apt update && \
  apt-get update && apt-get -y install \
  autoconf \
  automake \
  autogen \
  bash \
  bsdmainutils \
  build-essential \
  curl \
  file \
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
  wine1.8 \
  winetrics \
  zlib1g-dev \
  && apt-get clean \
  && mkdir /home/VerusCoin/ \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install toolchain
RUN curl https://sh.rustup.rs -sSf | \
    sh -s -- --default-toolchain stable -y

ENV PATH=/root/.cargo/bin:$PATH
RUN rustup update \
    && rustup target add x86_64-unknown-linux-musl \
    && rustup target add x86_64-pc-windows-gnu

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
WORKDIR /home/VerusCoin  
VOLUME ["/home/VerusCoin"]
CMD /bin/sh


