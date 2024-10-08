#!/bin/bash
echo "Starting to setup building environmet for Linux4Sam ..."
cur_path = $PWD
sudo apt-get -y install wget git unzip make gcc g++ build-essential subversion sed autoconf automake texi2html texinfo \
coreutils diffstat docbook-utils libsdl1.2-dev libxml-parser-perl libgl1-mesa-dev libglu1-mesa-dev xsltproc \
desktop-file-utils chrpath groff libtool xterm gawk fop  libncurses5-dev  gcc-multilib  g++-multilib device-tree-compiler \
u-boot-tools bison flex mercurial net-tools openssh-server net-tools doxygen graphviz libssl-dev gtk-doc-tools libpkgconf-dev \
cmake librsvg2-dev liblua5.3-dev libcurl4-openssl-dev libxkbcommon-dev xkb-data \
libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libplplot-dev plplot-driver-cairo \
libasound2-dev libsndfile1-dev libcjson-dev

sudo apt-get install -y pkg-config libdrm-dev libinput-dev libcairo-dev libjpeg-dev libmagic-dev gettext

// add for yocto
sudo apt-get install -y gawk wget diffstat unzip texinfo gcc-multilib build-essential chrpath socat \
cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev \
xterm zstd liblz4-tool git-lfs
    
cd /tmp
wget -c https://releases.linaro.org/components/toolchain/binaries/7.3-2018.05/arm-linux-gnueabi\
/gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabi.tar.xz
wget -c https://releases.linaro.org/components/toolchain/binaries/7.3-2018.05/arm-linux-gnueabihf\
/gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabihf.tar.xz

tar xf gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabi.tar.xz
tar xf gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabihf.tar.xz

sudo mv gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabi /opt
sudo mv gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabihf /opt

// add following to ~/.bashrc
echo "export CROSS_COMPILE=arm-linux-gnueabi-" >> ~/.bashrc
echo "ARCH=arm" >> ~/.bashrc
echo "PATH=$PATH:/opt/gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabi/bin/" >> ~/.bashrc
echo "PATH=$PATH:/opt/gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabihf/bin/" >> ~/.bashrc

cd $cur_path

echo "Environment setup is finished."
