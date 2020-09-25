#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./wifizoo.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This stops the Wifizoo Service
#------------------------------------------------------------------------------------
#####################################################################################
#Wifizoo
PROC=`ps -ef | grep "wifizoo.py -i" | grep -v "grep" | grep "gnome" | awk '{print $2}'`
kill -9 $PROC
