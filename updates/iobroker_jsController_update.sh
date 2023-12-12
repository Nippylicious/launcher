#!/bin/bash
#
# Mareks Updateskript
# iobroker-jsController-update
# ===========================

echo "es wird nach aktuelleren Paketquellen gesucht... Bitte warten"
apt update

clear

if (whiptail --title "ioBroker Backup" --yesno "Soll ein ioBroker Backup erstellt werden?" 8 78); then
    #TRUE
    echo "ioBroker Backup wird jetzt erstellt... Bitte warten"
    iobroker stop
    
    sleep 10 #Wartezeit damit ioBroker vernünftig stoppen kann

    cd /opt/iobroker
    iobroker backup
    whiptail --title "Info" --msgbox "ioBroker Backup wurde erstellt." 8 78
    
    clear
else
    #FALSE
    clear
fi

clear

# echo "ioBroker JS Controller wird geupdatet"
iobroker update
iobroker upgrade self
iobroker fix

cd /root
iobroker start

whiptail --title "Info" --msgbox "ioBroker JS Controller wurde aktualisiert" 16 40
./launcher.sh
