#!/bin/bash

STEAM_DIR="/home/steam"
STEAM_GAME_DIR="${STEAM_DIR}/games"
ARK_APP_DIR="${STEAM_GAME_DIR}/ark"



# 保持前台运行，避免 docker 挂起
while true ; do
    sleep 3600
done

exit 0
