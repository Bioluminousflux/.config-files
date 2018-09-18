#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./openv.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of OpenVAS in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#OpenVAS
if [ -f /usr/sbin/openvasad ]
 then
   ps -ef | grep "openvas" > /tmp/tmp.txt
     if grep "/usr/sbin/openvasad" /tmp/tmp.txt > /dev/null 2>&1;
        then
                print "[UP]" > /dev/null 2>&1
        else
                print "[DOWN]" 
fi
else
    print "[N.I.]"
fi


