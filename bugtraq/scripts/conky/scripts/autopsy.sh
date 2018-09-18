#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./autopsy.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Autopsy
#------------------------------------------------------------------------------------
###################################################################################################
#Autopsy
ps -ef | grep "autopsy" > /tmp/tmp.txt
if grep "/bugtraq/tools/forensics/autopsy/./autopsy" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print '${color green}[UP]'
        else
                print '${color red}[DOWN]' 
fi
