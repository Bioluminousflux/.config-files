#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./privoxy.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de privoxy en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Polipo
ps -ef | grep polipo > /tmp/polipo.txt
if cat /tmp/polipo.txt | grep "proxy" > /dev/null 2>&1

	then
		print '${color green}[UP]'

	else
		print '${color red}[DOWN]'
fi
