#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Modify default IP
sed -i 's/192.168.1.1/192.168.120.1/g' package/base-files/files/bin/config_generate
# 修改机器名称
sed -i 's/OpenWrt/CM520-79F/g' package/base-files/files/bin/config_generate
# 修改机器初始密码
sed -i 's/root::0:0:99999:7:::/root::0:0:99999:7:::/g' package/base-files/files/etc/shadow

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git NueXiniPackages https://github.com/NueXini/NueXini_Packages.git' feeds.conf.default
#git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
#git clone https://github.com/kenzok8/small.git package/small
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small-package' feeds.conf.default
#git clone https://github.com/kiddin9/openwrt-packages.git package/kiddin9
#git clone https://github.com/NueXini/NueXini_Packages.git package/NueXini

# Add luci-theme-argon
# rm -rf lede/package/lean/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-theme-argon.git
#rm -rf package/lean/luci-theme-argon/
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
#git clone -b master https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config

