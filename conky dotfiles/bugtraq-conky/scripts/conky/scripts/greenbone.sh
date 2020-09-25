#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./greenbone.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Greenbone in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Greenbone
if [ -f /etc/init.d/greenbone-security-assistant ]
then
 /etc/init.d/greenbone-security-assistant status | grep "Greenbone" > /tmp/tmp.txt
 if grep "Greenbone Security Assistant is running" /tmp/tmp.txt > /dev/null 2>&1
	then
		print '${color green}[UP]'
	else
		print '${color red}[DOWN]' 
fi
else
	print '${color red}[N. I.]'
fi

