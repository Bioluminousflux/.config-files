#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./avg1.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of AVG in the Conky
#------------------------------------------------------------------------------------
###################################################################################################
#AVG
ps -ef | grep "avg" > /tmp/tmp.txt
if grep "/opt/avg/av/bin/avgscand" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 
fi
