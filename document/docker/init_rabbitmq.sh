#!/bin/bash

# 等待 RabbitMQ 服务启动
sleep 10

# 添加用户
rabbitmqctl add_user mall password

# 设置用户权限
rabbitmqctl set_permissions -p / mall ".*" ".*" ".*"

rabbitmqctl set_user_tags mall administrator
