#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# Paketmanager
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
Abfrage_Welcher_Paketmanager=$( \
	whiptail \
	--title "Welcher Paketmanager soll genutzt werden?"\
    --cancel-button "Abbruch"\
	--menu ""\
	11 80 4 \
	"Nala"	"der 'neue'"\
	"APT"	"der 'alte'"\
	 3>&1 1>&2 2>&3)

# Auswertung
case $Abfrage_Welcher_Paketmanager in
	Nala)   \
            if command -v nala > /dev/null 2>&1; then
                echo -e "${Gruen}Nala ist bereits installiert${FarbeReset}"
            else
                echo -e "${Rot}Nala ist nicht installiert${FarbeReset}"
                echo -e "Installiere Nala..."
                apt update
                apt install nala -y
                echo -e "${Gruen}Nala installiert${FarbeReset}"
            fi \
            &&
            clear
            Abfrage_Welcher_Paketmanager=nala
            ;;
	APT)    \
            Abfrage_Welcher_Paketmanager=apt
		    ;;
	*)      \
            echo -e "${Rot}...da ist was schief gelaufen${FarbeReset}"
            ;;
esac

# Schreibe Inhalt aus Variable in Datei
echo "$Abfrage_Welcher_Paketmanager" > ~/.einstellung_paketdienst

# Füge neue Zeile mit Datum in Datei ein 
#date >> ~/.einstellung_paketdienst

# Info Ausgabe
whiptail --msgbox "Einstellung $Abfrage_Welcher_Paketmanager gespeichert" 8 33

# Launcher Aufrufen
./launcher.sh