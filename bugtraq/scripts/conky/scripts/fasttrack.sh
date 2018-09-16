#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./fasttrack.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del fasttrack en el conky
#------------------------------------------------------------------------------------
#####################################################
#fast-track
ps -ef | grep "fast-track" > /tmp/tmp.txt
if grep "python fast-track.py" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 
	else
		print "[DOWN]"  > /dev/null 2>&1
fi
