#!/usr/bin/ksh
cat /proc/cpuinfo | grep "processor" > cpu.txt
if cat cpu.txt | grep 4 > /dev/null 2>&1
	then
		conky -c /bugtraq/scripts/conky/.conkyrc
	#	conky -c /bugtraq/scripts/conky/conexiones.conf
	#	conky -c /bugtraq/scripts/conky/proxys.conf
	#	sudo conky -c /bugtraq/scripts/conky/iptables.conf
	else
		conky -c /bugtraq/scripts/conky/.conkyrc2
fi


