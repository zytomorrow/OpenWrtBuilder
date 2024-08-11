#!/usr/bin/env bash

trap 'rm -rf "$TMPDIR"' EXIT
TMPDIR=$(mktemp -d) || exit 1


# 添加luci-app-turboacc
echo "Get luci-app-turboacc"
curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh

# 添加luci-app-openclash
echo "Get luci-app-openclash"
git clone --depth=1 --single-branch https://github.com/vernesong/OpenClash.git $TMPDIR/luci-app-openclash || exit 1
mkdir packages/luci-app-openclash
cp -RT $TMPDIR/luci-app-openclash/luci-app-openclash package/luci-app-openclash

# 添加
echo "Get wrtbwmon"
git clone --depth=1 --single-branch https://github.com/brvphoenix/wrtbwmon.git $TMPDIR/wrtbwmon || exit 1
mkdir packages/wrtbwmon
cp -RT $TMPDIR/wrtbwmon/wrtbwmon package/wrtbwmon

# 添加mycore
echo "Get myautocore"
git clone --depth=1 --single-branch https://github.com/sirpdboy/myautocore.git package/myautocore

# 添加luci-app-advancedplus
echo "Get luci-app-advancedplus"
git clone --depth=1 --single-branch https://github.com/sirpdboy/luci-app-advancedplus.git package/luci-app-advancedplus

# 添加luci-app-adguardhome
echo "luci-app-adguardhome"
git clone --depth=1 --single-branch https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

# 添加luci-app-autoreboot
echo "Get luci-app-autoreboot"
git clone --depth=1 --single-branch https://github.com/macleane/luci-app-autoreboot.git package/luci-app-autoreboot

# 添加luci-app-ddns-go
echo "Get luci-app-ddns-go"
git clone --depth=1 --single-branch https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go

# 添加luci-app-filebrowser
echo "Get luci-app-filebrowser"
git clone --depth=1 --single-branch https://github.com/kenzok78/luci-app-filebrowser.git package/luci-app-filebrowser

# 添加luci-app-netdata
echo "Get luci-app-netdata"
git clone --depth=1 --single-branch https://github.com/sirpdboy/luci-app-netdata.git package/luci-app-netdata

# 添加luci-app-ramfree
echo "Get luci-app-ramfree"
git clone --depth=1 --single-branch https://github.com/QC3284/luci-app-ramfree.git  package/luci-app-ramfree

# 添加luci-app-wizard
echo "Get luci-app-wizard"
git clone  --depth=1 --single-branch https://github.com/sirpdboy/luci-app-wizard.git package/luci-app-wizard

# 添加luci-app-vlmcsd
echo "Get luci-app-vlmcsd"
git clone  --depth=1 --single-branch https://github.com/DokiDuck/luci-app-vlmcsd.git package/luci-app-vlmcsd

# 添加luci-app-wechatpush
echo "Get luci-app-wechatpush"
git clone  --depth=1 --single-branch https://github.com/tty228/luci-app-wechatpush.git package/luci-app-wechatpush
 
# 添加luci-app-wolplus
echo "Get luci-app-wolplus"
git clone  --depth=1 --single-branch https://github.com/animegasan/luci-app-wolplus.git package/luci-app-wolplus

# 添加luci-app-wrtbwmon
echo "Get luci-app-wrtbwmon"
git clone  --depth=1 --single-branch https://github.com/brvphoenix/luci-app-wrtbwmon.git package/luci-app-wrtbwmon

# 添加tailscale
# echo "Get tailscale"
# git clone  --depth=1 --single-branch https://github.com/shavac/openwrt-tailscale-full.git package/luci-app-tailscale
