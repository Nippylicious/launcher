#!/bin/bash

# Mareks Launcher
# 26.05.2024
# Launcher
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

# Funktion für Dateicheck
function check_file {
    [ -f "$1" ]
    return $?
}

# Abfrage
if check_file ~/.einstellung_paketdienst; then
    # Wenn vorhanden, weiter zum Launcher
    bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/launcher/launcher_menu.sh)"
else
    # Wenn nicht vorhanden, dann erstmal zu den Einstellungen
    bash -c "$(wget -qLO - https://github.com/Nippylicious/launcher/raw/main/einstellungen/paketdienst.sh)"
fi