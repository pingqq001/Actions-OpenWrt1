#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-nginx/Makefile   # 选择argon为默认主题
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-ssl-nginx/Makefile   # 选择argon为默认主题
rm -rf  feeds/luci/themes/luci-theme-argon   # 删除自带argon


git clone https://github.com/kenzok78/luci-theme-argone.git package/luci-theme-argon   # 替换新版argon

#git clone https://github.com/r1172464137/luci-theme-edge.git package/luci-theme-edge   # 替换新版edge



echo 'src-git nas https://github.com/linkease/nas-packages.git package/luci-theme-gygg
echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git package/luci-theme-aeedee
 
