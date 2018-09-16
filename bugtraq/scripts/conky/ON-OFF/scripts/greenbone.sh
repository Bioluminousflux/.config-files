#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./greenbone.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del greenbone en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#greenbone
if [ -f /etc/init.d/greenbone-security-assistant ]
then
 /etc/init.d/greenbone-security-assistant status | grep "Greenbone" > /tmp/tmp.txt
 if grep "Greenbone Security Assistant is running" /tmp/tmp.txt > /dev/null 2>&1
	then
		print "[UP]" > /dev/null 2>&1
	else
		print "[DOWN]" 
fi
else
	print "[N. I.]"
fi

