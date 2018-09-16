#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./xplicostart.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del xplico en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Xplico
if /etc/init.d/apache2 status | grep "NOT running" > /dev/null 2>&1
	then
		/etc/init.d/apache2 start
		sleep 4
		/etc/init.d/xplico start
	else
		/etc/init.d/xplico start
fi
	
