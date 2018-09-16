#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./tor.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de tor en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#TOR
ps -ef | grep "tor" > /tmp/tmp.txt
if grep "/usr/sbin/tor" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" > /dev/null 2>&1

	else
		print "[DOWN]"
fi
