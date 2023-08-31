#!/bin/bash
#
# Mareks Updateskript
# apt-upgrade
# ===========================

apt upgrade -y
whiptail --msgbox "das System wurde aktualisiert" 8 33
./launcher.sh