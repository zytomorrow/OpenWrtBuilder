#!/usr/bin/env bash

trap 'rm -rf "$TMPDIR"' EXIT
TMPDIR=$(mktemp -d) || exit 1

# 使用kwrt-packages
echo "src-git openwrt_kiddin9 https://github.com/kiddin9/kwrt-packages.git" >> feeds.conf.default