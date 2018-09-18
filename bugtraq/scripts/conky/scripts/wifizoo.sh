#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./wifizoo.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Wifizoo in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Wifizoo
ps -ef | grep "wifizoo" > /tmp/tmp.txt
if grep "python wifizoo.py -i" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
fi
