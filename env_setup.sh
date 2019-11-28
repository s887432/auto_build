#!/bin/bash
echo "Starting to setup building environmet for Linux4Sam ..."
cur_path = $PWD
sudo apt-get -y install wget git-core unzip make gcc g++ build-essential subversion sed autoconf automake texi2html texinfo \
coreutils diffstat python-pysqlite2 docbook-utils libsdl1.2-dev libxml-parser-perl libgl1-mesa-dev libglu1-mesa-dev xsltproc \
desktop-file-utils chrpath groff libtool xterm gawk fop  libncurses5-dev  gcc-multilib  g++-multilib device-tree-compiler \
u-boot-tools bison flex mercurial net-tools openssh-server libssl-dev net-tools doxygen graphviz libssl1.0-dev

sudo apt-get install -y pkg-config libdrm-dev libinput-dev libcairo-dev libjpeg-dev libmagic-dev gettext
    
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
