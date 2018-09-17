#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./autopsy.sh 
# - Version: 2.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Autopsy
#------------------------------------------------------------------------------------
###################################################################################################
#Autopsy
ps -ef | grep "autopsy" > /tmp/tmp.txt
if grep "/usr/bin/autopsy" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]"  > /dev/null 2>&1
        else
                print "[DOWN]" 
fi
