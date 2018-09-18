#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./set_stop.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This stops the Set-Web service
#------------------------------------------------------------------------------------
#####################################################################################
#Set-Web
PROC=`ps -ef | grep "/pentesting/set" | grep -v "grep" | awk '{print $2}'`
kill -9 $PROC
PORC2=`ps -ef | grep set_start | grep sudo | grep -v "grep" | awk '{print $2}'`
kill -9 $PROC2
PROC3=`ps -ef | grep set_start | grep sh | grep -v "grep" | awk '{print $2}'`
kill -9 $PROC3
