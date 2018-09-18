#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./greenbone2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Greenbone in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Greenbone
/etc/init.d/greenbone-security-assistant status | grep "Greenbone" > /tmp/tmp.txt
if grep "Greenbone Security Assistant is running" /tmp/tmp.txt > /dev/null 2>&1
	then
		print "[UP]"  
	else
		print "[DOWN]" > /dev/null 2>&1
fi
