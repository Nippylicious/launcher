#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# APT AIO | Update & Upgrade
#
# =====================#
# ┓                 ┓  #
# ┣┓┏┓┏┏┓┏┓┏┳┓┏┓┏┓┏┓┃┏ #
# ┗┛┗┻┗┗┛┛┗┛┗┗┗┻┛ ┗ ┛┗ #
# =====================#
#
#==========================================================
# FARBKARTE
#
# Reset
FarbeReset='\033[0m'    # Farbe Reset
# Normale Farben
Schwazr='\033[0;30m'    # Schwarz
Rot='\033[0;31m'        # Rot
Gruen='\033[0;32m'      # Gruen
Gelb='\033[0;33m'       # Gelb
Blau='\033[0;34m'       # Blau
Lila='\033[0;35m'       # Lila
Cyan='\033[0;36m'       # Cyan
Weiss='\033[0;37m'      # Weiss
#
#==========================================================

# Terminal Löschen
clear

# Abfrage worüber Upgrade durchgeführt werden soll
Abfrage_Welcher_Upgrader=$( \
	whiptail \
	--title "Welcher Upgradedienst soll genutzt werden?"\
    --cancel-button "Abbruch"\
	--menu ""\
	11 80 4 \
	"Nala"	"der 'neue'"\
	"APT"	"der 'alte'"\
	 3>&1 1>&2 2>&3)

# Auswertung
case $Abfrage_Welcher_Upgrader in
	Nala)   \
            if command -v nala > /dev/null 2>&1; then
                echo -e "${Gruen}Nala ist bereits installiert${FarbeReset}"
            else
                echo -e "${Rot}Nala ist nicht installiert${FarbeReset}"
                echo -e "Installiere Nala..."
                apt install nala -y
                echo -e "${Gruen}Nala installiert${FarbeReset}"
            fi \
            &&
            clear
            nala upgrade -y
            # Info Ausgabe
            whiptail --msgbox "das System wurde aktualisiert" 8 33
            ;;

	APT)    \
		    apt update
            apt upgrade -y
            # Info Ausgabe
            whiptail --msgbox "das System wurde aktualisiert" 8 33
		    ;;

	*)      \
            echo -e "${Rot}...da ist was schief gelaufen${FarbeReset}"
            ;;
esac

# Launcher Aufrufen
./launcher.sh