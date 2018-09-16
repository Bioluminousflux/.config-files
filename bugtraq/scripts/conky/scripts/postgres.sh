#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./postgres.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de postgres en el conky
#------------------------------------------------------------------------------------
#Potsgres
if /etc/init.d/postgresql status | grep "main" > /dev/null 2>&1

	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
fi
