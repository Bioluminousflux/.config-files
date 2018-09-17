#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./webgoat2.sh 
# - Version: 1.0
# - Date: 26/11/2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Webgoat in conky
#------------------------------------------------------------------------------------
###################################################################################################
#Webgoat
ps -ef | grep "webgoat" > /tmp/tmp.txt
if grep "/bin/sh ./webgoat.sh start8080" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 

	else
		print "[DOWN]" > /dev/null 2>&1
fi
