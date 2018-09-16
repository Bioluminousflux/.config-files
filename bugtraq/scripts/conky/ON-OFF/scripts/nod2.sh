#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./nod2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del nod32 en el conky
#------------------------------------------------------------------------------------
#####################################################
#Eset Nod 32
if [ -f /opt/eset/esets/sbin/esets_scan ]
then
ps -ef | grep "esets" > /tmp/tmp.txt
if grep -e "/opt/eset/esets/sbin/esets_scan" -e  "/opt/eset/esets/sbin/esets_daemon" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]"  > /dev/null 2>&1
	else
		print "[DOWN]" 
fi
else
	print "[NOT INSTALLED]"
fi
