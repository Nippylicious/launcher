#!/bin/bash
#
# Mareks Updateskript
# pihole-update
# ===========================

pihole -up
whiptail --msgbox "PiHole wurde aktualisiert" 8 30
./launcher.sh