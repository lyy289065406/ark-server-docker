#!/bin/bash
# 停止 docker 服务
#------------------------------------------------
# 命令执行示例：
# bin/stop.sh
#------------------------------------------------

docker-compose down
echo "The ARK and Docker is stopped ."