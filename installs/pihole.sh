#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# piHole Install
#
# =====================#
# ┓                 ┓  #
# ┣┓┏┓┏┏┓┏┓┏┳┓┏┓┏┓┏┓┃┏ #
# ┗┛┗┻┗┗┛┛┗┛┗┗┗┻┛ ┗ ┛┗ #
# =====================#

apt update
apt install curl -y
curl -sSL https://install.pi-hole.net | bash
read -p "Drücke [ENTER] um fortzufahren..."
./launcher.sh