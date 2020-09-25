#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./conky_stop.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script kills/stops the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Conky
PROC=`ps -ef | grep conky | head -n1 | awk '{print $2}'`
kill -9 $PROC
pkill conky
