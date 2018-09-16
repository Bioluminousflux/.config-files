#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./mysql.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de mysql en el conky
#------------------------------------------------------------------------------------
#mysql
if ps -ef | grep mysql | grep 3306 > /dev/null 2>&1

	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
fi
