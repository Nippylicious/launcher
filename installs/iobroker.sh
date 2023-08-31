#!/bin/bash
#
# Mareks Updateskript
# iobroker install
# ===========================

apt update
apt install curl -y
curl -sLf https://iobroker.net/install.sh | bash -
read -p "Drücke [ENTER] um fortzufahren..."
./launcher.sh