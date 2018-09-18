#!/usr/bin
#------------------------------------------------------------------------------------
# - Name: ./iptables.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script displays your iptables configuration in the conky
#------------------------------------------------------------------------------------
#####################################################################################
iptables --list > iptables.txt
awk '/Chain INPUT/, /Chain FORWARD/' iptables.txt | awk {' if (NF != 0) print $0 '}  | sed 's/Chain FORWARD (policy ACCEPT)//g' | sed 's/Chain INPUT (policy ACCEPT)/${color yellow}+ Chain INPUT (policy ACCEPT)${color3}/g' | sed 's/Chain FORWARD (policy ACCEPT)/${color yellow}+ Chain FORWARD (policy ACCEPT)${color3}/g' | sed 's/Chain OUTPUT (policy ACCEPT)/${color yellow}+ Chain OUTPUT (policy ACCEPT)${color3}/g' | sed 's/ACCEPT /${color green}ACCEPT${color3}/g' | sed 's/REJECT/${color red}REJECT${color3}/g'
cat iptables.txt | awk '/OUTPUT/,0' |  uniq | sed 's/Chain INPUT (policy ACCEPT)/${color yellow}+ Chain INPUT (policy ACCEPT)${color3}/g' | sed 's/Chain FORWARD (policy ACCEPT)/${color yellow}+ Chain FORWARD (policy ACCEPT)${color3}/g' | sed 's/Chain OUTPUT (policy ACCEPT)/${color yellow}+ Chain OUTPUT (policy ACCEPT)${color3}/g' | sed 's/ACCEPT /${color green}ACCEPT${color3}/g' | sed 's/REJECT/${color red}REJECT${color3}/g'



