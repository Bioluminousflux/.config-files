#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./set-web.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Set-Web in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Set-Web
ps -ef | grep "set" > /tmp/tmp.txt
if grep "/usr/bin/python ./set" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 
	else
		print "[DOWN]"  > /dev/null 2>&1
fi
