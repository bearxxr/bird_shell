#!/usr/bin/bash
# Program:
#       这个程序输出1-100的和
# History:
# 2020/01/29   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
num1=0
num2=0
while [ "${num2}" != 100 ]
do
   num2=$((${num2}+1))
   num1=$((${num1}+${num2}))
done
echo "1-100的和是:""${num1}"
