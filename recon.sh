#! /bin/bash
uname -a
echo "CPU: $(top -d 0.1 -b -n2 | grep "Cpu(s)"|tail -n 1 | awk '{print $2 + $4}')% Memory: $(free | grep Mem | awk '{print $3/$2 * 100.0}')%"
echo "IP: $(hostname -I)" #Internet: $(echo "HEAD / HTTP/1.0 \n\n" | nc -z google.com 80 > /dev/null && echo -e "\e[1;32mOK\e[0m" || echo -e "\e[1;31mERROR\e[0m") HTTP: $(echo "HEAD / HTTP/1.0 \n\n" | nc -z 173.194.219.138 80 > /dev/null && echo -e "\e[1;32mOK\e[0m" || echo -e "\e[1;31mERROR\e[0m") DNS: $(nc 8.8.8.8 53 > /dev/null && echo -e "\e[1;32mOK\e[0m" || echo -e "\e[1;31mERROR\e[0m")"
date
#echo "######################"
#who --count
echo "#######################"
w | tail -n +2 -
echo "######## Ports ########"
netstat -nplt | tail -n +2
echo "######## Auth #########"
tail -n 14 /var/log/auth.log #change for different number of auth logs
echo "#### Failed Logins ####"
tail -n 5 /var/log/btmp
echo "######################"
