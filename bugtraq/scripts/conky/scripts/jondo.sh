#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./jondo.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de tor en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Jondo
ps -ef | grep "JAP" > /tmp/tmp.txt
if grep "/usr/share/java/JAP" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
fi
