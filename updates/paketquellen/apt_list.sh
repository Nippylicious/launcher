#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# APT Updates Auflisten
#
# =====================#
# ┓                 ┓  #
# ┣┓┏┓┏┏┓┏┓┏┳┓┏┓┏┓┏┓┃┏ #
# ┗┛┗┻┗┗┛┛┗┛┗┗┗┻┛ ┗ ┛┗ #
# =====================#

apt list --upgradeable > updates.log 2> /dev/null
whiptail --title "Verfuegbare Updates" --textbox --scrolltext updates.log 38 100 #Breite Höhe
rm updates.log
./launcher.sh