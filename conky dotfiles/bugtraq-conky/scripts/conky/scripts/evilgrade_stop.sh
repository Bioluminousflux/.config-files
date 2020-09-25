#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./evilgrade_stop.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script stops/kills the Evilgrade service
#------------------------------------------------------------------------------------
#####################################################################################
#Evilgrade
PROC=`ps -ef | grep evilgrade | grep perl | awk '{print $2}' | head -n1`
sudo kill -9 $PROC
