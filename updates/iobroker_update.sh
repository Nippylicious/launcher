#!/bin/bash
#
# Mareks Updateskript
# iobroker-update
# ===========================

echo "ioBroker Backup wird jetzt erstellt... Bitte warten"
iobroker stop
cd /opt/iobroker
iobroker backup
whiptail --title "Info" --msgbox "ioBroker Backup wurde erstellt." 8 78

clear

nodeversion_alt=$(node -v)
npmversion_alt=$(npm -v)

whiptail --msgbox "Die aktuell installierte Version \n \n Node: $nodeversion_alt" 10 40
VERSION=$(whiptail --inputbox "auf Welche Node Version soll geupdatet werden?" 8 60 --title "Example Dialog" 3>&1 1>&2 2>&3)
exitstatus=$?
if [ $exitstatus = 0 ]; then
    curl -sL https://deb.nodesource.com/setup_"$VERSION".x | sudo -E bash -
else
    echo "abbruch"
fi

apt-get install -y nodejs  
nodeversion_neu=$(node -v)
npmversion_neu=$(npm -v)                

iobroker fix
cd /root
iobroker start

whiptail --title "Info" --msgbox "ioBroker wurde aktualisiert \n \n ------ NODE ------ \n NEU: $nodeversion_neu \n ALT: $nodeversion_alt \n \n ------ NPM ------ \n NEU: $npmversion_neu \n ALT: $npmversion_alt" 16 40
./launcher.sh