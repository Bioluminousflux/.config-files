#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./beef.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script stops/kills the Beef service
#------------------------------------------------------------------------------------
#####################################################################################
#Beef
PROC=`ps -ef | grep beef | grep ruby | awk '{print $2}'`
sudo kill -9 $PROC
sudo pkill beef
