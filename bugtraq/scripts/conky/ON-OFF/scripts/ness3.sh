#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./ness2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del nessus en el conky
#------------------------------------------------------------------------------------
##################################################################################################
#Nessus
if [[ -f /usr/bin/nessus ]];
then
	print "[INSTALLED]" > /dev/null 2>&1
else
	print "[NO INSTALLED]"
fi
