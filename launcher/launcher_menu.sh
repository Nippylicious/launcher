#!/bin/bash

# Mareks Launcher
VERSION="31.08.2023"
# ===============

menu=$( \
    whiptail \
        --backtitle "Version $VERSION" \
        --title "Mareks Launcher" \
        --cancel-button "Beenden" \
        --menu " \n Bitte eine Funktion waehlen" 18 64 8 \
            "01" "  UPDATER     | Updates durchfuehren" \
            "02" "  INSTALLER   | Programme Installieren" \
            "03" "  TOOLS       | Systemtools" \
        3>&1 1>&2 2>&3)

#14 60 6
#Höhe Breite Anzahl Menuepunkte(+Überschrift) also immer +1!

#Auswertung
case $menu in

    # UPDATER
	01)
		clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/apt/launcher_updates.sh)"
	;;

    # INSTALLER
	02)
	    clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/installs/launcher_installs.sh)"
	;;

    # TOOLS
	03)
	    clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/tools/launcher_tools.sh)"
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
