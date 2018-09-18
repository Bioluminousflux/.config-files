#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./avg2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of AVG in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#AVG
if [ -f /opt/avg/av/bin/avgscand ]
then
 ps -ef | grep "avg" > /tmp/tmp.txt
 if grep "/opt/avg/av/bin/avgscand" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" > /dev/null 2>&1
	else
		print "[DOWN]" 
fi
else
 	print "[NOT INSTALLED]"
fi
