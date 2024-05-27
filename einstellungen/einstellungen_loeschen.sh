#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# Einstellungen Löschen
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

# Fortschrittsbalken
{
    for ((i = 0 ; i <= 100 ; i+=5)); do
        #sleep 0.1
        echo $i
    done
} | whiptail --gauge "Einstellungen werden zurueckgesetzt..." 6 50 0

# Einstellungen Löschen
rm ~/.einstellung_paketdienst

# Info Ausgabe
whiptail --msgbox "Einstellung zurückgesetzt" 8 33

# Launcher Aufrufen
./launcher.sh