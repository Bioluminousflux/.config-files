#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./apache.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del apache en el conky
#------------------------------------------------------------------------------------
#Apache2
if /etc/init.d/apache2 status | grep "NOT running" > /dev/null 2>&1
	then
		print '${color red}[DOWN]' 
	else
		print '${color green}[UP]' 
fi
