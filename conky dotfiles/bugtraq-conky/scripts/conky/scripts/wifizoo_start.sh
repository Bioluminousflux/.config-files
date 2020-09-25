#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./wifizoo_start.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This starts the Wifizoo Service
#------------------------------------------------------------------------------------
#####################################################################################
#Wifizoo
cd /bugtraq/tools/communication/802.11/wireless/wifizoo
gnome-terminal -e "python wifizoo.py -i wlan0"
