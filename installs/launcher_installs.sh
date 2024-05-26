#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# Launcher Installs Menu
VERSION="26.05.2024"
# =====================#
# ┓                 ┓  #
# ┣┓┏┓┏┏┓┏┓┏┳┓┏┓┏┓┏┓┃┏ #
# ┗┛┗┻┗┗┛┛┗┛┗┗┗┻┛ ┗ ┛┗ #
# =====================#

menu=$( \
    whiptail \
        --backtitle "Version $VERSION" \
        --title "Mareks Installs Launcher" \
        --cancel-button "Beenden" \
        --menu " \n Bitte eine Funktion waehlen" 18 64 8 \
            "01" "  PiHole      | Installieren" \
            "02" "  ioBroker    | Installieren" \
            "03" "  Docker      | Installieren" \
            "04" "  Portainer   | Installieren" \
        3>&1 1>&2 2>&3)

#14 60 6
#Höhe Breite Anzahl Menuepunkte(+Überschrift) also immer +1!

#Auswertung
case $menu in

    # PiHole Install
	01)
		clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/installs/pihole.sh)"
	;;

    # ioBroker Install
	02)
	    clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/installs/iobroker.sh)"
	;;

    # Docker Install
	03)
	    clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/installs/docker.sh)"
	;;

    # Portainer Install
	04)
        clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/installs/portainer.sh)"
	;;

	255)
		echo "Tastenverwendung: ESC-Taste"
	;;

	*)
		# Das kann nicht passieren, ich habe es einfach reingelegt, um regelmaeßig zu sein ...
		#echo "ungueltiger Fehlercode."
		clear
	;;
esac
