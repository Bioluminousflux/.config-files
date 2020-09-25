#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./tor.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of TOR in the conky
#------------------------------------------------------------------------------------
###################################################################################################
#TOR
ps -ef | grep "tor" > /tmp/tmp.txt
if grep "/usr/sbin/tor" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" > /dev/null 2>&1

	else
		print "[DOWN]"
fi
