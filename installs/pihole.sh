#!/bin/bash
#
# Mareks Updateskript
# pihole install
# ===========================

apt update
apt install curl -y
curl -sSL https://install.pi-hole.net | bash
read -p "Drücke [ENTER] um fortzufahren..."
./launcher.sh