#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./snort2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Snort in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Snort
ps -ef | grep "snort" > /tmp/tmp.txt
if grep "/usr/local/snort" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]" 
        else
                print "[DOWN]" > /dev/null 2>&1
fi
