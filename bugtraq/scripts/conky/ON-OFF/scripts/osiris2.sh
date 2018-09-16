#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./osiris2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de osiris en el conky
#------------------------------------------------------------------------------------
#####################################################
#osiris
ps -ef | grep "osiris" > /tmp/tmp.txt
if grep "/usr/bin/osiris-sps" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]"   > /dev/null 2>&1
	else
		print "[DOWN]"
fi
