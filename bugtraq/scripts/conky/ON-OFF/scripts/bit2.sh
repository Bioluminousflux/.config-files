#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./bit2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del bitdefender en el conky
#####################################################
#Bitdefender
if [ -f /opt/BitDefender-scanner/bin/bdscan ]
then
ps -ef | grep "bdscan" > /tmp/tmp.txt
if grep "/opt/BitDefender-scanner/bin/bdscan" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]"  > /dev/null 2>&1
	else
		print "[DOWN]" 
fi
else
	print "[NOT INSTALLED]"
fi
