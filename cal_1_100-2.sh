#!/usr/bin/bash
# Program:
#       这个程序输出累加值
# History:
# 2020/02/01   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
read -p "请输入你要累加的数:" num
s=0
for (( i=1;i<=${num};i=i+1 ))
do
    s=$(( ${s}+${i} ))
done
echo "总和:${s}"
