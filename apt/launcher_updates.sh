#!/bin/bash

# Mareks Launcher Updates
# VERSION="31.08.2023"
# ===========================

menu=$( \
    whiptail \
        --backtitle "Version $VERSION" \
        --title "Mareks Updates Launcher" \
        --cancel-button "Beenden" \
        --menu " \n Bitte eine Funktion waehlen" 18 64 8 \
            "01" "  SYSTEM      | Paketquellen aktualisieren" \
            "02" "  SYSTEM      | Verfuegbare Updates anzeigen" \
            "03" "  SYSTEM      | Systemupgrade durchfuehren" \
            "04" "  PiHole      | aktualisieren" \
            "05" "  ioBroker    | NodeJS aktualisieren"\
            "06" "  Portainer   | aktualisieren"\
            "07" "  Launcher    | aktualisieren"\
        3>&1 1>&2 2>&3)

#14 60 6
#Höhe Breite Anzahl Menuepunkte(+Überschrift) also immer +1!

#Auswertung
case $menu in

    # apt update
	01)
		clear
        bash -c "$(wget -qLO - http://192.168.191.209:3000/marek/launcher2/raw/branch/main/apt/apt_update.sh)"
	;;

    # apt list --upgradeable
	02)
	    clear
        bash -c "$(wget -qLO - http://192.168.191.209:3000/marek/launcher2/raw/branch/main/apt/apt_list.sh)"
	;;

    # apt upgrade
	03)
	    clear
        bash -c "$(wget -qLO - http://192.168.191.209:3000/marek/launcher2/raw/branch/main/apt/apt_upgrade.sh)"
	;;

    # pihole -up
	04)
        clear
        bash -c "$(wget -qLO - http://192.168.191.209:3000/marek/launcher2/raw/branch/main/updates/pihole_update.sh)"
	;;

    # iobroker update
    05)
        clear
        bash -c "$(wget -qLO - http://192.168.191.209:3000/marek/launcher2/raw/branch/main/updates/iobroker_update.sh)"
    ;;

    # Portainer updaten
    06)
        clear
        bash -c "$(wget -qLO - http://192.168.191.209:3000/marek/launcher2/raw/branch/main/updates/portainer_update.sh)"
    ;;

    # Skript aktualisieren
    07)
        clear
        bash -c "$(wget -qLO - http://192.168.191.209:3000/marek/launcher2/raw/branch/main/updates/updater.sh)"
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