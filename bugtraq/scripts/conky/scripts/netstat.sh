#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./netstat.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of the Network through Netstat
#------------------------------------------------------------------------------------
#####################################################################################
#Netstat
lsof -n -i | awk -F '[ :]+|->' '$NF == "(ESTABLISHED)" && $10 != "4001" {printf "${color red}App: ${color}%-10s ${color red}Port: ${color green}%-3s  %5d  ${color red}Dest: ${color orange}%-16s : %s\n", $1, $8, $10, $11, $12}' | sed 's/127.0.0.1        : 8118/${color yellow} Privoxy/g' | sed 's/127.0.0.1        : 7657/${color yellow} I2P/g' | sed 's/127.0.0.1        : 6668/${color yellow} I2P IRC/g' | sed 's/127.0.0.1        : 4444/${color yellow} I2P HTTP/g' | sed 's/127.0.0.1        : 4445/${color yellow} I2P HTTPS/g' | sed 's/127.0.0.1        : 9050/${color yellow} TOR/g' | sed 's/127.0.0.1        : 8998/${color yellow} I2P Monotone/g' | sed 's/127.0.0.1        : 7659/${color yellow} I2P SMTP/g' | sed 's/127.0.0.1        : 7660/${color yellow} I2P POP3/g'| sed 's/127.0.0.1        : 4001/${color yellow} JONDO/g' | sed 's/91.184.37.67/${color yellow} JONDO Server/g' | sed 's/127.0.0.1        : 9118/${color yellow} Polipo/g' 

