#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./wifizoo2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Wifizoo in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Wifizoo
ps -ef | grep "wifizoo" > /tmp/tmp.txt
if grep "python wifizoo.py -i" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" > /dev/null 2>&1
	else
		print "[DOWN]"  
fi
