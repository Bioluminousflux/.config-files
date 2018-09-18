#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./webgoat.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Webgoat in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Webgoat
ps -ef | grep "webgoat" > /tmp/tmp.txt
if grep "/bin/sh ./webgoat.sh start8080" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" > /dev/null 2>&1

	else
		print "[DOWN]"
fi
