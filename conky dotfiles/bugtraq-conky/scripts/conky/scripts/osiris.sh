#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./osiris.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Osiris in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Osiris
ps -ef | grep "osiris" > /tmp/tmp.txt
if grep "/usr/bin/osiris-sps" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
fi
