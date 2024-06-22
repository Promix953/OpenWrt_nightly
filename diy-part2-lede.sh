#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

#echo 'CONFIG_EXTRA_FIRMWARE="i915/skl_dmc_ver1_27.bin"' >> target/linux/x86/config-5.4
#echo 'CONFIG_EXTRA_FIRMWARE_DIR="/lib/firmware"' >> target/linux/x86/config-5.4
#echo -e 'CONFIG_DEVEL=y\nCONFIG_CCACHE=y' >> .config;

# Add kernel build user
sed -i '/CONFIG_KERNEL_BUILD_USER/d' .config &&
    echo 'CONFIG_KERNEL_BUILD_USER="Promix953"' >>.config

# Add kernel build domain
sed -i '/CONFIG_KERNEL_BUILD_DOMAIN/d' .config &&
    echo 'CONFIG_KERNEL_BUILD_DOMAIN="GitHub Actions"' >>.config

# 添加 ddns-go
git clone --depth=1 https://github.com/sirpdboy/luci-app-ddns-go package/custom/ddns-go
