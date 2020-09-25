#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./avast2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of avast in the conky
#####################################################
#AVAST
if [ -f /usr/bin/avast ]
then
 ps -ef | grep "avast" > /tmp/tmp.txt
 if grep -e "/usr/bin/avast" -e "/usr/bin/avast-update" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]"  > /dev/null 2>&1
	else
		print "[DOWN]"
	fi
else
	print "[NOT INSTALLED]"
fi




