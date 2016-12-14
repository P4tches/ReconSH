#! /bin/bash
echo "#####################"
uname -a
echo "#####################"
who --count
echo "#####################"
netstat -nplt
echo "#####################"
echo "IP: $(hostname -I)"
echo "#####################"
tail -n 5 /var/log/auth.log
echo "#####################"
