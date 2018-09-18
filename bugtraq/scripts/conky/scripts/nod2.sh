#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./nod2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Nod 32 in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Eset Nod 32
if [ -f /opt/eset/esets/sbin/esets_scan ]
then
ps -ef | grep "esets" > /tmp/tmp.txt
if grep -e "/opt/eset/esets/sbin/esets_scan" -e  "/opt/eset/esets/sbin/esets_daemon" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]"  > /dev/null 2>&1
	else
		print "[DOWN]" 
fi
else
	print "[NOT INSTALLED]"
fi
