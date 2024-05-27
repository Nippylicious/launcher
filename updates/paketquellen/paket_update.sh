#!/bin/bash

# Mareks Updateskript
# 26.05.2024
# Update
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

# Einstelungsdatei auslesen und in Variable schreiben
Abfrage_Welcher_Paketmanager=$(cat ~/.einstellung_paketdienst)

# Upgrade durchführen 
$Abfrage_Welcher_Paketmanager update

# Info Ausgabe
whiptail --msgbox "das System wurde aktualisiert" 8 33

# Launcher Aufrufen
./launcher.sh