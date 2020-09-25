#!/bin/bash
lsof -n -i | awk -F '[ :]+|->' '$NF == "(ESTABLISHED)" && $11 != "127.0.0.1" {printf "${color}%-10s ${color green}%-3s  %5d  ${color orange}%-16s : %s\n", $1, $8, $10, $11, $12}' >> /bugtraq/scripts/conky/netstat/netstat.txt
