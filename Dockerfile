FROM thewtex/cross-compiler-windows-x64
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install libc6-dev m4 libtool \
    zlib1g-dev bsdmainutils libprotobuf-dev \
    protobuf-compiler libqrencode-dev libdb++-dev software-properties-common libcurl4-openssl-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget http://download.oracle.com/berkeley-db/db-6.2.23.tar.gz
RUN tar -zxvf db-6.2.23.tar.gz

WORKDIR /root/db-6.2.23/build_unix

RUN ../dist/configure --prefix=/root/bbd --enable-cxx --disable-shared --with-pic
RUN make && make install

