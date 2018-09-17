#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./evilgrade.sh
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Evilgrade in conky
#------------------------------------------------------------------------------------
###################################################################################################
#Evilgrade
ps -ef | grep "evilgrade" > /tmp/tmp.txt
if grep "/usr/bin/perl ./evilgrade" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 
	else
		print "[DOWN]"  > /dev/null 2>&1
fi
