#!/bin/bash
result_p="files"
at91bootstrap_resF="boot.bin"
u_boot_resF="u-boot.bin"
u_boot_env_resF="uboot-env.bin"
rfs_resF="rootfs.tar"
kernel_resF="zImage"
dtb_resF="at91-sama5d27_som1_ek.dtb"
itb_resF="sama5d27_som1_ek.itb"

COLOR_ERR='\e[41m'
COLOR_RST='\e[0m'

sudo rm -rf ${result_p}
mkdir -p ${result_p}
mkdir -p ${result_p}/app

build_bootstrap=1
build_uboot=1
build_kernel=1
build_rootfs=1
build_ubootenv=1
create_cd_card=1
build_app=1

echo ""
echo "START $0 @`date +%y%m%d-%T`......"
echo ""

git clone git://github.com/s887432/build_scripts.git
chmod a+x ./build_scripts/*

#source ./auto_script/build_at91.sh
#source ./auto_script/build_uboot.sh
#source ./auto_script/build_kernel.sh
#source ./auto_script/build_ubootenv.sh
#source ./auto_script/build_rootfs.sh
#source ./auto_script/build_copyapp.sh
