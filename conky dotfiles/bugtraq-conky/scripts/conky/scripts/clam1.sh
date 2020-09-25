#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./clam1.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of ClamAV in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#ClamAV
ps -ef | grep "clam" > /tmp/tmp.txt
if grep -e "/usr/bin/clamscan" -e "/usr/bin/freshclam" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 
fi
