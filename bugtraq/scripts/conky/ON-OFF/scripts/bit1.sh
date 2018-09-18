#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./bit1.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Bitdefender in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Bitdefender
ps -ef | grep "bdscan" > /tmp/tmp.txt
if grep "/opt/BitDefender-scanner/bin/bdscan" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 
fi
