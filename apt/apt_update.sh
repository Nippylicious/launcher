#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# APT Update
#
# =====================#
# ┓                 ┓  #
# ┣┓┏┓┏┏┓┏┓┏┳┓┏┓┏┓┏┓┃┏ #
# ┗┛┗┻┗┗┛┛┗┛┗┗┗┻┛ ┗ ┛┗ #
# =====================#

apt update
whiptail --msgbox "die Paketquellen wurden aktualisiert" 8 40
./launcher.sh