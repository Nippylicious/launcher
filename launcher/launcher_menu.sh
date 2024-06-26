#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# Lanuncher Menu
VERSION="26.05.2024"
# =====================#
# ┓                 ┓  #
# ┣┓┏┓┏┏┓┏┓┏┳┓┏┓┏┓┏┓┃┏ #
# ┗┛┗┻┗┗┛┛┗┛┗┗┗┻┛ ┗ ┛┗ #
# =====================#

# Funktion für Dateicheck
function check_file {
    [ -f "$1" ]
    return $?
}

# Abfrage
if check_file ~/.einstellung_paketdienst; then
    # Wenn vorhanden, weiter zum Launcher
	echo &> /dev/null
else
    # Wenn nicht vorhanden, dann erstmal zu den Einstellungen
    bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/einstellungen/paketmanager.sh)"
fi


menu=$( \
    whiptail \
        --backtitle "Version $VERSION" \
        --title "Mareks Launcher" \
        --cancel-button "Beenden" \
        --menu " \n Bitte eine Funktion waehlen" 18 64 10 \
            "01" "  UPDATER       | Updates durchfuehren" \
            "02" "  INSTALLER     | Programme Installieren" \
            "03" "  TOOLS         | Systemtools" \
			"04" "  EINSTELLUNGEN | Launcher Einstellungen"\
			"05" "  RESET         | Launcher Reset"\
        3>&1 1>&2 2>&3)

#14 60 6
#Höhe Breite Anzahl Menuepunkte(+Überschrift) also immer +1!

#Auswertung
case $menu in

    # UPDATER
	01)
		clear
        bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/updates/launcher_updates.sh)"
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

	# EINSTELLUNGEN
	04)
		clear
		bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/einstellungen/paketmanager.sh)"
	;;

	# EINSTELLUNGEN LÖSCHEN (VORLÄUFTG)
	05)
		clear
		bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/einstellungen/einstellungen_loeschen.sh)"
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
