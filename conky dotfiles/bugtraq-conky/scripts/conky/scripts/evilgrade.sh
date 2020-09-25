#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./evilgrade.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Evilgrade in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Evilgrade
ps -ef | grep "evilgrade" > /tmp/tmp.txt
if grep "/usr/bin/perl ./evilgrade" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
fi

