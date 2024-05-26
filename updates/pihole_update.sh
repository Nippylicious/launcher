#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# PiHole Update
#
# =====================#
# ┓                 ┓  #
# ┣┓┏┓┏┏┓┏┓┏┳┓┏┓┏┓┏┓┃┏ #
# ┗┛┗┻┗┗┛┛┗┛┗┗┗┻┛ ┗ ┛┗ #
# =====================#

pihole -up
whiptail --msgbox "PiHole wurde aktualisiert" 8 30
./launcher.sh