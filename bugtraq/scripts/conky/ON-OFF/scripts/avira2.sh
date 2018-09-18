#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./avira1.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Avira in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Avira
if [ -f /usr/lib/AntiVir/guard/avscan ]
then
ps -ef | grep "guard" > /tmp/tmp.txt
if grep -e "/guard/scancl" -e "/guard/avupdate-guard" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]"  > /dev/null 2>&1
	else
		print "[DOWN]"
fi
else
	print "[NOT INSTALLED]"
fi
