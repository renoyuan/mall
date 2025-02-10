#!/bin/bash

# 检查是否已安装插件，如果没有则安装
if [ ! -f "/usr/share/elasticsearch/plugins/analysis-ik/plugin-descriptor.properties" ]; then
  echo "Installing analysis-ik plugin..."
  elasticsearch-plugin install  --batch file:///usr/share/elasticsearch/plugins/analysis-ik
fi

# 执行原来的 entrypoint 脚本
exec /usr/local/bin/docker-entrypoint.sh "$@"