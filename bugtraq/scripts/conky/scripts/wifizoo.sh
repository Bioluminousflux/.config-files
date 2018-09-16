#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./wifizoo.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del wifizoo en el conky
#------------------------------------------------------------------------------------
#####################################################
#wifizoo
ps -ef | grep "wifizoo" > /tmp/tmp.txt
if grep "python wifizoo.py -i" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
fi
