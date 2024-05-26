#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# ioBroker Installer
#
# =====================#
# ┓                 ┓  #
# ┣┓┏┓┏┏┓┏┓┏┳┓┏┓┏┓┏┓┃┏ #
# ┗┛┗┻┗┗┛┛┗┛┗┗┗┻┛ ┗ ┛┗ #
# =====================#

apt update
apt install curl -y
curl -sLf https://iobroker.net/install.sh | bash -
read -p "Drücke [ENTER] um fortzufahren..."
./launcher.sh