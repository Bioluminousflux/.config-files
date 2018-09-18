#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./xplico2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Xplico in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Xplico
if ps -ef | grep xplico | grep root > /dev/null 2>&1
        then
                print "[UP]"
        else 
                print "[DOWN]"  > /dev/null 2>&1
fi
