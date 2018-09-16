#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./clam2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del clamav en el conky
#------------------------------------------------------------------------------------
#####################################################
#ClamAV
if [ -f /usr/bin/clamscan ]
then
ps -ef | grep "clam" > /tmp/tmp.txt
if grep -e "/usr/bin/clamscan" -e "/usr/bin/freshclam" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]"  > /dev/null 2>&1
	else
		print "[DOWN]" 
fi
else
	print "[NOT INSTALLED]"
fi
