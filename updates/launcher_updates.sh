#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# Launcher Updates
VERSION="26.05.2024"
# =====================#
# ┓                 ┓  #
# ┣┓┏┓┏┏┓┏┓┏┳┓┏┓┏┓┏┓┃┏ #
# ┗┛┗┻┗┗┛┛┗┛┗┗┗┻┛ ┗ ┛┗ #
# =====================#

menu=$( \
    whiptail \
        --backtitle "Version $VERSION" \
        --title "Mareks Updates Launcher" \
        --cancel-button "Beenden" \
        --menu " \n Bitte eine Funktion waehlen" 20 64 9 \
            "01" "  SYSTEM      | ALL-IN-ONE System Updater" \
	        "02" "  SYSTEM      | Paketquellen aktualisieren" \
            "03" "  SYSTEM      | Verfuegbare Updates anzeigen" \
            "04" "  SYSTEM      | Systemupgrade durchfuehren" \
            "05" "  PiHole      | aktualisieren" \
            "06" "  ioBroker    | NodeJS aktualisieren"\
	        "07" "  ioBroker    | JS-Controller aktualisieren"\
            "08" "  Portainer   | aktualisieren"\
            "09" "  Launcher    | aktualisieren"\
        3>&1 1>&2 2>&3)

#14 60 6
#Höhe Breite Anzahl Menuepunkte(+Überschrift) also immer +1!

#Auswertung
case $menu in

    # Paket all-in-one updater
    01)
        clear
	    # 26.05.2024 |bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/apt/apt_aio.sh)"
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/updates/paketquellen/paket_aio.sh)" 
 	;;

    # Paket Update
	02)
	    clear
        # 26.05.2024 | bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/apt/apt_update.sh)"
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/updates/paketquellen/paket_update.sh)"
	;;

    # Paket list --upgradeable
	03)
	    clear
        # 26.05.2024 | bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/apt/apt_list.sh)"
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/updates/paketquellen/paket_list_upgradeable.sh)"
	;;

    # Paket Upgrade
	04)
	    clear
        # 26.05.2024 |bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/apt/apt_upgrade.sh)"
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/updates/paketquellen/paket_upgrade.sh)"
	;;

    # pihole -up
	05)
        clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/updates/programme/pihole_update.sh)"
	;;

    # iobroker NodeJS update
    06)
        clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/updates/iobroker_NodeJS_update.sh)"
    ;;

    # iobroker JS Controller update
    07)
     	clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/updates/iobroker_jsController_update.sh)"
    ;;

    # Portainer updaten
    08)
        clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/updates/programme/portainer_update.sh)"
    ;;

    # Skript aktualisieren
    09)
        clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/updates/updater.sh)"
    ;;

	255)
	echo "Tastenverwendung: ESC-Taste"
        ./launcher.sh
	;;

	*)
		# Das kann nicht passieren, ich habe es einfach reingelegt, um regelmaeßig zu sein ...
		#echo "ungueltiger Fehlercode."
		clear
	;;
esac
