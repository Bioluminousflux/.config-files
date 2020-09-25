#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./beef2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Beef in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Beef
ps -ef | grep "beef" > /tmp/tmp.txt
if grep "ruby beef" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print " [UP]" 
        else
                print "[DOWN]" > /dev/null 2>&1
fi
