#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# APT AIO | Update & Upgrade
#
# =====================#
# ┓                 ┓  #
# ┣┓┏┓┏┏┓┏┓┏┳┓┏┓┏┓┏┓┃┏ #
# ┗┛┗┻┗┗┛┛┗┛┗┗┗┻┛ ┗ ┛┗ #
# =====================#

apt update
apt upgrade -y
whiptail --msgbox "das System wurde aktualisiert" 8 33
./launcher.sh
