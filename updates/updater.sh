#!/bin/bash
#
# Mareks Updateskript
# update
VERSION="31.08.2023"
# ===========================

rm launcher.sh
wget https://github.com/Nippylicious/launcher/raw/main/launcher.sh
chmod +x launcher.sh
whiptail --msgbox "der Launcher wurde auf Version $VERSION aktualisiert" 8 58
./launcher.sh
