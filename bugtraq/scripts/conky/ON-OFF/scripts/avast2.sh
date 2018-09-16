#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./avast2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de avast en el conky
#####################################################
#AVAST
if [ -f /usr/bin/avast ]
then
 ps -ef | grep "avast" > /tmp/tmp.txt
 if grep -e "/usr/bin/avast" -e "/usr/bin/avast-update" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]"  > /dev/null 2>&1
	else
		print "[DOWN]"
	fi
else
	print "[NOT INSTALLED]"
fi




