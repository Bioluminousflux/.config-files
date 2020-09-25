#!/bin/bash
#------------------------------------------------------------------------------------
# - Name: ./openvas_Start.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script starts the OpenVAS Service
#------------------------------------------------------------------------------------
#####################################################################################
#OpenVAS
sudo killall openvassd
sleep 5
sudo /etc/init.d/openvas-scanner start
sudo /etc/init.d/openvas-manager start
sudo /etc/init.d/openvas-administrator restart
sudo /etc/init.d/greenbone-security-assistant restart
test -e /var/lib/openvas/users/admin || sudo openvasad -c add_user -n admin -r Admin
gsd
