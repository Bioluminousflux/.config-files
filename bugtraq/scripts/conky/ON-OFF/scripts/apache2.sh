#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./Nessus.sh 
# - Version: 2.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq Team
# - descripción: Este script comprueba el estado del apache mostrado en el conky
#------------------------------------------------------------------------------------

###################################################################################################
#Apache2
if /etc/init.d/apache2 status | grep "NOT running" > /dev/null 2>&1
	then
		print ""  > /dev/null 2>&1
	else
		print "[UP]" 
fi
