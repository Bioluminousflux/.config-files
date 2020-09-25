#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./snort.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Snort in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Snort
ps -ef | grep "snort" > /tmp/tmp.txt
if grep "/usr/local/snort" /tmp/tmp.txt > /dev/null 2>&1;

	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
fi
