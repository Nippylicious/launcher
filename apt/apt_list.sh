#!/bin/bash
#
# Mareks Updateskript
# apt-list
# ===========================

apt list --upgradeable > updates.log 2> /dev/null
whiptail --title "Verfuegbare Updates" --textbox --scrolltext updates.log 38 100 #Breite Höhe
rm updates.log
./launcher.sh