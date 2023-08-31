#!/bin/bash
#
# Mareks Updateskript
# update
VERSION="31.08.2023"
# ===========================

rm launcher.sh
wget http://192.168.191.209:3000/marek/launcher2/raw/branch/main/launcher.sh
chmod +x launcher.sh
whiptail --msgbox "der Launcher wurde auf Version $VERSION aktualisiert" 8 58
./launcher.sh