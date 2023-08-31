#!/bin/bash
#
# Mareks Updateskript
# apt-update
# ===========================

apt update
whiptail --msgbox "die Paketquellen wurden aktualisiert" 8 40
./launcher.sh