#!/bin/bash
#下载核心程序
mkdir ./v2ray
cd v2ray
rm -f v2ray
wget https://github.com/lhx11187/goorm-v2ray/raw/master/v2ray
#设置运行权限
chmod +x v2ray
rm -f v2ctl
wget https://github.com/lhx11187/goorm-v2ray/raw/master/v2ctl
chmod +x v2ctl
rm -f config.json
wget https://github.com/lhx11187/goorm-v2ray/raw/master/config.json
# 开始后台运行
nohup ./v2ray -config=./config.json >out.txt 2>&1 &
