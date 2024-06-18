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
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate

#echo 'CONFIG_EXTRA_FIRMWARE="i915/skl_dmc_ver1_27.bin"' >> target/linux/x86/config-5.4
#echo 'CONFIG_EXTRA_FIRMWARE_DIR="/lib/firmware"' >> target/linux/x86/config-5.4
#echo -e 'CONFIG_DEVEL=y\nCONFIG_CCACHE=y' >> .config;

#Patch luci-app-mwan3
sed -i '15 a <script type="text/javascript" src="<%=resource%>/cbi.js"></script>' feeds/luci/applications/luci-app-mwan3/luasrc/view/mwan/status_detail.htm
sed -i '28 a <script type="text/javascript" src="<%=resource%>/cbi.js"></script>' feeds/luci/applications/luci-app-mwan3/luasrc/view/mwan/status_diagnostics.htm
sed -i '15 a <script type="text/javascript" src="<%=resource%>/cbi.js"></script>' feeds/luci/applications/luci-app-mwan3/luasrc/view/mwan/status_interface.htm
sed -i '15 a <script type="text/javascript" src="<%=resource%>/cbi.js"></script>' feeds/luci/applications/luci-app-mwan3/luasrc/view/mwan/status_troubleshooting.htm

cat feeds/luci/applications/luci-app-mwan3/luasrc/view/mwan/status_detail.htm
cat feeds/luci/applications/luci-app-mwan3/luasrc/view/mwan/status_diagnostics.htm
cat feeds/luci/applications/luci-app-mwan3/luasrc/view/mwan/status_interface.htm
cat feeds/luci/applications/luci-app-mwan3/luasrc/view/mwan/status_troubleshooting.htm
