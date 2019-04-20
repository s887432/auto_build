#!/bin/bash
result_p="output"
at91bootstrap_resF="boot.bin"
u_boot_resF="u-boot.bin"
u_boot_env_resF="uboot-env.bin"
rfs_resF="rootfs.tar"
kernel_resF="zImage"
dtb_resF="at91-sama5d27_som1_ek.dtb"
itb_resF="sama5d27_som1_ek.itb"
mnt1="mnt1"
mnt2="mnt2"

let sd_card_size_MB=500
let sd_card_size=sd_card_size_MB*1024*1024
let first_partitionMB=8
let first_partition=first_partitionMB*1024*1024
let first_partition_sectors=$first_partition/512
let first_offset=2048*512
let second_offset=first_offset+first_partition
let first_offset_sectors=first_offset/512
let second_offset_sectors=second_offset/512

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
build_sdcard=1

echo ""
echo "START $0 @`date +%y%m%d-%T`......"
echo ""

git clone git://github.com/s887432/build_scripts.git
chmod a+x ./build_scripts/*

source ./build_scripts/build_at91.sh
source ./build_scripts/build_uboot.sh
source ./build_scripts/build_kernel.sh
source ./build_scripts/build_ubootenv.sh
source ./build_scripts/build_rootfs.sh
source ./build_scripts/build_app.sh
source ./build_scripts/build_sdcard.sh

