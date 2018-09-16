#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./clam1.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del clamav en el conky
#------------------------------------------------------------------------------------
#####################################################
#ClamAV
ps -ef | grep "clam" > /tmp/tmp.txt
if grep -e "/usr/bin/clamscan" -e "/usr/bin/freshclam" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 
fi
