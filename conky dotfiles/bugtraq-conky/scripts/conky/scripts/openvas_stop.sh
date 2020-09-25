#!/bin/bash
#------------------------------------------------------------------------------------
# - Name: ./openvas_stop.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This stops the OpenVAS service
#------------------------------------------------------------------------------------
#####################################################################################
#OpenVAS
sudo killall openvassd
sleep 4 4 4 4 
sudo /etc/init.d/openvas-scanner stop
sudo /etc/init.d/openvas-manager stop
sudo /etc/init.d/openvas-administrator stop
sudo /etc/init.d/greenbone-security-assistant stop
gsd
