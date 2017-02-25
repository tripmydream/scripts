#!/bin/bash
apt-get install -y gcc-4.8 g++-4.8 g++ libboost1.55-dev libboost-thread1.55-dev \
    libboost-filesystem1.55-dev libboost-system1.55-dev libboost-regex1.55-dev \
    libboost-python1.55-dev libboost-context1.55-dev ragel autoconf unzip \
    git libtool python-dev cmake libssl-dev libcap-dev libevent-dev \
    libgtest-dev libsnappy-dev scons binutils-dev make \
    wget libdouble-conversion-dev libgflags-dev libgoogle-glog-dev \
    libboost1.55-* libiberty-dev pkg-config


cd /opt
git clone https://github.com/google/double-conversion.git
cd double-conversion
make && scons install

cd /opt
git clone https://github.com/facebook/folly.git
cd folly/folly
autoreconf -ivf
./configure
make install

cd /opt
git clone https://github.com/facebook/wangle.git
cd wangle/wangle/
cmake .
make
make install

cd /opt
git clone https://github.com/facebook/mcrouter.git
cd mcrouter/mcrouter
autoreconf --install
./configure
make
make install
