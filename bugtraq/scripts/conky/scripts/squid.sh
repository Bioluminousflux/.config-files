#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./squid.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de privoxy en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#squid
if ps -ef | grep "squid3" | grep "/usr/sbin" > /dev/null 2>&1

	then
		print '${color green}[UP]'

	else
		print '${color red}[DOWN]'
fi
