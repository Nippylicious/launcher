#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# Docker Installer
#
# =====================#
# ┓                 ┓  #
# ┣┓┏┓┏┏┓┏┓┏┳┓┏┓┏┓┏┓┃┏ #
# ┗┛┗┻┗┗┛┛┗┛┗┗┗┻┛ ┗ ┛┗ #
# =====================#

apt update
apt install curl
curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x get-docker.sh
./get-docker.sh
read -p "Drücke [ENTER] um fortzufahren..."
./launcher.sh