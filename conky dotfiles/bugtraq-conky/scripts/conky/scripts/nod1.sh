#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./nod1.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Nod 32 in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Eset Nod 32
ps -ef | grep "eset" > /tmp/tmp.txt
if grep -e "/opt/eset/esets/sbin/esets_scan" -e  "/opt/eset/esets/sbin/esets_daemon" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 
fi
