#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./privoxy2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de privoxy en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Privoxy
if /etc/init.d/privoxy status | grep "is not running" > /dev/null 2>&1

	then
		print "[DOWN]" > /dev/null 2>&1

	else
		print "[UP]" 
fi