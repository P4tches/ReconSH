#! /bin/bash
uname -a
echo "CPU: $(top -d 0.1 -b -n2 | grep "Cpu(s)"|tail -n 1 | awk '{print $2 + $4}')% Memory: $(free | grep Mem | awk '{print $3/$2 * 100.0}')%"
echo "IP: $(hostname -I) DNS: $(nc 8.8.8.8 53 > /dev/null && echo ok || echo error) Internet: $(echo "GET \n\n" | nc -z google.com 80 > /dev/null && echo ok || echo error)"
date
#echo "######################"
#who --count
echo "#######################"
w | tail -n +2 -
echo "######## Ports ########"
netstat -nplt | tail -n +2
echo "######## Auth #########"
tail -n 12 /var/log/auth.log
echo "#### Failed Logins ####"
tail -n 5 /var/log/btmp
echo "######################"
