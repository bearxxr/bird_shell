#!/usr/bin/bash
# Program:
#       这个程序ping网络
# History:
# 2020/02/01   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
network="192.168.1"
for sitenu in $(seq 1 100)
do
	ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1
if [ "${result}" == 0 ]; then
	echo "Server ${network}.${sitenu} is UP."
else
	echo "Server ${network}.${sitenu} is DOWN."
fi
done
