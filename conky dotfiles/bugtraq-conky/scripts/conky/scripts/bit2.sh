#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./bit2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Bitdefender in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Bitdefender
if [ -f /opt/BitDefender-scanner/bin/bdscan ]
then
ps -ef | grep "bdscan" > /tmp/tmp.txt
if grep "/opt/BitDefender-scanner/bin/bdscan" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]"  > /dev/null 2>&1
	else
		print "[DOWN]" 
fi
else
	print "[NOT INSTALLED]"
fi
