#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./avira2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado el avast en el conky
#####################################################
#AVAST
if [ -f /usr/lib/AntiVir/guard/avscan ]
then
ps -ef | grep "guard" > /tmp/tmp.txt
if grep -e "/guard/scancl" -e "/guard/avupdate-guard" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]"  > /dev/null 2>&1
	else
		print "[DOWN]"
fi
else
	print "[NOT INSTALLED]"
fi
