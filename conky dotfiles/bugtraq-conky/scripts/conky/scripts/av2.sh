#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./av2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of the Antivirus in the Conky
#------------------------------------------------------------------------------------
###################################################################################################
#AVG
ps -ef | grep "avg" > /tmp/tmp.txt
if grep "/opt/avg/av/bin/avgscand" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "AVG                                    [UP]" > /dev/null 2>&1
	else
		print "AVG                                          [DOWN]" 
fi
#####################################################
#AVAST
ps -ef | grep "avast" > /tmp/tmp.txt
if grep "/usr/bin/avast " /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "Avast                                   [UP]"  > /dev/null 2>&1
	else
		print "Avast                                        [DOWN]"
fi
#####################################################
#Bitdefender
ps -ef | grep "bdscan" > /tmp/tmp.txt
if grep "/opt/BitDefender-scanner/bin/bdscan" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "Bitdefender                                   [UP]"  > /dev/null 2>&1
	else
		print "Bitdefender                             [DOWN]" 
fi
#####################################################
#ClamAV
ps -ef | grep "clamav" > /tmp/tmp.txt
if grep "/usr/bin/freshclam" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "ClamAV                                         [UP]" > /dev/null 2>&1
	else
		print "ClamAV                                    [DOWN]"  
fi
#####################################################
#Eset Nod 32
ps -ef | grep "esets" > /tmp/tmp.txt
if grep "/opt/eset/esets/sbin/esets_scan" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "Eset Nod 32                                    [UP]"  > /dev/null 2>&1
	else
		print "Eset Nod 32                             [DOWN]" 
fi
