#!/bin/bash
#
# Mareks Updateskript
# iobroker-jsController-update
# ===========================

echo "es wird nach aktuelleren Paketquellen gesucht... Bitte warten"
apt update

clear

echo "ioBroker Backup wird jetzt erstellt... Bitte warten"
iobroker stop
cd /opt/iobroker
iobroker backup
whiptail --title "Info" --msgbox "ioBroker Backup wurde erstellt." 8 78

echo "ioBroker JS Controller wird geupdatet"
iobroker update
iobroker upgrade self
iobroker fix

cd /root
iobroker start

whiptail --title "Info" --msgbox "ioBroker JS Controller wurde aktualisiert" 16 40
./launcher.sh
