#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# Updater
VERSION="26.05.2024"
# =====================#
# ┓                 ┓  #
# ┣┓┏┓┏┏┓┏┓┏┳┓┏┓┏┓┏┓┃┏ #
# ┗┛┗┻┗┗┛┛┗┛┗┗┗┻┛ ┗ ┛┗ #
# =====================#

rm launcher.sh
wget https://github.com/Nippylicious/launcher/raw/main/launcher.sh
chmod +x launcher.sh
whiptail --msgbox "der Launcher wurde auf Version $VERSION aktualisiert" 8 58
./launcher.sh
