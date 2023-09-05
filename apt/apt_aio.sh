#!/bin/bash
#
# Mareks Updateskript
# apt-all-in-one
# ===========================

apt update
apt upgrade -y
whiptail --msgbox "das System wurde aktualisiert" 8 33
./launcher.sh
