#!/usr/bin/bash
# Program:
#   这个程序只有输入yes才结束
# History:
# 2020/01/29   bear     
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin
export PATH
until [ "${yn}" == "yes" -o "${yn}" == "YES" ]
do
    read -p "请输入你的选择:" yn
done
echo "OK,现在结束了."
