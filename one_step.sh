#!/bin/bash
# 检查并创建 /usr/local 目录
if [ ! -d "/usr/local/bin" ]; then
    mkdir -p /usr/local/bin
    echo "已创建 /usr/local/bin 目录。"
fi
if [ -f "/usr/local/bin/upstream.sh.backup" ]; then
    rm /usr/local/bin/upstream.sh.backup
fi
if [ -f "/usr/local/bin/upstream.sh" ]; then
    mv /usr/local/bin/upstream.sh /usr/local/bin/upstream.sh.backup
fi
# 下载 upstream.sh 脚本并赋予执行权限
curl -o "/usr/local/bin/upstream.sh" "https://raw.githubusercontent.com/sumuen/adguardhome-upstream/master/upstream.sh"
chmod +x /usr/local/bin/upstream.sh
# 运行 upstream.sh 脚本
/usr/local/bin/upstream.sh
