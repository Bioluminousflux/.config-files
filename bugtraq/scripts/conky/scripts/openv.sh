!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./openv.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of OpenVAS in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#OpenVAS
if [ -f /usr/sbin/openvasad ]
 then
   ps -ef | grep "openvas" > /tmp/tmp.txt
     if grep "/usr/sbin/openvasad" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
	fi
     
else
    print '${color red}[N.I.]'
fi


