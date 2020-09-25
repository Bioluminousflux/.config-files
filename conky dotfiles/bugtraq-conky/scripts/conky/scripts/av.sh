#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./av.sh 
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
		print "AVG                                          [UP]" 
	else
		print "AVG                                   [DOWN]" > /dev/null 2>&1
fi
#####################################################
#AVAST
ps -ef | grep "avast" > /tmp/tmp.txt
if grep "/usr/bin/avast " /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "Avast                                        [UP]" 
	else
		print "Avast                                  [DOWN]" > /dev/null 2>&1
fi
#####################################################
#Bitdefender
ps -ef | grep "bdscan" > /tmp/tmp.txt
if grep "/opt/BitDefender-scanner/bin/bdscan" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "Bitdefender                            [UP]" 
	else
		print "Bitdefender                                  [DOWN]"  > /dev/null 2>&1
fi
#####################################################
#ClamAV
ps -ef | grep "clamav" > /tmp/tmp.txt
if grep "/usr/bin/freshclam" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "ClamAV                                    [UP]" 
	else
		print "ClamAV                                        [DOWN]"  > /dev/null 2>&1
fi
#####################################################
#Eset Nod 32
ps -ef | grep "esets" > /tmp/tmp.txt
if grep "/opt/eset/esets/sbin/esets_scan" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "Eset Nod 32                            [UP]" 
	else
		print "Eset Nod 32                                        [DOWN]"  > /dev/null 2>&1
fi
