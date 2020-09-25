#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./i2p.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of I2P in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#I2P
ps -ef | grep "i2p" > /tmp/tmp.txt
if grep "/etc/i2p/wrapper.config" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]" > /dev/null 2>&1
        else
                print "[DOWN]"
fi
