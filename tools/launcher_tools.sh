#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# Launcher Tools
#
# =====================#
# ┓                 ┓  #
# ┣┓┏┓┏┏┓┏┓┏┳┓┏┓┏┓┏┓┃┏ #
# ┗┛┗┻┗┗┛┛┗┛┗┗┗┻┛ ┗ ┛┗ #
# =====================#=

menu=$( \
    whiptail \
        --backtitle "Version $VERSION" \
        --title "Mareks Tools Launcher" \
        --cancel-button "Beenden" \
        --menu " \n Bitte eine Funktion waehlen" 18 64 8 \
            "01" "  System Neu Starten (Reboot)" \
        3>&1 1>&2 2>&3)

#14 60 6
#Höhe Breite Anzahl Menuepunkte(+Überschrift) also immer +1!

#Auswertung
case $menu in

    # Reboot
	01)
		clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/tools/reboot.sh)"
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
