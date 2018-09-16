#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./bit1.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del bitdefender en el conky
#####################################################
#Bitdefender
ps -ef | grep "bdscan" > /tmp/tmp.txt
if grep "/opt/BitDefender-scanner/bin/bdscan" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 
fi
